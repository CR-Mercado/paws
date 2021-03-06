% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.codestar_operations.R
\name{update_team_member}
\alias{update_team_member}
\title{Updates a team member's attributes in an AWS CodeStar project}
\usage{
update_team_member(projectId, userArn, projectRole = NULL,
  remoteAccessAllowed = NULL)
}
\arguments{
\item{projectId}{[required] The ID of the project.}

\item{userArn}{[required] The Amazon Resource Name (ARN) of the user for whom you want to change team membership attributes.}

\item{projectRole}{The role assigned to the user in the project. Project roles have different levels of access. For more information, see \href{http://docs.aws.amazon.com/codestar/latest/userguide/working-with-teams.html}{Working with Teams} in the \emph{AWS CodeStar User Guide}.}

\item{remoteAccessAllowed}{Whether a team member is allowed to remotely access project resources using the SSH public key associated with the user's profile. Even if this is set to True, the user must associate a public key with their profile before the user can access resources.}
}
\description{
Updates a team member's attributes in an AWS CodeStar project. For example, you can change a team member's role in the project, or change whether they have remote access to project resources.
}
\section{Accepted Parameters}{
\preformatted{update_team_member(
  projectId = "string",
  userArn = "string",
  projectRole = "string",
  remoteAccessAllowed = TRUE|FALSE
)
}
}

