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
-- Module      : Network.Google.Resource.Calendar.ACL.Watch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Watch for changes to ACL resources.
--
-- /See:/ <https://developers.google.com/google-apps/calendar/firstapp Calendar API Reference> for @CalendarACLWatch@.
module Network.Google.Resource.Calendar.ACL.Watch
    (
    -- * REST Resource
      ACLWatchResource

    -- * Creating a Request
    , aclWatch'
    , ACLWatch'

    -- * Request Lenses
    , awSyncToken
    , awQuotaUser
    , awCalendarId
    , awPrettyPrint
    , awUserIP
    , awChannel
    , awShowDeleted
    , awKey
    , awPageToken
    , awOAuthToken
    , awMaxResults
    , awFields
    ) where

import           Network.Google.AppsCalendar.Types
import           Network.Google.Prelude

-- | A resource alias for @CalendarACLWatch@ which the
-- 'ACLWatch'' request conforms to.
type ACLWatchResource =
     "calendars" :>
       Capture "calendarId" Text :>
         "acl" :>
           "watch" :>
             QueryParam "maxResults" Int32 :>
               QueryParam "pageToken" Text :>
                 QueryParam "showDeleted" Bool :>
                   QueryParam "syncToken" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" Key :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] Channel :>
                                     Post '[JSON] Channel

-- | Watch for changes to ACL resources.
--
-- /See:/ 'aclWatch'' smart constructor.
data ACLWatch' = ACLWatch'
    { _awSyncToken   :: !(Maybe Text)
    , _awQuotaUser   :: !(Maybe Text)
    , _awCalendarId  :: !Text
    , _awPrettyPrint :: !Bool
    , _awUserIP      :: !(Maybe Text)
    , _awChannel     :: !Channel
    , _awShowDeleted :: !(Maybe Bool)
    , _awKey         :: !(Maybe Key)
    , _awPageToken   :: !(Maybe Text)
    , _awOAuthToken  :: !(Maybe OAuthToken)
    , _awMaxResults  :: !(Maybe Int32)
    , _awFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ACLWatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'awSyncToken'
--
-- * 'awQuotaUser'
--
-- * 'awCalendarId'
--
-- * 'awPrettyPrint'
--
-- * 'awUserIP'
--
-- * 'awChannel'
--
-- * 'awShowDeleted'
--
-- * 'awKey'
--
-- * 'awPageToken'
--
-- * 'awOAuthToken'
--
-- * 'awMaxResults'
--
-- * 'awFields'
aclWatch'
    :: Text -- ^ 'calendarId'
    -> Channel -- ^ 'Channel'
    -> ACLWatch'
aclWatch' pAwCalendarId_ pAwChannel_ =
    ACLWatch'
    { _awSyncToken = Nothing
    , _awQuotaUser = Nothing
    , _awCalendarId = pAwCalendarId_
    , _awPrettyPrint = True
    , _awUserIP = Nothing
    , _awChannel = pAwChannel_
    , _awShowDeleted = Nothing
    , _awKey = Nothing
    , _awPageToken = Nothing
    , _awOAuthToken = Nothing
    , _awMaxResults = Nothing
    , _awFields = Nothing
    }

-- | Token obtained from the nextSyncToken field returned on the last page of
-- results from the previous list request. It makes the result of this list
-- request contain only entries that have changed since then. All entries
-- deleted since the previous list request will always be in the result set
-- and it is not allowed to set showDeleted to False. If the syncToken
-- expires, the server will respond with a 410 GONE response code and the
-- client should clear its storage and perform a full synchronization
-- without any syncToken. Learn more about incremental synchronization.
-- Optional. The default is to return all entries.
awSyncToken :: Lens' ACLWatch' (Maybe Text)
awSyncToken
  = lens _awSyncToken (\ s a -> s{_awSyncToken = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
awQuotaUser :: Lens' ACLWatch' (Maybe Text)
awQuotaUser
  = lens _awQuotaUser (\ s a -> s{_awQuotaUser = a})

-- | Calendar identifier. To retrieve calendar IDs call the calendarList.list
-- method. If you want to access the primary calendar of the currently
-- logged in user, use the \"primary\" keyword.
awCalendarId :: Lens' ACLWatch' Text
awCalendarId
  = lens _awCalendarId (\ s a -> s{_awCalendarId = a})

-- | Returns response with indentations and line breaks.
awPrettyPrint :: Lens' ACLWatch' Bool
awPrettyPrint
  = lens _awPrettyPrint
      (\ s a -> s{_awPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
awUserIP :: Lens' ACLWatch' (Maybe Text)
awUserIP = lens _awUserIP (\ s a -> s{_awUserIP = a})

-- | Multipart request metadata.
awChannel :: Lens' ACLWatch' Channel
awChannel
  = lens _awChannel (\ s a -> s{_awChannel = a})

-- | Whether to include deleted ACLs in the result. Deleted ACLs are
-- represented by role equal to \"none\". Deleted ACLs will always be
-- included if syncToken is provided. Optional. The default is False.
awShowDeleted :: Lens' ACLWatch' (Maybe Bool)
awShowDeleted
  = lens _awShowDeleted
      (\ s a -> s{_awShowDeleted = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
awKey :: Lens' ACLWatch' (Maybe Key)
awKey = lens _awKey (\ s a -> s{_awKey = a})

-- | Token specifying which result page to return. Optional.
awPageToken :: Lens' ACLWatch' (Maybe Text)
awPageToken
  = lens _awPageToken (\ s a -> s{_awPageToken = a})

-- | OAuth 2.0 token for the current user.
awOAuthToken :: Lens' ACLWatch' (Maybe OAuthToken)
awOAuthToken
  = lens _awOAuthToken (\ s a -> s{_awOAuthToken = a})

-- | Maximum number of entries returned on one result page. By default the
-- value is 100 entries. The page size can never be larger than 250
-- entries. Optional.
awMaxResults :: Lens' ACLWatch' (Maybe Int32)
awMaxResults
  = lens _awMaxResults (\ s a -> s{_awMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
awFields :: Lens' ACLWatch' (Maybe Text)
awFields = lens _awFields (\ s a -> s{_awFields = a})

instance GoogleAuth ACLWatch' where
        authKey = awKey . _Just
        authToken = awOAuthToken . _Just

instance GoogleRequest ACLWatch' where
        type Rs ACLWatch' = Channel
        request = requestWithRoute defReq appsCalendarURL
        requestWithRoute r u ACLWatch'{..}
          = go _awMaxResults _awPageToken _awShowDeleted
              _awSyncToken
              _awCalendarId
              _awQuotaUser
              (Just _awPrettyPrint)
              _awUserIP
              _awFields
              _awKey
              _awOAuthToken
              (Just AltJSON)
              _awChannel
          where go
                  = clientWithRoute (Proxy :: Proxy ACLWatchResource) r
                      u