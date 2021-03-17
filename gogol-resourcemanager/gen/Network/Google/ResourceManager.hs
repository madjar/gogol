{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.ResourceManager
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates, reads, and updates metadata for Google Cloud Platform resource
-- containers.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference>
module Network.Google.ResourceManager
    (
    -- * Service Configuration
      resourceManagerService

    -- * OAuth Scopes
    , cloudPlatformReadOnlyScope
    , cloudPlatformScope

    -- * API Declaration
    , ResourceManagerAPI

    -- * Resources

    -- ** cloudresourcemanager.liens.create
    , module Network.Google.Resource.CloudResourceManager.Liens.Create

    -- ** cloudresourcemanager.liens.delete
    , module Network.Google.Resource.CloudResourceManager.Liens.Delete

    -- ** cloudresourcemanager.liens.get
    , module Network.Google.Resource.CloudResourceManager.Liens.Get

    -- ** cloudresourcemanager.liens.list
    , module Network.Google.Resource.CloudResourceManager.Liens.List

    -- ** cloudresourcemanager.operations.get
    , module Network.Google.Resource.CloudResourceManager.Operations.Get

    -- ** cloudresourcemanager.tagBindings.create
    , module Network.Google.Resource.CloudResourceManager.TagBindings.Create

    -- ** cloudresourcemanager.tagBindings.delete
    , module Network.Google.Resource.CloudResourceManager.TagBindings.Delete

    -- ** cloudresourcemanager.tagBindings.list
    , module Network.Google.Resource.CloudResourceManager.TagBindings.List

    -- ** cloudresourcemanager.tagKeys.create
    , module Network.Google.Resource.CloudResourceManager.TagKeys.Create

    -- ** cloudresourcemanager.tagKeys.delete
    , module Network.Google.Resource.CloudResourceManager.TagKeys.Delete

    -- ** cloudresourcemanager.tagKeys.get
    , module Network.Google.Resource.CloudResourceManager.TagKeys.Get

    -- ** cloudresourcemanager.tagKeys.getIamPolicy
    , module Network.Google.Resource.CloudResourceManager.TagKeys.GetIAMPolicy

    -- ** cloudresourcemanager.tagKeys.list
    , module Network.Google.Resource.CloudResourceManager.TagKeys.List

    -- ** cloudresourcemanager.tagKeys.patch
    , module Network.Google.Resource.CloudResourceManager.TagKeys.Patch

    -- ** cloudresourcemanager.tagKeys.setIamPolicy
    , module Network.Google.Resource.CloudResourceManager.TagKeys.SetIAMPolicy

    -- ** cloudresourcemanager.tagKeys.testIamPermissions
    , module Network.Google.Resource.CloudResourceManager.TagKeys.TestIAMPermissions

    -- ** cloudresourcemanager.tagValues.create
    , module Network.Google.Resource.CloudResourceManager.TagValues.Create

    -- ** cloudresourcemanager.tagValues.delete
    , module Network.Google.Resource.CloudResourceManager.TagValues.Delete

    -- ** cloudresourcemanager.tagValues.get
    , module Network.Google.Resource.CloudResourceManager.TagValues.Get

    -- ** cloudresourcemanager.tagValues.getIamPolicy
    , module Network.Google.Resource.CloudResourceManager.TagValues.GetIAMPolicy

    -- ** cloudresourcemanager.tagValues.list
    , module Network.Google.Resource.CloudResourceManager.TagValues.List

    -- ** cloudresourcemanager.tagValues.patch
    , module Network.Google.Resource.CloudResourceManager.TagValues.Patch

    -- ** cloudresourcemanager.tagValues.setIamPolicy
    , module Network.Google.Resource.CloudResourceManager.TagValues.SetIAMPolicy

    -- ** cloudresourcemanager.tagValues.testIamPermissions
    , module Network.Google.Resource.CloudResourceManager.TagValues.TestIAMPermissions

    -- * Types

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

    -- ** Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- ** GetIAMPolicyRequest
    , GetIAMPolicyRequest
    , getIAMPolicyRequest
    , giprOptions

    -- ** DeleteTagValueMetadata
    , DeleteTagValueMetadata
    , deleteTagValueMetadata

    -- ** UpdateTagValueMetadata
    , UpdateTagValueMetadata
    , updateTagValueMetadata

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** Empty
    , Empty
    , empty

    -- ** FolderOperationErrorErrorMessageId
    , FolderOperationErrorErrorMessageId (..)

    -- ** ProjectCreationStatus
    , ProjectCreationStatus
    , projectCreationStatus
    , pcsGettable
    , pcsReady
    , pcsCreateTime

    -- ** CreateTagValueMetadata
    , CreateTagValueMetadata
    , createTagValueMetadata

    -- ** ListTagValuesResponse
    , ListTagValuesResponse
    , listTagValuesResponse
    , ltvrNextPageToken
    , ltvrTagValues

    -- ** CloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperation
    , CloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperation
    , cloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperation
    , crmgcrmvfoDestinationParent
    , crmgcrmvfoDisplayName
    , crmgcrmvfoOperationType
    , crmgcrmvfoSourceParent

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** FolderOperationError
    , FolderOperationError
    , folderOperationError
    , foeErrorMessageId

    -- ** GetPolicyOptions
    , GetPolicyOptions
    , getPolicyOptions
    , gpoRequestedPolicyVersion

    -- ** FolderOperationOperationType
    , FolderOperationOperationType (..)

    -- ** SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprUpdateMask
    , siprPolicy

    -- ** TagValue
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

    -- ** ListLiensResponse
    , ListLiensResponse
    , listLiensResponse
    , llrNextPageToken
    , llrLiens

    -- ** CreateTagKeyMetadata
    , CreateTagKeyMetadata
    , createTagKeyMetadata

    -- ** ListTagKeysResponse
    , ListTagKeysResponse
    , listTagKeysResponse
    , ltkrNextPageToken
    , ltkrTagKeys

    -- ** AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- ** Xgafv
    , Xgafv (..)

    -- ** TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- ** TagKey
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

    -- ** CloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperation
    , CloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperation
    , cloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperation
    , cDestinationParent
    , cDisplayName
    , cOperationType
    , cSourceParent

    -- ** TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- ** Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pVersion
    , pBindings

    -- ** CloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperationOperationType
    , CloudResourceManagerGoogleCloudResourceManagerV2beta1FolderOperationOperationType (..)

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- ** FolderOperation
    , FolderOperation
    , folderOperation
    , foDestinationParent
    , foDisplayName
    , foOperationType
    , foSourceParent

    -- ** AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- ** TagBinding
    , TagBinding
    , tagBinding
    , tbParent
    , tbTagValue
    , tbName

    -- ** CloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperationOperationType
    , CloudResourceManagerGoogleCloudResourceManagerV2alpha1FolderOperationOperationType (..)

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** Lien
    , Lien
    , lien
    , lParent
    , lOrigin
    , lReason
    , lName
    , lRestrictions
    , lCreateTime

    -- ** UpdateTagKeyMetadata
    , UpdateTagKeyMetadata
    , updateTagKeyMetadata

    -- ** DeleteTagKeyMetadata
    , DeleteTagKeyMetadata
    , deleteTagKeyMetadata

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition

    -- ** ListTagBindingsResponse
    , ListTagBindingsResponse
    , listTagBindingsResponse
    , ltbrNextPageToken
    , ltbrTagBindings
    ) where

import Network.Google.Prelude
import Network.Google.Resource.CloudResourceManager.Liens.Create
import Network.Google.Resource.CloudResourceManager.Liens.Delete
import Network.Google.Resource.CloudResourceManager.Liens.Get
import Network.Google.Resource.CloudResourceManager.Liens.List
import Network.Google.Resource.CloudResourceManager.Operations.Get
import Network.Google.Resource.CloudResourceManager.TagBindings.Create
import Network.Google.Resource.CloudResourceManager.TagBindings.Delete
import Network.Google.Resource.CloudResourceManager.TagBindings.List
import Network.Google.Resource.CloudResourceManager.TagKeys.Create
import Network.Google.Resource.CloudResourceManager.TagKeys.Delete
import Network.Google.Resource.CloudResourceManager.TagKeys.Get
import Network.Google.Resource.CloudResourceManager.TagKeys.GetIAMPolicy
import Network.Google.Resource.CloudResourceManager.TagKeys.List
import Network.Google.Resource.CloudResourceManager.TagKeys.Patch
import Network.Google.Resource.CloudResourceManager.TagKeys.SetIAMPolicy
import Network.Google.Resource.CloudResourceManager.TagKeys.TestIAMPermissions
import Network.Google.Resource.CloudResourceManager.TagValues.Create
import Network.Google.Resource.CloudResourceManager.TagValues.Delete
import Network.Google.Resource.CloudResourceManager.TagValues.Get
import Network.Google.Resource.CloudResourceManager.TagValues.GetIAMPolicy
import Network.Google.Resource.CloudResourceManager.TagValues.List
import Network.Google.Resource.CloudResourceManager.TagValues.Patch
import Network.Google.Resource.CloudResourceManager.TagValues.SetIAMPolicy
import Network.Google.Resource.CloudResourceManager.TagValues.TestIAMPermissions
import Network.Google.ResourceManager.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Resource Manager API service.
type ResourceManagerAPI =
     TagValuesListResource :<|>
       TagValuesGetIAMPolicyResource
       :<|> TagValuesPatchResource
       :<|> TagValuesGetResource
       :<|> TagValuesCreateResource
       :<|> TagValuesSetIAMPolicyResource
       :<|> TagValuesTestIAMPermissionsResource
       :<|> TagValuesDeleteResource
       :<|> TagKeysListResource
       :<|> TagKeysGetIAMPolicyResource
       :<|> TagKeysPatchResource
       :<|> TagKeysGetResource
       :<|> TagKeysCreateResource
       :<|> TagKeysSetIAMPolicyResource
       :<|> TagKeysTestIAMPermissionsResource
       :<|> TagKeysDeleteResource
       :<|> LiensListResource
       :<|> LiensGetResource
       :<|> LiensCreateResource
       :<|> LiensDeleteResource
       :<|> TagBindingsListResource
       :<|> TagBindingsCreateResource
       :<|> TagBindingsDeleteResource
       :<|> OperationsGetResource
