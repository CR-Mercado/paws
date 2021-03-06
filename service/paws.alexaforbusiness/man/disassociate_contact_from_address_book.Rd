% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.alexaforbusiness_operations.R
\name{disassociate_contact_from_address_book}
\alias{disassociate_contact_from_address_book}
\title{Disassociates a contact from a given address book}
\usage{
disassociate_contact_from_address_book(ContactArn, AddressBookArn)
}
\arguments{
\item{ContactArn}{[required] The ARN of the contact to disassociate from an address book.}

\item{AddressBookArn}{[required] The ARN of the address from which to disassociate the contact.}
}
\description{
Disassociates a contact from a given address book.
}
\section{Accepted Parameters}{
\preformatted{disassociate_contact_from_address_book(
  ContactArn = "string",
  AddressBookArn = "string"
)
}
}

