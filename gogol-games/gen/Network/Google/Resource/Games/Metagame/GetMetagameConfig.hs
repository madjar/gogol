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
-- Module      : Network.Google.Resource.Games.Metagame.GetMetagameConfig
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return the metagame configuration data for the calling application.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesMetagameGetMetagameConfig@.
module Network.Google.Resource.Games.Metagame.GetMetagameConfig
    (
    -- * REST Resource
      MetagameGetMetagameConfigResource

    -- * Creating a Request
    , metagameGetMetagameConfig'
    , MetagameGetMetagameConfig'

    -- * Request Lenses
    , mgmcQuotaUser
    , mgmcPrettyPrint
    , mgmcUserIP
    , mgmcKey
    , mgmcOAuthToken
    , mgmcFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesMetagameGetMetagameConfig@ which the
-- 'MetagameGetMetagameConfig'' request conforms to.
type MetagameGetMetagameConfigResource =
     "metagameConfig" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] MetagameConfig

-- | Return the metagame configuration data for the calling application.
--
-- /See:/ 'metagameGetMetagameConfig'' smart constructor.
data MetagameGetMetagameConfig' = MetagameGetMetagameConfig'
    { _mgmcQuotaUser   :: !(Maybe Text)
    , _mgmcPrettyPrint :: !Bool
    , _mgmcUserIP      :: !(Maybe Text)
    , _mgmcKey         :: !(Maybe Key)
    , _mgmcOAuthToken  :: !(Maybe OAuthToken)
    , _mgmcFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MetagameGetMetagameConfig'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mgmcQuotaUser'
--
-- * 'mgmcPrettyPrint'
--
-- * 'mgmcUserIP'
--
-- * 'mgmcKey'
--
-- * 'mgmcOAuthToken'
--
-- * 'mgmcFields'
metagameGetMetagameConfig'
    :: MetagameGetMetagameConfig'
metagameGetMetagameConfig' =
    MetagameGetMetagameConfig'
    { _mgmcQuotaUser = Nothing
    , _mgmcPrettyPrint = True
    , _mgmcUserIP = Nothing
    , _mgmcKey = Nothing
    , _mgmcOAuthToken = Nothing
    , _mgmcFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mgmcQuotaUser :: Lens' MetagameGetMetagameConfig' (Maybe Text)
mgmcQuotaUser
  = lens _mgmcQuotaUser
      (\ s a -> s{_mgmcQuotaUser = a})

-- | Returns response with indentations and line breaks.
mgmcPrettyPrint :: Lens' MetagameGetMetagameConfig' Bool
mgmcPrettyPrint
  = lens _mgmcPrettyPrint
      (\ s a -> s{_mgmcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mgmcUserIP :: Lens' MetagameGetMetagameConfig' (Maybe Text)
mgmcUserIP
  = lens _mgmcUserIP (\ s a -> s{_mgmcUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mgmcKey :: Lens' MetagameGetMetagameConfig' (Maybe Key)
mgmcKey = lens _mgmcKey (\ s a -> s{_mgmcKey = a})

-- | OAuth 2.0 token for the current user.
mgmcOAuthToken :: Lens' MetagameGetMetagameConfig' (Maybe OAuthToken)
mgmcOAuthToken
  = lens _mgmcOAuthToken
      (\ s a -> s{_mgmcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mgmcFields :: Lens' MetagameGetMetagameConfig' (Maybe Text)
mgmcFields
  = lens _mgmcFields (\ s a -> s{_mgmcFields = a})

instance GoogleAuth MetagameGetMetagameConfig' where
        authKey = mgmcKey . _Just
        authToken = mgmcOAuthToken . _Just

instance GoogleRequest MetagameGetMetagameConfig'
         where
        type Rs MetagameGetMetagameConfig' = MetagameConfig
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u MetagameGetMetagameConfig'{..}
          = go _mgmcQuotaUser (Just _mgmcPrettyPrint)
              _mgmcUserIP
              _mgmcFields
              _mgmcKey
              _mgmcOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MetagameGetMetagameConfigResource)
                      r
                      u