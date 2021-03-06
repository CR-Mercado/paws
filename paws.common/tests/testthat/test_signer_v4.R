context("Signer - V4")

# Returns a credentials object with a test credential provider.
test_creds <- Credentials(
  provider = list(
    function() {
      list(
        access_key_id = "AKID",
        secret_access_key = "SECRET",
        session_token = "SESSION",
        provider_name = "StaticProvider"
      )
    }
  )
)

test_that("sign with custom URI escape", {
  expected <- "AWS4-HMAC-SHA256 Credential=AKID/19700101/us-east-1/es/aws4_request, SignedHeaders=host;x-amz-date;x-amz-security-token, Signature=6601e883cc6d23871fd6c2a394c5677ea2b8c82b04a6446786d64cd74f520967"

  creds <- test_creds
  signer <- Signer(
    credentials = creds,
    disable_uri_path_escaping = TRUE
  )

  host <- "https://subdomain.us-east-1.es.amazonaws.com"
  req <- new_http_request("GET", host, NULL)

  req$url$path <- "/log-*/_search"
  req$url$opaque <- "//subdomain.us-east-1.es.amazonaws.com/log-%2A/_search"

  req <- sign_with_body(signer, req, NULL, "es", "us-east-1", 0, FALSE, unix_time(0, 0))
  actual <- req$header[["Authorization"]]

  expect_equal(actual, expected)
})

test_that("standalone sign with port", {
  cases <- list(
    list(
      description = "default HTTPS port",
      url = "https://estest.us-east-1.es.amazonaws.com:443/_search",
      expected = "AWS4-HMAC-SHA256 Credential=AKID/19700101/us-east-1/es/aws4_request, SignedHeaders=host;x-amz-date;x-amz-security-token, Signature=e573fc9aa3a156b720976419319be98fb2824a3abc2ddd895ecb1d1611c6a82d"
    ),
    list(
      description = "default HTTP port",
      url = "http://example.com:80/_search",
      expected = "AWS4-HMAC-SHA256 Credential=AKID/19700101/us-east-1/es/aws4_request, SignedHeaders=host;x-amz-date;x-amz-security-token, Signature=54ebe60c4ae03a40948b849e13c333523235f38002e2807059c64a9a8c7cb951"
    ),
    list(
      description = "non-standard HTTP port",
      url = "http://example.com:9200/_search",
      expected = "AWS4-HMAC-SHA256 Credential=AKID/19700101/us-east-1/es/aws4_request, SignedHeaders=host;x-amz-date;x-amz-security-token, Signature=cd9d926a460f8d3b58b57beadbd87666dc667e014c0afaa4cea37b2867f51b4f"
    ),
    list(
      description = "non-standard HTTPS port",
      url = "https://example.com:9200/_search",
      expected = "AWS4-HMAC-SHA256 Credential=AKID/19700101/us-east-1/es/aws4_request, SignedHeaders=host;x-amz-date;x-amz-security-token, Signature=cd9d926a460f8d3b58b57beadbd87666dc667e014c0afaa4cea37b2867f51b4f"
    )
  )
  for (case in cases) {
    signer <- Signer(test_creds)
    req <- new_http_request("GET", case$url, NULL)
    req <- sign_with_body(signer, req, NULL, "es", "us-east-1", 0, FALSE, unix_time(0, 0))
    actual <- req$header[["Authorization"]]
    expect_equal(actual, case$expected)
  }
})

# TODO: Finish presign code.
test_that("standalone presign with port", {
  skip("skip")
  cases <- list(
    list(
      description = "default HTTPS port",
      url = "https://estest.us-east-1.es.amazonaws.com:443/_search",
      expected = "0abcf61a351063441296febf4b485734d780634fba8cf1e7d9769315c35255d6"
    ),
    list(
      description = "default HTTP port",
      url = "http://example.com:80/_search",
      expected = "fce9976dd6c849c21adfa6d3f3e9eefc651d0e4a2ccd740d43efddcccfdc8179"
    ),
    list(
      description = "non-standard HTTP port",
      url = "http://example.com:9200/_search",
      expected = "f33c25a81c735e42bef35ed5e9f720c43940562e3e616ff0777bf6dde75249b0"
    ),
    list(
      description = "non-standard HTTPS port",
      url = "https://example.com:9200/_search",
      expected = "f33c25a81c735e42bef35ed5e9f720c43940562e3e616ff0777bf6dde75249b0"
    )
  )
  for (case in cases) {
    signer <- Signer(test_creds)
    req <- new_http_request("GET", case$url, NULL)
    req <- sign_with_body(signer, req, NULL, "es", "us-east-1", 5 * 60, TRUE, unix_time(0, 0))
    actual <- req$query["X-Amz-Signature"]
    expect_equal(actual, case$expected)
  }
})
