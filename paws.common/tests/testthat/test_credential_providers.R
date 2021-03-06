context("Credential providers")

test_that("r_env_provider", {
  Sys.setenv(
    "AWS_ACCESS_KEY_ID" = "foo",
    "AWS_SECRET_ACCESS_KEY" = "bar"
  )
  creds <- r_env_provider()
  expect_equal(creds$access_key_id, "foo")
  expect_equal(creds$secret_access_key, "bar")

  Sys.setenv(
    "AWS_ACCESS_KEY_ID" = "",
    "AWS_SECRET_ACCESS_KEY" = ""
  )
  creds <- r_env_provider()
  expect_null(creds)
})
