% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.alexaforbusiness_operations.R
\name{update_business_report_schedule}
\alias{update_business_report_schedule}
\title{Updates the configuration of the report delivery schedule with the specified schedule ARN}
\usage{
update_business_report_schedule(ScheduleArn, S3BucketName = NULL,
  S3KeyPrefix = NULL, Format = NULL, ScheduleName = NULL,
  Recurrence = NULL)
}
\arguments{
\item{ScheduleArn}{[required] The ARN of the business report schedule.}

\item{S3BucketName}{The S3 location of the output reports.}

\item{S3KeyPrefix}{The S3 key where the report is delivered.}

\item{Format}{The format of the generated report (individual CSV files or zipped files of individual files).}

\item{ScheduleName}{The name identifier of the schedule.}

\item{Recurrence}{The recurrence of the reports.}
}
\description{
Updates the configuration of the report delivery schedule with the specified schedule ARN.
}
\section{Accepted Parameters}{
\preformatted{update_business_report_schedule(
  ScheduleArn = "string",
  S3BucketName = "string",
  S3KeyPrefix = "string",
  Format = "CSV"|"CSV_ZIP",
  ScheduleName = "string",
  Recurrence = list(
    StartDate = "string"
  )
)
}
}

