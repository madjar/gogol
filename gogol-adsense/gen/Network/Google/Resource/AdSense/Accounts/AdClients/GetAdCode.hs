{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.AdSense.Accounts.AdClients.GetAdCode
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get Auto ad code for a given ad client.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.accounts.adclients.getAdCode@.
module Network.Google.Resource.AdSense.Accounts.AdClients.GetAdCode
    (
    -- * REST Resource
      AccountsAdClientsGetAdCodeResource

    -- * Creating a Request
    , accountsAdClientsGetAdCode
    , AccountsAdClientsGetAdCode

    -- * Request Lenses
    , aacgacAdClientId
    , aacgacTagPartner
    , aacgacAccountId
    ) where

import Network.Google.AdSense.Types
import Network.Google.Prelude

-- | A resource alias for @adsense.accounts.adclients.getAdCode@ method which the
-- 'AccountsAdClientsGetAdCode' request conforms to.
type AccountsAdClientsGetAdCodeResource =
     "adsense" :>
       "v1.4" :>
         "accounts" :>
           Capture "accountId" Text :>
             "adclients" :>
               Capture "adClientId" Text :>
                 "adcode" :>
                   QueryParam "tagPartner" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] AdCode

-- | Get Auto ad code for a given ad client.
--
-- /See:/ 'accountsAdClientsGetAdCode' smart constructor.
data AccountsAdClientsGetAdCode =
  AccountsAdClientsGetAdCode'
    { _aacgacAdClientId :: !Text
    , _aacgacTagPartner :: !(Maybe Text)
    , _aacgacAccountId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsAdClientsGetAdCode' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aacgacAdClientId'
--
-- * 'aacgacTagPartner'
--
-- * 'aacgacAccountId'
accountsAdClientsGetAdCode
    :: Text -- ^ 'aacgacAdClientId'
    -> Text -- ^ 'aacgacAccountId'
    -> AccountsAdClientsGetAdCode
accountsAdClientsGetAdCode pAacgacAdClientId_ pAacgacAccountId_ =
  AccountsAdClientsGetAdCode'
    { _aacgacAdClientId = pAacgacAdClientId_
    , _aacgacTagPartner = Nothing
    , _aacgacAccountId = pAacgacAccountId_
    }


-- | Ad client to get the code for.
aacgacAdClientId :: Lens' AccountsAdClientsGetAdCode Text
aacgacAdClientId
  = lens _aacgacAdClientId
      (\ s a -> s{_aacgacAdClientId = a})

-- | Tag partner to include in the ad code snippet.
aacgacTagPartner :: Lens' AccountsAdClientsGetAdCode (Maybe Text)
aacgacTagPartner
  = lens _aacgacTagPartner
      (\ s a -> s{_aacgacTagPartner = a})

-- | Account which contains the ad client.
aacgacAccountId :: Lens' AccountsAdClientsGetAdCode Text
aacgacAccountId
  = lens _aacgacAccountId
      (\ s a -> s{_aacgacAccountId = a})

instance GoogleRequest AccountsAdClientsGetAdCode
         where
        type Rs AccountsAdClientsGetAdCode = AdCode
        type Scopes AccountsAdClientsGetAdCode =
             '["https://www.googleapis.com/auth/adsense",
               "https://www.googleapis.com/auth/adsense.readonly"]
        requestClient AccountsAdClientsGetAdCode'{..}
          = go _aacgacAccountId _aacgacAdClientId
              _aacgacTagPartner
              (Just AltJSON)
              adSenseService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsAdClientsGetAdCodeResource)
                      mempty
