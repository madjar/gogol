{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ResourceManager.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ResourceManager.Types
    (
    -- * Service Configuration
      resourceManagerService

    -- * OAuth Scopes
    , cloudPlatformReadOnlyScope
    , cloudPlatformScope

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

    -- * Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- * GetIAMPolicyRequest
    , GetIAMPolicyRequest
    , getIAMPolicyRequest
    , giprOptions

    -- * DeleteTagValueMetadata
    , DeleteTagValueMetadata
    , deleteTagValueMetadata

    -- * UpdateTagValueMetadata
    , UpdateTagValueMetadata
    , updateTagValueMetadata

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * Empty
    , Empty
    , empty

    -- * FolderOperationErrorErrorMessageId
    , FolderOperationErrorErrorMessageId (..)

    -- * ProjectCreationStatus
    , ProjectCreationStatus
    , projectCreationStatus
    , pcsGettable
    , pcsReady
    , pcsCreateTime

    -- * CreateTagValueMetadata
    , CreateTagValueMetadata
    , createTagValueMetadata

    -- * ListTagValuesResponse
    , ListTagValuesResponse
    , listTagValuesResponse
    , ltvrNextPageToken
    , ltvrTagValues

    -- * CloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperation
    , CloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperation
    , cloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperation
    , crmgcrmvfoDestinationParent
    , crmgcrmvfoDisplayName
    , crmgcrmvfoOperationType
    , crmgcrmvfoSourceParent

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * FolderOperationError
    , FolderOperationError
    , folderOperationError
    , foeErrorMessageId

    -- * GetPolicyOptions
    , GetPolicyOptions
    , getPolicyOptions
    , gpoRequestedPolicyVersion

    -- * FolderOperationOperationType
    , FolderOperationOperationType (..)

    -- * SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprUpdateMask
    , siprPolicy

    -- * TagValue
    , TagValue
    , tagValue
    , tvParent
    , tvEtag
    , tvShortName
    , tvUpdateTime
    , tvName
    , tvNamespacedName
    , tvDescription
    , tvCreateTime

    -- * ListLiensResponse
    , ListLiensResponse
    , listLiensResponse
    , llrNextPageToken
    , llrLiens

    -- * CreateTagKeyMetadata
    , CreateTagKeyMetadata
    , createTagKeyMetadata

    -- * ListTagKeysResponse
    , ListTagKeysResponse
    , listTagKeysResponse
    , ltkrNextPageToken
    , ltkrTagKeys

    -- * AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- * Xgafv
    , Xgafv (..)

    -- * TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- * TagKey
    , TagKey
    , tagKey
    , tkParent
    , tkEtag
    , tkShortName
    , tkUpdateTime
    , tkName
    , tkNamespacedName
    , tkDescription
    , tkCreateTime

    -- * CloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperation
    , CloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperation
    , cloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperation
    , cDestinationParent
    , cDisplayName
    , cOperationType
    , cSourceParent

    -- * TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- * Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pVersion
    , pBindings

    -- * CloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperationOperationType
    , CloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperationOperationType (..)

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- * FolderOperation
    , FolderOperation
    , folderOperation
    , foDestinationParent
    , foDisplayName
    , foOperationType
    , foSourceParent

    -- * AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- * TagBinding
    , TagBinding
    , tagBinding
    , tbParent
    , tbTagValue
    , tbName

    -- * CloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperationOperationType
    , CloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperationOperationType (..)

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * Lien
    , Lien
    , lien
    , lParent
    , lOrigin
    , lReason
    , lName
    , lRestrictions
    , lCreateTime

    -- * UpdateTagKeyMetadata
    , UpdateTagKeyMetadata
    , updateTagKeyMetadata

    -- * DeleteTagKeyMetadata
    , DeleteTagKeyMetadata
    , deleteTagKeyMetadata

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition

    -- * ListTagBindingsResponse
    , ListTagBindingsResponse
    , listTagBindingsResponse
    , ltbrNextPageToken
    , ltbrTagBindings
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types.Product
import Network.Google.ResourceManager.Types.Sum

-- | Default request referring to version 'v3' of the Cloud Resource Manager API. This contains the host and root path used as a starting point for constructing service requests.
resourceManagerService :: ServiceConfig
resourceManagerService
  = defaultService
      (ServiceId "cloudresourcemanager:v3")
      "cloudresourcemanager.googleapis.com"

-- | View your data across Google Cloud Platform services
cloudPlatformReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform.read-only"]
cloudPlatformReadOnlyScope = Proxy

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
