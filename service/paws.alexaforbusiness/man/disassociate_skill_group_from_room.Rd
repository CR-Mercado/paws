% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.alexaforbusiness_operations.R
\name{disassociate_skill_group_from_room}
\alias{disassociate_skill_group_from_room}
\title{Disassociates a skill group from a specified room}
\usage{
disassociate_skill_group_from_room(SkillGroupArn = NULL,
  RoomArn = NULL)
}
\arguments{
\item{SkillGroupArn}{The ARN of the skill group to disassociate from a room. Required.}

\item{RoomArn}{The ARN of the room from which the skill group is to be disassociated. Required.}
}
\description{
Disassociates a skill group from a specified room. This disables all skills in the skill group on all devices in the room.
}
\section{Accepted Parameters}{
\preformatted{disassociate_skill_group_from_room(
  SkillGroupArn = "string",
  RoomArn = "string"
)
}
}

