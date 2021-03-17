{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Spanner.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Spanner.Types
    (
    -- * Service Configuration
      spannerService

    -- * OAuth Scopes
    , cloudPlatformScope
    , spannerDataScope
    , spannerAdminScope

    -- * ExecuteSQLRequestParams
    , ExecuteSQLRequestParams
    , executeSQLRequestParams
    , esqlrpAddtional

    -- * RestoreDatabaseRequest
    , RestoreDatabaseRequest
    , restoreDatabaseRequest
    , rdrBackup
    , rdrEncryptionConfig
    , rdrDatabaseId

    -- * InstanceLabels
    , InstanceLabels
    , instanceLabels
    , ilAddtional

    -- * CreateDatabaseMetadata
    , CreateDatabaseMetadata
    , createDatabaseMetadata
    , cdmDatabase

    -- * TransactionOptions
    , TransactionOptions
    , transactionOptions
    , toReadWrite
    , toPartitionedDml
    , toReadOnly

    -- * ListBackupsResponse
    , ListBackupsResponse
    , listBackupsResponse
    , lbrNextPageToken
    , lbrBackups

    -- * GetDatabaseDdlResponse
    , GetDatabaseDdlResponse
    , getDatabaseDdlResponse
    , gddrStatements

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * CreateInstanceRequest
    , CreateInstanceRequest
    , createInstanceRequest
    , cirInstanceId
    , cirInstance

    -- * BatchCreateSessionsRequest
    , BatchCreateSessionsRequest
    , batchCreateSessionsRequest
    , bcsrSessionCount
    , bcsrSessionTemplate

    -- * ReadWrite
    , ReadWrite
    , readWrite

    -- * RollbackRequest
    , RollbackRequest
    , rollbackRequest
    , rrTransactionId

    -- * ListDatabasesResponse
    , ListDatabasesResponse
    , listDatabasesResponse
    , ldrNextPageToken
    , ldrDatabases

    -- * Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- * ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- * GetIAMPolicyRequest
    , GetIAMPolicyRequest
    , getIAMPolicyRequest
    , giprOptions

    -- * ChildLink
    , ChildLink
    , childLink
    , clChildIndex
    , clVariable
    , clType

    -- * BeginTransactionRequest
    , BeginTransactionRequest
    , beginTransactionRequest
    , btrOptions

    -- * ListDatabaseOperationsResponse
    , ListDatabaseOperationsResponse
    , listDatabaseOperationsResponse
    , ldorNextPageToken
    , ldorOperations

    -- * PartitionOptions
    , PartitionOptions
    , partitionOptions
    , poMaxPartitions
    , poPartitionSizeBytes

    -- * ResultSetStats
    , ResultSetStats
    , resultSetStats
    , rssRowCountExact
    , rssRowCountLowerBound
    , rssQueryStats
    , rssQueryPlan

    -- * Field
    , Field
    , field
    , fName
    , fType

    -- * QueryOptions
    , QueryOptions
    , queryOptions
    , qoOptimizerVersion

    -- * TypeCode
    , TypeCode (..)

    -- * Write
    , Write
    , write
    , wValues
    , wColumns
    , wTable

    -- * KeySet
    , KeySet
    , keySet
    , ksAll
    , ksRanges
    , ksKeys

    -- * Statement
    , Statement
    , statement
    , sParamTypes
    , sParams
    , sSQL

    -- * PartitionQueryRequestParams
    , PartitionQueryRequestParams
    , partitionQueryRequestParams
    , pqrpAddtional

    -- * ExecuteBatchDmlResponse
    , ExecuteBatchDmlResponse
    , executeBatchDmlResponse
    , ebdrStatus
    , ebdrResultSets

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * UpdateDatabaseDdlMetadata
    , UpdateDatabaseDdlMetadata
    , updateDatabaseDdlMetadata
    , uddmCommitTimestamps
    , uddmThrottled
    , uddmDatabase
    , uddmStatements

    -- * Empty
    , Empty
    , empty

    -- * Database
    , Database
    , database
    , dState
    , dEarliestVersionTime
    , dName
    , dEncryptionConfig
    , dVersionRetentionPeriod
    , dRestoreInfo
    , dEncryptionInfo
    , dCreateTime

    -- * CommitStats
    , CommitStats
    , commitStats
    , csMutationCount

    -- * OperationProgress
    , OperationProgress
    , operationProgress
    , opStartTime
    , opProgressPercent
    , opEndTime

    -- * RestoreInfoSourceType
    , RestoreInfoSourceType (..)

    -- * PlanNode
    , PlanNode
    , planNode
    , pnKind
    , pnShortRepresentation
    , pnMetadata
    , pnDisplayName
    , pnExecutionStats
    , pnIndex
    , pnChildLinks

    -- * PlanNodeKind
    , PlanNodeKind (..)

    -- * CreateSessionRequest
    , CreateSessionRequest
    , createSessionRequest
    , csrSession

    -- * ShortRepresentation
    , ShortRepresentation
    , shortRepresentation
    , srSubqueries
    , srDescription

    -- * ShortRepresentationSubqueries
    , ShortRepresentationSubqueries
    , shortRepresentationSubqueries
    , srsAddtional

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * PlanNodeMetadata
    , PlanNodeMetadata
    , planNodeMetadata
    , pnmAddtional

    -- * EncryptionInfoEncryptionType
    , EncryptionInfoEncryptionType (..)

    -- * ReplicaInfoType
    , ReplicaInfoType (..)

    -- * GetPolicyOptions
    , GetPolicyOptions
    , getPolicyOptions
    , gpoRequestedPolicyVersion

    -- * PartitionedDml
    , PartitionedDml
    , partitionedDml

    -- * Backup
    , Backup
    , backup
    , bSizeBytes
    , bState
    , bDatabase
    , bName
    , bVersionTime
    , bReferencingDatabases
    , bExpireTime
    , bEncryptionInfo
    , bCreateTime

    -- * SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprPolicy

    -- * StatementParamTypes
    , StatementParamTypes
    , statementParamTypes
    , sptAddtional

    -- * UpdateDatabaseDdlRequest
    , UpdateDatabaseDdlRequest
    , updateDatabaseDdlRequest
    , uddrOperationId
    , uddrStatements

    -- * Mutation
    , Mutation
    , mutation
    , mReplace
    , mInsert
    , mInsertOrUpdate
    , mDelete
    , mUpdate

    -- * PartitionReadRequest
    , PartitionReadRequest
    , partitionReadRequest
    , prrPartitionOptions
    , prrKeySet
    , prrTransaction
    , prrColumns
    , prrIndex
    , prrTable

    -- * ExecuteSQLRequestQueryMode
    , ExecuteSQLRequestQueryMode (..)

    -- * ExecuteSQLRequestParamTypes
    , ExecuteSQLRequestParamTypes
    , executeSQLRequestParamTypes
    , esqlrptAddtional

    -- * Transaction
    , Transaction
    , transaction
    , tReadTimestamp
    , tId

    -- * ListSessionsResponse
    , ListSessionsResponse
    , listSessionsResponse
    , lsrNextPageToken
    , lsrSessions

    -- * ExecuteBatchDmlRequest
    , ExecuteBatchDmlRequest
    , executeBatchDmlRequest
    , ebdrSeqno
    , ebdrTransaction
    , ebdrStatements

    -- * RestoreDatabaseEncryptionConfigEncryptionType
    , RestoreDatabaseEncryptionConfigEncryptionType (..)

    -- * StructType
    , StructType
    , structType
    , stFields

    -- * CreateBackupMetadata
    , CreateBackupMetadata
    , createBackupMetadata
    , cbmProgress
    , cbmDatabase
    , cbmCancelTime
    , cbmName

    -- * ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType
    , ProjectsInstancesBackupsCreateEncryptionConfigEncryptionType (..)

    -- * DatabaseState
    , DatabaseState (..)

    -- * Xgafv
    , Xgafv (..)

    -- * CommitResponse
    , CommitResponse
    , commitResponse
    , crCommitTimestamp
    , crCommitStats

    -- * Partition
    , Partition
    , partition
    , pPartitionToken

    -- * TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- * OptimizeRestoredDatabaseMetadata
    , OptimizeRestoredDatabaseMetadata
    , optimizeRestoredDatabaseMetadata
    , ordmProgress
    , ordmName

    -- * PartitionQueryRequestParamTypes
    , PartitionQueryRequestParamTypes
    , partitionQueryRequestParamTypes
    , pqrptAddtional

    -- * RestoreDatabaseMetadataSourceType
    , RestoreDatabaseMetadataSourceType (..)

    -- * EncryptionConfig
    , EncryptionConfig
    , encryptionConfig
    , ecKmsKeyName

    -- * UpdateInstanceMetadata
    , UpdateInstanceMetadata
    , updateInstanceMetadata
    , uimStartTime
    , uimCancelTime
    , uimEndTime
    , uimInstance

    -- * PlanNodeExecutionStats
    , PlanNodeExecutionStats
    , planNodeExecutionStats
    , pnesAddtional

    -- * TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- * RestoreDatabaseMetadata
    , RestoreDatabaseMetadata
    , restoreDatabaseMetadata
    , rdmSourceType
    , rdmProgress
    , rdmCancelTime
    , rdmName
    , rdmBackupInfo
    , rdmOptimizeDatabaseOperationName

    -- * PartialResultSet
    , PartialResultSet
    , partialResultSet
    , prsResumeToken
    , prsValues
    , prsStats
    , prsMetadata
    , prsChunkedValue

    -- * RestoreDatabaseEncryptionConfig
    , RestoreDatabaseEncryptionConfig
    , restoreDatabaseEncryptionConfig
    , rdecEncryptionType
    , rdecKmsKeyName

    -- * BackupInfo
    , BackupInfo
    , backupInfo
    , biBackup
    , biVersionTime
    , biSourceDatabase
    , biCreateTime

    -- * Policy
    , Policy
    , policy
    , pEtag
    , pVersion
    , pBindings

    -- * CreateDatabaseRequest
    , CreateDatabaseRequest
    , createDatabaseRequest
    , cdrExtraStatements
    , cdrEncryptionConfig
    , cdrCreateStatement

    -- * ExecuteSQLRequest
    , ExecuteSQLRequest
    , executeSQLRequest
    , esqlrParamTypes
    , esqlrQueryOptions
    , esqlrResumeToken
    , esqlrSeqno
    , esqlrParams
    , esqlrTransaction
    , esqlrSQL
    , esqlrPartitionToken
    , esqlrQueryMode

    -- * CommitRequest
    , CommitRequest
    , commitRequest
    , crReturnCommitStats
    , crMutations
    , crTransactionId
    , crSingleUseTransaction

    -- * Type
    , Type
    , type'
    , tArrayElementType
    , tStructType
    , tCode

    -- * CreateInstanceMetadata
    , CreateInstanceMetadata
    , createInstanceMetadata
    , cimStartTime
    , cimCancelTime
    , cimEndTime
    , cimInstance

    -- * KeyRange
    , KeyRange
    , keyRange
    , krStartClosed
    , krEndOpen
    , krStartOpen
    , krEndClosed

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- * InstanceConfig
    , InstanceConfig
    , instanceConfig
    , icName
    , icDisplayName
    , icReplicas

    -- * ResultSet
    , ResultSet
    , resultSet
    , rsStats
    , rsRows
    , rsMetadata

    -- * SessionLabels
    , SessionLabels
    , sessionLabels
    , slAddtional

    -- * ListInstancesResponse
    , ListInstancesResponse
    , listInstancesResponse
    , lirNextPageToken
    , lirUnreachable
    , lirInstances

    -- * ReadRequest
    , ReadRequest
    , readRequest
    , rrResumeToken
    , rrKeySet
    , rrTransaction
    , rrColumns
    , rrLimit
    , rrIndex
    , rrTable
    , rrPartitionToken

    -- * ReplicaInfo
    , ReplicaInfo
    , replicaInfo
    , riDefaultLeaderLocation
    , riLocation
    , riType

    -- * InstanceState
    , InstanceState (..)

    -- * Session
    , Session
    , session
    , sApproximateLastUseTime
    , sName
    , sLabels
    , sCreateTime

    -- * BatchCreateSessionsResponse
    , BatchCreateSessionsResponse
    , batchCreateSessionsResponse
    , bcsrSession

    -- * RestoreInfo
    , RestoreInfo
    , restoreInfo
    , riSourceType
    , riBackupInfo

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * ReadOnly
    , ReadOnly
    , readOnly
    , roReadTimestamp
    , roExactStaleness
    , roMaxStaleness
    , roStrong
    , roMinReadTimestamp
    , roReturnReadTimestamp

    -- * ResultSetMetadata
    , ResultSetMetadata
    , resultSetMetadata
    , rsmRowType
    , rsmTransaction

    -- * Delete'
    , Delete'
    , delete'
    , dKeySet
    , dTable

    -- * UpdateInstanceRequest
    , UpdateInstanceRequest
    , updateInstanceRequest
    , uirFieldMask
    , uirInstance

    -- * ListBackupOperationsResponse
    , ListBackupOperationsResponse
    , listBackupOperationsResponse
    , lborNextPageToken
    , lborOperations

    -- * BackupState
    , BackupState (..)

    -- * ResultSetStatsQueryStats
    , ResultSetStatsQueryStats
    , resultSetStatsQueryStats
    , rssqsAddtional

    -- * StatementParams
    , StatementParams
    , statementParams
    , spAddtional

    -- * TransactionSelector
    , TransactionSelector
    , transactionSelector
    , tsBegin
    , tsId
    , tsSingleUse

    -- * ListInstanceConfigsResponse
    , ListInstanceConfigsResponse
    , listInstanceConfigsResponse
    , licrNextPageToken
    , licrInstanceConfigs

    -- * EncryptionInfo
    , EncryptionInfo
    , encryptionInfo
    , eiEncryptionType
    , eiKmsKeyVersion
    , eiEncryptionStatus

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition

    -- * PartitionResponse
    , PartitionResponse
    , partitionResponse
    , prPartitions
    , prTransaction

    -- * PartitionQueryRequest
    , PartitionQueryRequest
    , partitionQueryRequest
    , pqrParamTypes
    , pqrPartitionOptions
    , pqrParams
    , pqrTransaction
    , pqrSQL

    -- * QueryPlan
    , QueryPlan
    , queryPlan
    , qpPlanNodes

    -- * Instance
    , Instance
    , instance'
    , iState
    , iConfig
    , iNodeCount
    , iEndpointURIs
    , iName
    , iDisplayName
    , iLabels
    ) where

import Network.Google.Prelude
import Network.Google.Spanner.Types.Product
import Network.Google.Spanner.Types.Sum

-- | Default request referring to version 'v1' of the Cloud Spanner API. This contains the host and root path used as a starting point for constructing service requests.
spannerService :: ServiceConfig
spannerService
  = defaultService (ServiceId "spanner:v1")
      "spanner.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy

-- | View and manage the contents of your Spanner databases
spannerDataScope :: Proxy '["https://www.googleapis.com/auth/spanner.data"]
spannerDataScope = Proxy

-- | Administer your Spanner databases
spannerAdminScope :: Proxy '["https://www.googleapis.com/auth/spanner.admin"]
spannerAdminScope = Proxy
