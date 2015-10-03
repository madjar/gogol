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
-- Module      : Network.Google.Resource.Games.Rooms.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a room. For internal use by the Games SDK only. Calling this
-- method directly is unsupported.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesRoomsCreate@.
module Network.Google.Resource.Games.Rooms.Create
    (
    -- * REST Resource
      RoomsCreateResource

    -- * Creating a Request
    , roomsCreate'
    , RoomsCreate'

    -- * Request Lenses
    , rooQuotaUser
    , rooPrettyPrint
    , rooUserIP
    , rooKey
    , rooRoomCreateRequest
    , rooLanguage
    , rooOAuthToken
    , rooFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesRoomsCreate@ which the
-- 'RoomsCreate'' request conforms to.
type RoomsCreateResource =
     "rooms" :>
       "create" :>
         QueryParam "language" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] RoomCreateRequest :>
                           Post '[JSON] Room

-- | Create a room. For internal use by the Games SDK only. Calling this
-- method directly is unsupported.
--
-- /See:/ 'roomsCreate'' smart constructor.
data RoomsCreate' = RoomsCreate'
    { _rooQuotaUser         :: !(Maybe Text)
    , _rooPrettyPrint       :: !Bool
    , _rooUserIP            :: !(Maybe Text)
    , _rooKey               :: !(Maybe Key)
    , _rooRoomCreateRequest :: !RoomCreateRequest
    , _rooLanguage          :: !(Maybe Text)
    , _rooOAuthToken        :: !(Maybe OAuthToken)
    , _rooFields            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rooQuotaUser'
--
-- * 'rooPrettyPrint'
--
-- * 'rooUserIP'
--
-- * 'rooKey'
--
-- * 'rooRoomCreateRequest'
--
-- * 'rooLanguage'
--
-- * 'rooOAuthToken'
--
-- * 'rooFields'
roomsCreate'
    :: RoomCreateRequest -- ^ 'RoomCreateRequest'
    -> RoomsCreate'
roomsCreate' pRooRoomCreateRequest_ =
    RoomsCreate'
    { _rooQuotaUser = Nothing
    , _rooPrettyPrint = True
    , _rooUserIP = Nothing
    , _rooKey = Nothing
    , _rooRoomCreateRequest = pRooRoomCreateRequest_
    , _rooLanguage = Nothing
    , _rooOAuthToken = Nothing
    , _rooFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rooQuotaUser :: Lens' RoomsCreate' (Maybe Text)
rooQuotaUser
  = lens _rooQuotaUser (\ s a -> s{_rooQuotaUser = a})

-- | Returns response with indentations and line breaks.
rooPrettyPrint :: Lens' RoomsCreate' Bool
rooPrettyPrint
  = lens _rooPrettyPrint
      (\ s a -> s{_rooPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rooUserIP :: Lens' RoomsCreate' (Maybe Text)
rooUserIP
  = lens _rooUserIP (\ s a -> s{_rooUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rooKey :: Lens' RoomsCreate' (Maybe Key)
rooKey = lens _rooKey (\ s a -> s{_rooKey = a})

-- | Multipart request metadata.
rooRoomCreateRequest :: Lens' RoomsCreate' RoomCreateRequest
rooRoomCreateRequest
  = lens _rooRoomCreateRequest
      (\ s a -> s{_rooRoomCreateRequest = a})

-- | The preferred language to use for strings returned by this method.
rooLanguage :: Lens' RoomsCreate' (Maybe Text)
rooLanguage
  = lens _rooLanguage (\ s a -> s{_rooLanguage = a})

-- | OAuth 2.0 token for the current user.
rooOAuthToken :: Lens' RoomsCreate' (Maybe OAuthToken)
rooOAuthToken
  = lens _rooOAuthToken
      (\ s a -> s{_rooOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rooFields :: Lens' RoomsCreate' (Maybe Text)
rooFields
  = lens _rooFields (\ s a -> s{_rooFields = a})

instance GoogleAuth RoomsCreate' where
        authKey = rooKey . _Just
        authToken = rooOAuthToken . _Just

instance GoogleRequest RoomsCreate' where
        type Rs RoomsCreate' = Room
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u RoomsCreate'{..}
          = go _rooLanguage _rooQuotaUser
              (Just _rooPrettyPrint)
              _rooUserIP
              _rooFields
              _rooKey
              _rooOAuthToken
              (Just AltJSON)
              _rooRoomCreateRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RoomsCreateResource)
                      r
                      u