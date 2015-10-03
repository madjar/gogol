{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.InstanceGroupManagers.SetTargetPools
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Modifies the target pools to which all new instances in this group are
-- assigned. The target pools for existing instances in the group do not
-- change unless you recreate them.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstanceGroupManagersSetTargetPools@.
module Network.Google.Resource.Compute.InstanceGroupManagers.SetTargetPools
    (
    -- * REST Resource
      InstanceGroupManagersSetTargetPoolsResource

    -- * Creating a Request
    , instanceGroupManagersSetTargetPools'
    , InstanceGroupManagersSetTargetPools'

    -- * Request Lenses
    , igmstpQuotaUser
    , igmstpPrettyPrint
    , igmstpProject
    , igmstpInstanceGroupManager
    , igmstpUserIP
    , igmstpZone
    , igmstpKey
    , igmstpOAuthToken
    , igmstpInstanceGroupManagersSetTargetPoolsRequest
    , igmstpFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceGroupManagersSetTargetPools@ which the
-- 'InstanceGroupManagersSetTargetPools'' request conforms to.
type InstanceGroupManagersSetTargetPoolsResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instanceGroupManagers" :>
             Capture "instanceGroupManager" Text :>
               "setTargetPools" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON]
                                 InstanceGroupManagersSetTargetPoolsRequest
                                 :> Post '[JSON] Operation

-- | Modifies the target pools to which all new instances in this group are
-- assigned. The target pools for existing instances in the group do not
-- change unless you recreate them.
--
-- /See:/ 'instanceGroupManagersSetTargetPools'' smart constructor.
data InstanceGroupManagersSetTargetPools' = InstanceGroupManagersSetTargetPools'
    { _igmstpQuotaUser                                  :: !(Maybe Text)
    , _igmstpPrettyPrint                                :: !Bool
    , _igmstpProject                                    :: !Text
    , _igmstpInstanceGroupManager                       :: !Text
    , _igmstpUserIP                                     :: !(Maybe Text)
    , _igmstpZone                                       :: !Text
    , _igmstpKey                                        :: !(Maybe Key)
    , _igmstpOAuthToken                                 :: !(Maybe OAuthToken)
    , _igmstpInstanceGroupManagersSetTargetPoolsRequest :: !InstanceGroupManagersSetTargetPoolsRequest
    , _igmstpFields                                     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersSetTargetPools'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmstpQuotaUser'
--
-- * 'igmstpPrettyPrint'
--
-- * 'igmstpProject'
--
-- * 'igmstpInstanceGroupManager'
--
-- * 'igmstpUserIP'
--
-- * 'igmstpZone'
--
-- * 'igmstpKey'
--
-- * 'igmstpOAuthToken'
--
-- * 'igmstpInstanceGroupManagersSetTargetPoolsRequest'
--
-- * 'igmstpFields'
instanceGroupManagersSetTargetPools'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instanceGroupManager'
    -> Text -- ^ 'zone'
    -> InstanceGroupManagersSetTargetPoolsRequest -- ^ 'InstanceGroupManagersSetTargetPoolsRequest'
    -> InstanceGroupManagersSetTargetPools'
instanceGroupManagersSetTargetPools' pIgmstpProject_ pIgmstpInstanceGroupManager_ pIgmstpZone_ pIgmstpInstanceGroupManagersSetTargetPoolsRequest_ =
    InstanceGroupManagersSetTargetPools'
    { _igmstpQuotaUser = Nothing
    , _igmstpPrettyPrint = True
    , _igmstpProject = pIgmstpProject_
    , _igmstpInstanceGroupManager = pIgmstpInstanceGroupManager_
    , _igmstpUserIP = Nothing
    , _igmstpZone = pIgmstpZone_
    , _igmstpKey = Nothing
    , _igmstpOAuthToken = Nothing
    , _igmstpInstanceGroupManagersSetTargetPoolsRequest = pIgmstpInstanceGroupManagersSetTargetPoolsRequest_
    , _igmstpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igmstpQuotaUser :: Lens' InstanceGroupManagersSetTargetPools' (Maybe Text)
igmstpQuotaUser
  = lens _igmstpQuotaUser
      (\ s a -> s{_igmstpQuotaUser = a})

-- | Returns response with indentations and line breaks.
igmstpPrettyPrint :: Lens' InstanceGroupManagersSetTargetPools' Bool
igmstpPrettyPrint
  = lens _igmstpPrettyPrint
      (\ s a -> s{_igmstpPrettyPrint = a})

-- | The project ID for this request.
igmstpProject :: Lens' InstanceGroupManagersSetTargetPools' Text
igmstpProject
  = lens _igmstpProject
      (\ s a -> s{_igmstpProject = a})

-- | The name of the instance group manager.
igmstpInstanceGroupManager :: Lens' InstanceGroupManagersSetTargetPools' Text
igmstpInstanceGroupManager
  = lens _igmstpInstanceGroupManager
      (\ s a -> s{_igmstpInstanceGroupManager = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igmstpUserIP :: Lens' InstanceGroupManagersSetTargetPools' (Maybe Text)
igmstpUserIP
  = lens _igmstpUserIP (\ s a -> s{_igmstpUserIP = a})

-- | The URL of the zone where the managed instance group is located.
igmstpZone :: Lens' InstanceGroupManagersSetTargetPools' Text
igmstpZone
  = lens _igmstpZone (\ s a -> s{_igmstpZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igmstpKey :: Lens' InstanceGroupManagersSetTargetPools' (Maybe Key)
igmstpKey
  = lens _igmstpKey (\ s a -> s{_igmstpKey = a})

-- | OAuth 2.0 token for the current user.
igmstpOAuthToken :: Lens' InstanceGroupManagersSetTargetPools' (Maybe OAuthToken)
igmstpOAuthToken
  = lens _igmstpOAuthToken
      (\ s a -> s{_igmstpOAuthToken = a})

-- | Multipart request metadata.
igmstpInstanceGroupManagersSetTargetPoolsRequest :: Lens' InstanceGroupManagersSetTargetPools' InstanceGroupManagersSetTargetPoolsRequest
igmstpInstanceGroupManagersSetTargetPoolsRequest
  = lens
      _igmstpInstanceGroupManagersSetTargetPoolsRequest
      (\ s a ->
         s{_igmstpInstanceGroupManagersSetTargetPoolsRequest =
             a})

-- | Selector specifying which fields to include in a partial response.
igmstpFields :: Lens' InstanceGroupManagersSetTargetPools' (Maybe Text)
igmstpFields
  = lens _igmstpFields (\ s a -> s{_igmstpFields = a})

instance GoogleAuth
         InstanceGroupManagersSetTargetPools' where
        authKey = igmstpKey . _Just
        authToken = igmstpOAuthToken . _Just

instance GoogleRequest
         InstanceGroupManagersSetTargetPools' where
        type Rs InstanceGroupManagersSetTargetPools' =
             Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u
          InstanceGroupManagersSetTargetPools'{..}
          = go _igmstpProject _igmstpZone
              _igmstpInstanceGroupManager
              _igmstpQuotaUser
              (Just _igmstpPrettyPrint)
              _igmstpUserIP
              _igmstpFields
              _igmstpKey
              _igmstpOAuthToken
              (Just AltJSON)
              _igmstpInstanceGroupManagersSetTargetPoolsRequest
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy InstanceGroupManagersSetTargetPoolsResource)
                      r
                      u