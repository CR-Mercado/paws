% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.kinesisvideoarchivedmedia_operations.R
\name{get_hls_streaming_session_url}
\alias{get_hls_streaming_session_url}
\title{Retrieves an HTTP Live Streaming (HLS) URL for the stream}
\usage{
get_hls_streaming_session_url(StreamName = NULL, StreamARN = NULL,
  PlaybackMode = NULL, HLSFragmentSelector = NULL,
  DiscontinuityMode = NULL, Expires = NULL,
  MaxMediaPlaylistFragmentResults = NULL)
}
\arguments{
\item{StreamName}{The name of the stream for which to retrieve the HLS master playlist URL.

You must specify either the \code{StreamName} or the \code{StreamARN}.}

\item{StreamARN}{The Amazon Resource Name (ARN) of the stream for which to retrieve the HLS master playlist URL.

You must specify either the \code{StreamName} or the \code{StreamARN}.}

\item{PlaybackMode}{Whether to retrieve live or archived, on-demand data.

Features of the two types of session include the following:
\itemize{
\item \strong{\code{LIVE}} : For sessions of this type, the HLS media playlist is continually updated with the latest fragments as they become available. We recommend that the media player retrieve a new playlist on a one-second interval. When this type of session is played in a media player, the user interface typically displays a "live" notification, with no scrubber control for choosing the position in the playback window to display.

In \code{LIVE} mode, the newest available fragments are included in an HLS media playlist, even if there is a gap between fragments (that is, if a fragment is missing). A gap like this might cause a media player to halt or cause a jump in playback. In this mode, fragments are not added to the HLS media playlist if they are older than the newest fragment in the playlist. If the missing fragment becomes available after a subsequent fragment is added to the playlist, the older fragment is not added, and the gap is not filled.
\item \strong{\code{ON_DEMAND}} : For sessions of this type, the HLS media playlist contains all the fragments for the session, up to the number that is specified in \code{MaxMediaPlaylistFragmentResults}. The playlist must be retrieved only once for each session. When this type of session is played in a media player, the user interface typically displays a scrubber control for choosing the position in the playback window to display.
}

In both playback modes, if \code{FragmentSelectorType} is \code{PRODUCER_TIMESTAMP}, and if there are multiple fragments with the same start time stamp, the fragment that has the larger fragment number (that is, the newer fragment) is included in the HLS media playlist. The other fragments are not included. Fragments that have different time stamps but have overlapping durations are still included in the HLS media playlist. This can lead to unexpected behavior in the media player.

The default is \code{LIVE}.}

\item{HLSFragmentSelector}{The time range of the requested fragment, and the source of the time stamps.

This parameter is required if \code{PlaybackMode} is \code{ON_DEMAND}. This parameter is optional if \code{PlaybackMode} is \code{LIVE}. If \code{PlaybackMode} is \code{LIVE}, the \code{FragmentSelectorType} can be set, but the \code{TimestampRange} should not be set. If \code{PlaybackMode} is \code{ON_DEMAND}, both \code{FragmentSelectorType} and \code{TimestampRange} must be set.}

\item{DiscontinuityMode}{Specifies when flags marking discontinuities between fragments will be added to the media playlists. The default is \code{ALWAYS} when HLSFragmentSelector is \code{SERVER_TIMESTAMP}, and \code{NEVER} when it is \code{PRODUCER_TIMESTAMP}.

Media players typically build a timeline of media content to play, based on the time stamps of each fragment. This means that if there is any overlap between fragments (as is typical if HLSFragmentSelector is \code{SERVER_TIMESTAMP}), the media player timeline has small gaps between fragments in some places, and overwrites frames in other places. When there are discontinuity flags between fragments, the media player is expected to reset the timeline, resulting in the fragment being played immediately after the previous fragment. We recommend that you always have discontinuity flags between fragments if the fragment time stamps are not accurate or if fragments might be missing. You should not place discontinuity flags between fragments for the player timeline to accurately map to the producer time stamps.}

\item{Expires}{The time in seconds until the requested session expires. This value can be between 300 (5 minutes) and 43200 (12 hours).

When a session expires, no new calls to \code{GetHLSMasterPlaylist}, \code{GetHLSMediaPlaylist}, \code{GetMP4InitFragment}, or \code{GetMP4MediaFragment} can be made for that session.

The default is 300 (5 minutes).}

\item{MaxMediaPlaylistFragmentResults}{The maximum number of fragments that are returned in the HLS media playlists.

When the \code{PlaybackMode} is \code{LIVE}, the most recent fragments are returned up to this value. When the \code{PlaybackMode} is \code{ON_DEMAND}, the oldest fragments are returned, up to this maximum number.

When there are a higher number of fragments available in a live HLS media playlist, video players often buffer content before starting playback. Increasing the buffer size increases the playback latency, but it decreases the likelihood that rebuffering will occur during playback. We recommend that a live HLS media playlist have a minimum of 3 fragments and a maximum of 10 fragments.

The default is 5 fragments if \code{PlaybackMode} is \code{LIVE}, and 1,000 if \code{PlaybackMode} is \code{ON_DEMAND}.

The maximum value of 1,000 fragments corresponds to more than 16 minutes of video on streams with 1-second fragments, and more than 2 1/2 hours of video on streams with 10-second fragments.}
}
\description{
Retrieves an HTTP Live Streaming (HLS) URL for the stream. You can then open the URL in a browser or media player to view the stream contents.
}
\details{
You must specify either the \code{StreamName} or the \code{StreamARN}.

An Amazon Kinesis video stream has the following requirements for providing data through HLS:
\itemize{
\item The media type must be \code{video/h264}.
\item Data retention must be greater than 0.
\item The fragments must contain codec private data in the AVC (Advanced Video Coding) for H.264 format (\href{https://www.iso.org/standard/55980.html}{MPEG-4 specification ISO/IEC 14496-15}). For information about adapting stream data to a given format, see \href{http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/latest/dg/producer-reference-nal.html}{NAL Adaptation Flags}.
}

Kinesis Video Streams HLS sessions contain fragments in the fragmented MPEG-4 form (also called fMP4 or CMAF), rather than the MPEG-2 form (also called TS chunks, which the HLS specification also supports). For more information about HLS fragment types, see the \href{https://tools.ietf.org/html/draft-pantos-http-live-streaming-23}{HLS specification}.

The following procedure shows how to use HLS with Kinesis Video Streams:
\enumerate{
\item Get an endpoint using \href{http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_GetDataEndpoint.html}{GetDataEndpoint}, specifying \code{GET_HLS_STREAMING_SESSION_URL} for the \code{APIName} parameter.
\item Retrieve the HLS URL using \code{GetHLSStreamingSessionURL}. Kinesis Video Streams creates an HLS streaming session to be used for accessing content in a stream using the HLS protocol. \code{GetHLSStreamingSessionURL} returns an authenticated URL (that includes an encrypted session token) for the session's HLS \emph{master playlist} (the root resource needed for streaming with HLS).
}

Don't share or store this token where an unauthorized entity could access it. The token provides access to the content of the stream. Safeguard the token with the same measures that you would use with your AWS credentials.

The media that is made available through the playlist consists only of the requested stream, time range, and format. No other media data (such as frames outside the requested window or alternate bit rates) is made available.
\enumerate{
\item Provide the URL (containing the encrypted session token) for the HLS master playlist to a media player that supports the HLS protocol. Kinesis Video Streams makes the HLS media playlist, initialization fragment, and media fragments available through the master playlist URL. The initialization fragment contains the codec private data for the stream, and other data needed to set up the video decoder and renderer. The media fragments contain H.264-encoded video frames and time stamps.
\item The media player receives the authenticated URL and requests stream metadata and media data normally. When the media player requests data, it calls the following actions:
}
\itemize{
\item \strong{GetHLSMasterPlaylist:} Retrieves an HLS master playlist, which contains a URL for the \code{GetHLSMediaPlaylist} action, and additional metadata for the media player, including estimated bit rate and resolution.
\item \strong{GetHLSMediaPlaylist:} Retrieves an HLS media playlist, which contains a URL to access the MP4 initialization fragment with the \code{GetMP4InitFragment} action, and URLs to access the MP4 media fragments with the \code{GetMP4MediaFragment} actions. The HLS media playlist also contains metadata about the stream that the player needs to play it, such as whether the \code{PlaybackMode} is \code{LIVE} or \code{ON_DEMAND}. The HLS media playlist is typically static for sessions with a \code{PlaybackType} of \code{ON_DEMAND}. The HLS media playlist is continually updated with new fragments for sessions with a \code{PlaybackType} of \code{LIVE}.
\item \strong{GetMP4InitFragment:} Retrieves the MP4 initialization fragment. The media player typically loads the initialization fragment before loading any media fragments. This fragment contains the "\code{fytp}" and "\code{moov}" MP4 atoms, and the child atoms that are needed to initialize the media player decoder.
}

The initialization fragment does not correspond to a fragment in a Kinesis video stream. It contains only the codec private data for the stream, which the media player needs to decode video frames.
\itemize{
\item \strong{GetMP4MediaFragment:} Retrieves MP4 media fragments. These fragments contain the "\code{moof}" and "\code{mdat}" MP4 atoms and their child atoms, containing the encoded fragment's video frames and their time stamps.
}

After the first media fragment is made available in a streaming session, any fragments that don't contain the same codec private data are excluded in the HLS media playlist. Therefore, the codec private data does not change between fragments in a session.

Data retrieved with this action is billable. See \href{aws.amazon.comkinesis/video-streams/pricing/}{Pricing} for details.

The following restrictions apply to HLS sessions:
\itemize{
\item A streaming session URL should not be shared between players. The service might throttle a session if multiple media players are sharing it. For connection limits, see \href{http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/limits.html}{Kinesis Video Streams Limits}.
\item A Kinesis video stream can have a maximum of five active HLS streaming sessions. If a new session is created when the maximum number of sessions is already active, the oldest (earliest created) session is closed. The number of active \code{GetMedia} connections on a Kinesis video stream does not count against this limit, and the number of active HLS sessions does not count against the active \code{GetMedia} connection limit.
}

You can monitor the amount of data that the media player consumes by monitoring the \code{GetMP4MediaFragment.OutgoingBytes} Amazon CloudWatch metric. For information about using CloudWatch to monitor Kinesis Video Streams, see \href{http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/monitoring.html}{Monitoring Kinesis Video Streams}. For pricing information, see \href{https://aws.amazon.com/kinesis/video-streams/pricing/}{Amazon Kinesis Video Streams Pricing} and \href{https://aws.amazon.com/pricing/}{AWS Pricing}. Charges for both HLS sessions and outgoing AWS data apply.

For more information about HLS, see \href{https://developer.apple.com/streaming/}{HTTP Live Streaming} on the \href{https://developer.apple.com}{Apple Developer site}.
}
\section{Accepted Parameters}{
\preformatted{get_hls_streaming_session_url(
  StreamName = "string",
  StreamARN = "string",
  PlaybackMode = "LIVE"|"ON_DEMAND",
  HLSFragmentSelector = list(
    FragmentSelectorType = "PRODUCER_TIMESTAMP"|"SERVER_TIMESTAMP",
    TimestampRange = list(
      StartTimestamp = as.POSIXct("2015-01-01"),
      EndTimestamp = as.POSIXct("2015-01-01")
    )
  ),
  DiscontinuityMode = "ALWAYS"|"NEVER",
  Expires = 123,
  MaxMediaPlaylistFragmentResults = 123
)
}
}

