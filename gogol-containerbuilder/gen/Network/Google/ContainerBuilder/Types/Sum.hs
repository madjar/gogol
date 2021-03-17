{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ContainerBuilder.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ContainerBuilder.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Output only. Status of the build step. At this time, build step status
-- is only updated on build completion; step status is not updated in
-- real-time as the build progresses.
data BuildStepStatus
    = StatusUnknown
      -- ^ @STATUS_UNKNOWN@
      -- Status of the build is unknown.
    | Queued
      -- ^ @QUEUED@
      -- Build or step is queued; work has not yet begun.
    | Working
      -- ^ @WORKING@
      -- Build or step is being executed.
    | Success
      -- ^ @SUCCESS@
      -- Build or step finished successfully.
    | Failure
      -- ^ @FAILURE@
      -- Build or step failed to complete successfully.
    | InternalError
      -- ^ @INTERNAL_ERROR@
      -- Build or step failed due to an internal cause.
    | Timeout
      -- ^ @TIMEOUT@
      -- Build or step took longer than was allowed.
    | Cancelled
      -- ^ @CANCELLED@
      -- Build or step was canceled by a user.
    | Expired
      -- ^ @EXPIRED@
      -- Build was enqueued for longer than the value of \`queue_ttl\`.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BuildStepStatus

instance FromHttpApiData BuildStepStatus where
    parseQueryParam = \case
        "STATUS_UNKNOWN" -> Right StatusUnknown
        "QUEUED" -> Right Queued
        "WORKING" -> Right Working
        "SUCCESS" -> Right Success
        "FAILURE" -> Right Failure
        "INTERNAL_ERROR" -> Right InternalError
        "TIMEOUT" -> Right Timeout
        "CANCELLED" -> Right Cancelled
        "EXPIRED" -> Right Expired
        x -> Left ("Unable to parse BuildStepStatus from: " <> x)

instance ToHttpApiData BuildStepStatus where
    toQueryParam = \case
        StatusUnknown -> "STATUS_UNKNOWN"
        Queued -> "QUEUED"
        Working -> "WORKING"
        Success -> "SUCCESS"
        Failure -> "FAILURE"
        InternalError -> "INTERNAL_ERROR"
        Timeout -> "TIMEOUT"
        Cancelled -> "CANCELLED"
        Expired -> "EXPIRED"

instance FromJSON BuildStepStatus where
    parseJSON = parseJSONText "BuildStepStatus"

instance ToJSON BuildStepStatus where
    toJSON = toJSONText

-- | Configure builds to run whether a repository owner or collaborator need
-- to comment \`\/gcbrun\`.
data PullRequestFilterCommentControl
    = CommentsDisabled
      -- ^ @COMMENTS_DISABLED@
      -- Do not require comments on Pull Requests before builds are triggered.
    | CommentsEnabled
      -- ^ @COMMENTS_ENABLED@
      -- Enforce that repository owners or collaborators must comment on Pull
      -- Requests before builds are triggered.
    | CommentsEnabledForExternalContributorsOnly
      -- ^ @COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY@
      -- Enforce that repository owners or collaborators must comment on external
      -- contributors\' Pull Requests before builds are triggered.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PullRequestFilterCommentControl

instance FromHttpApiData PullRequestFilterCommentControl where
    parseQueryParam = \case
        "COMMENTS_DISABLED" -> Right CommentsDisabled
        "COMMENTS_ENABLED" -> Right CommentsEnabled
        "COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY" -> Right CommentsEnabledForExternalContributorsOnly
        x -> Left ("Unable to parse PullRequestFilterCommentControl from: " <> x)

instance ToHttpApiData PullRequestFilterCommentControl where
    toQueryParam = \case
        CommentsDisabled -> "COMMENTS_DISABLED"
        CommentsEnabled -> "COMMENTS_ENABLED"
        CommentsEnabledForExternalContributorsOnly -> "COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY"

instance FromJSON PullRequestFilterCommentControl where
    parseJSON = parseJSONText "PullRequestFilterCommentControl"

instance ToJSON PullRequestFilterCommentControl where
    toJSON = toJSONText

-- | Requested verifiability options.
data BuildOptionsRequestedVerifyOption
    = NotVerified
      -- ^ @NOT_VERIFIED@
      -- Not a verifiable build. (default)
    | Verified
      -- ^ @VERIFIED@
      -- Verified build.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BuildOptionsRequestedVerifyOption

instance FromHttpApiData BuildOptionsRequestedVerifyOption where
    parseQueryParam = \case
        "NOT_VERIFIED" -> Right NotVerified
        "VERIFIED" -> Right Verified
        x -> Left ("Unable to parse BuildOptionsRequestedVerifyOption from: " <> x)

instance ToHttpApiData BuildOptionsRequestedVerifyOption where
    toQueryParam = \case
        NotVerified -> "NOT_VERIFIED"
        Verified -> "VERIFIED"

instance FromJSON BuildOptionsRequestedVerifyOption where
    parseJSON = parseJSONText "BuildOptionsRequestedVerifyOption"

instance ToJSON BuildOptionsRequestedVerifyOption where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | Output only. Status of the build.
data BuildStatus
    = BSStatusUnknown
      -- ^ @STATUS_UNKNOWN@
      -- Status of the build is unknown.
    | BSQueued
      -- ^ @QUEUED@
      -- Build or step is queued; work has not yet begun.
    | BSWorking
      -- ^ @WORKING@
      -- Build or step is being executed.
    | BSSuccess
      -- ^ @SUCCESS@
      -- Build or step finished successfully.
    | BSFailure
      -- ^ @FAILURE@
      -- Build or step failed to complete successfully.
    | BSInternalError
      -- ^ @INTERNAL_ERROR@
      -- Build or step failed due to an internal cause.
    | BSTimeout
      -- ^ @TIMEOUT@
      -- Build or step took longer than was allowed.
    | BSCancelled
      -- ^ @CANCELLED@
      -- Build or step was canceled by a user.
    | BSExpired
      -- ^ @EXPIRED@
      -- Build was enqueued for longer than the value of \`queue_ttl\`.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BuildStatus

instance FromHttpApiData BuildStatus where
    parseQueryParam = \case
        "STATUS_UNKNOWN" -> Right BSStatusUnknown
        "QUEUED" -> Right BSQueued
        "WORKING" -> Right BSWorking
        "SUCCESS" -> Right BSSuccess
        "FAILURE" -> Right BSFailure
        "INTERNAL_ERROR" -> Right BSInternalError
        "TIMEOUT" -> Right BSTimeout
        "CANCELLED" -> Right BSCancelled
        "EXPIRED" -> Right BSExpired
        x -> Left ("Unable to parse BuildStatus from: " <> x)

instance ToHttpApiData BuildStatus where
    toQueryParam = \case
        BSStatusUnknown -> "STATUS_UNKNOWN"
        BSQueued -> "QUEUED"
        BSWorking -> "WORKING"
        BSSuccess -> "SUCCESS"
        BSFailure -> "FAILURE"
        BSInternalError -> "INTERNAL_ERROR"
        BSTimeout -> "TIMEOUT"
        BSCancelled -> "CANCELLED"
        BSExpired -> "EXPIRED"

instance FromJSON BuildStatus where
    parseJSON = parseJSONText "BuildStatus"

instance ToJSON BuildStatus where
    toJSON = toJSONText

-- | Option to specify behavior when there is an error in the substitution
-- checks. NOTE: this is always set to ALLOW_LOOSE for triggered builds and
-- cannot be overridden in the build configuration file.
data BuildOptionsSubstitutionOption
    = MustMatch
      -- ^ @MUST_MATCH@
      -- Fails the build if error in substitutions checks, like missing a
      -- substitution in the template or in the map.
    | AllowLoose
      -- ^ @ALLOW_LOOSE@
      -- Do not fail the build if error in substitutions checks.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BuildOptionsSubstitutionOption

instance FromHttpApiData BuildOptionsSubstitutionOption where
    parseQueryParam = \case
        "MUST_MATCH" -> Right MustMatch
        "ALLOW_LOOSE" -> Right AllowLoose
        x -> Left ("Unable to parse BuildOptionsSubstitutionOption from: " <> x)

instance ToHttpApiData BuildOptionsSubstitutionOption where
    toQueryParam = \case
        MustMatch -> "MUST_MATCH"
        AllowLoose -> "ALLOW_LOOSE"

instance FromJSON BuildOptionsSubstitutionOption where
    parseJSON = parseJSONText "BuildOptionsSubstitutionOption"

instance ToJSON BuildOptionsSubstitutionOption where
    toJSON = toJSONText

-- | The type of hash that was performed.
data HashType
    = None
      -- ^ @NONE@
      -- No hash requested.
    | SHA256
      -- ^ @SHA256@
      -- Use a sha256 hash.
    | MD5
      -- ^ @MD5@
      -- Use a md5 hash.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable HashType

instance FromHttpApiData HashType where
    parseQueryParam = \case
        "NONE" -> Right None
        "SHA256" -> Right SHA256
        "MD5" -> Right MD5
        x -> Left ("Unable to parse HashType from: " <> x)

instance ToHttpApiData HashType where
    toQueryParam = \case
        None -> "NONE"
        SHA256 -> "SHA256"
        MD5 -> "MD5"

instance FromJSON HashType where
    parseJSON = parseJSONText "HashType"

instance ToJSON HashType where
    toJSON = toJSONText

-- | Option to define build log streaming behavior to Google Cloud Storage.
data BuildOptionsLogStreamingOption
    = StreamDefault
      -- ^ @STREAM_DEFAULT@
      -- Service may automatically determine build log streaming behavior.
    | StreamOn
      -- ^ @STREAM_ON@
      -- Build logs should be streamed to Google Cloud Storage.
    | StreamOff
      -- ^ @STREAM_OFF@
      -- Build logs should not be streamed to Google Cloud Storage; they will be
      -- written when the build is completed.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BuildOptionsLogStreamingOption

instance FromHttpApiData BuildOptionsLogStreamingOption where
    parseQueryParam = \case
        "STREAM_DEFAULT" -> Right StreamDefault
        "STREAM_ON" -> Right StreamOn
        "STREAM_OFF" -> Right StreamOff
        x -> Left ("Unable to parse BuildOptionsLogStreamingOption from: " <> x)

instance ToHttpApiData BuildOptionsLogStreamingOption where
    toQueryParam = \case
        StreamDefault -> "STREAM_DEFAULT"
        StreamOn -> "STREAM_ON"
        StreamOff -> "STREAM_OFF"

instance FromJSON BuildOptionsLogStreamingOption where
    parseJSON = parseJSONText "BuildOptionsLogStreamingOption"

instance ToJSON BuildOptionsLogStreamingOption where
    toJSON = toJSONText

data BuildOptionsSourceProvenanceHashItem
    = BOSPHINone
      -- ^ @NONE@
      -- No hash requested.
    | BOSPHISHA256
      -- ^ @SHA256@
      -- Use a sha256 hash.
    | BOSPHIMD5
      -- ^ @MD5@
      -- Use a md5 hash.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BuildOptionsSourceProvenanceHashItem

instance FromHttpApiData BuildOptionsSourceProvenanceHashItem where
    parseQueryParam = \case
        "NONE" -> Right BOSPHINone
        "SHA256" -> Right BOSPHISHA256
        "MD5" -> Right BOSPHIMD5
        x -> Left ("Unable to parse BuildOptionsSourceProvenanceHashItem from: " <> x)

instance ToHttpApiData BuildOptionsSourceProvenanceHashItem where
    toQueryParam = \case
        BOSPHINone -> "NONE"
        BOSPHISHA256 -> "SHA256"
        BOSPHIMD5 -> "MD5"

instance FromJSON BuildOptionsSourceProvenanceHashItem where
    parseJSON = parseJSONText "BuildOptionsSourceProvenanceHashItem"

instance ToJSON BuildOptionsSourceProvenanceHashItem where
    toJSON = toJSONText

-- | Option to specify the logging mode, which determines if and where build
-- logs are stored.
data BuildOptionsLogging
    = BOLLoggingUnspecified
      -- ^ @LOGGING_UNSPECIFIED@
      -- The service determines the logging mode. The default is \`LEGACY\`. Do
      -- not rely on the default logging behavior as it may change in the future.
    | BOLLegacy
      -- ^ @LEGACY@
      -- Cloud Logging and Cloud Storage logging are enabled.
    | BOLGcsOnly
      -- ^ @GCS_ONLY@
      -- Only Cloud Storage logging is enabled.
    | BOLStackdriverOnly
      -- ^ @STACKDRIVER_ONLY@
      -- This option is the same as CLOUD_LOGGING_ONLY.
    | BOLCloudLoggingOnly
      -- ^ @CLOUD_LOGGING_ONLY@
      -- Only Cloud Logging is enabled. Note that logs for both the Cloud Console
      -- UI and Cloud SDK are based on Cloud Storage logs, so neither will
      -- provide logs if this option is chosen.
    | BOLNone
      -- ^ @NONE@
      -- Turn off all logging. No build logs will be captured.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BuildOptionsLogging

instance FromHttpApiData BuildOptionsLogging where
    parseQueryParam = \case
        "LOGGING_UNSPECIFIED" -> Right BOLLoggingUnspecified
        "LEGACY" -> Right BOLLegacy
        "GCS_ONLY" -> Right BOLGcsOnly
        "STACKDRIVER_ONLY" -> Right BOLStackdriverOnly
        "CLOUD_LOGGING_ONLY" -> Right BOLCloudLoggingOnly
        "NONE" -> Right BOLNone
        x -> Left ("Unable to parse BuildOptionsLogging from: " <> x)

instance ToHttpApiData BuildOptionsLogging where
    toQueryParam = \case
        BOLLoggingUnspecified -> "LOGGING_UNSPECIFIED"
        BOLLegacy -> "LEGACY"
        BOLGcsOnly -> "GCS_ONLY"
        BOLStackdriverOnly -> "STACKDRIVER_ONLY"
        BOLCloudLoggingOnly -> "CLOUD_LOGGING_ONLY"
        BOLNone -> "NONE"

instance FromJSON BuildOptionsLogging where
    parseJSON = parseJSONText "BuildOptionsLogging"

instance ToJSON BuildOptionsLogging where
    toJSON = toJSONText

-- | Compute Engine machine type on which to run the build.
data BuildOptionsMachineType
    = Unspecified
      -- ^ @UNSPECIFIED@
      -- Standard machine type.
    | N1Highcpu8
      -- ^ @N1_HIGHCPU_8@
      -- Highcpu machine with 8 CPUs.
    | N1Highcpu32
      -- ^ @N1_HIGHCPU_32@
      -- Highcpu machine with 32 CPUs.
    | E2Highcpu8
      -- ^ @E2_HIGHCPU_8@
      -- Highcpu e2 machine with 8 CPUs.
    | E2Highcpu32
      -- ^ @E2_HIGHCPU_32@
      -- Highcpu e2 machine with 32 CPUs.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BuildOptionsMachineType

instance FromHttpApiData BuildOptionsMachineType where
    parseQueryParam = \case
        "UNSPECIFIED" -> Right Unspecified
        "N1_HIGHCPU_8" -> Right N1Highcpu8
        "N1_HIGHCPU_32" -> Right N1Highcpu32
        "E2_HIGHCPU_8" -> Right E2Highcpu8
        "E2_HIGHCPU_32" -> Right E2Highcpu32
        x -> Left ("Unable to parse BuildOptionsMachineType from: " <> x)

instance ToHttpApiData BuildOptionsMachineType where
    toQueryParam = \case
        Unspecified -> "UNSPECIFIED"
        N1Highcpu8 -> "N1_HIGHCPU_8"
        N1Highcpu32 -> "N1_HIGHCPU_32"
        E2Highcpu8 -> "E2_HIGHCPU_8"
        E2Highcpu32 -> "E2_HIGHCPU_32"

instance FromJSON BuildOptionsMachineType where
    parseJSON = parseJSONText "BuildOptionsMachineType"

instance ToJSON BuildOptionsMachineType where
    toJSON = toJSONText
