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
-- Module      : Network.Google.Resource.Content.Settlementreports.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a settlement report from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.settlementreports.get@.
module Network.Google.Resource.Content.Settlementreports.Get
    (
    -- * REST Resource
      SettlementreportsGetResource

    -- * Creating a Request
    , settlementreportsGet
    , SettlementreportsGet

    -- * Request Lenses
    , sgXgafv
    , sgMerchantId
    , sgUploadProtocol
    , sgAccessToken
    , sgUploadType
    , sgSettlementId
    , sgCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.settlementreports.get@ method which the
-- 'SettlementreportsGet' request conforms to.
type SettlementreportsGetResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "settlementreports" :>
             Capture "settlementId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] SettlementReport

-- | Retrieves a settlement report from your Merchant Center account.
--
-- /See:/ 'settlementreportsGet' smart constructor.
data SettlementreportsGet =
  SettlementreportsGet'
    { _sgXgafv :: !(Maybe Xgafv)
    , _sgMerchantId :: !(Textual Word64)
    , _sgUploadProtocol :: !(Maybe Text)
    , _sgAccessToken :: !(Maybe Text)
    , _sgUploadType :: !(Maybe Text)
    , _sgSettlementId :: !Text
    , _sgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SettlementreportsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgXgafv'
--
-- * 'sgMerchantId'
--
-- * 'sgUploadProtocol'
--
-- * 'sgAccessToken'
--
-- * 'sgUploadType'
--
-- * 'sgSettlementId'
--
-- * 'sgCallback'
settlementreportsGet
    :: Word64 -- ^ 'sgMerchantId'
    -> Text -- ^ 'sgSettlementId'
    -> SettlementreportsGet
settlementreportsGet pSgMerchantId_ pSgSettlementId_ =
  SettlementreportsGet'
    { _sgXgafv = Nothing
    , _sgMerchantId = _Coerce # pSgMerchantId_
    , _sgUploadProtocol = Nothing
    , _sgAccessToken = Nothing
    , _sgUploadType = Nothing
    , _sgSettlementId = pSgSettlementId_
    , _sgCallback = Nothing
    }


-- | V1 error format.
sgXgafv :: Lens' SettlementreportsGet (Maybe Xgafv)
sgXgafv = lens _sgXgafv (\ s a -> s{_sgXgafv = a})

-- | The Merchant Center account of the settlement report.
sgMerchantId :: Lens' SettlementreportsGet Word64
sgMerchantId
  = lens _sgMerchantId (\ s a -> s{_sgMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sgUploadProtocol :: Lens' SettlementreportsGet (Maybe Text)
sgUploadProtocol
  = lens _sgUploadProtocol
      (\ s a -> s{_sgUploadProtocol = a})

-- | OAuth access token.
sgAccessToken :: Lens' SettlementreportsGet (Maybe Text)
sgAccessToken
  = lens _sgAccessToken
      (\ s a -> s{_sgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sgUploadType :: Lens' SettlementreportsGet (Maybe Text)
sgUploadType
  = lens _sgUploadType (\ s a -> s{_sgUploadType = a})

-- | The Google-provided ID of the settlement.
sgSettlementId :: Lens' SettlementreportsGet Text
sgSettlementId
  = lens _sgSettlementId
      (\ s a -> s{_sgSettlementId = a})

-- | JSONP
sgCallback :: Lens' SettlementreportsGet (Maybe Text)
sgCallback
  = lens _sgCallback (\ s a -> s{_sgCallback = a})

instance GoogleRequest SettlementreportsGet where
        type Rs SettlementreportsGet = SettlementReport
        type Scopes SettlementreportsGet =
             '["https://www.googleapis.com/auth/content"]
        requestClient SettlementreportsGet'{..}
          = go _sgMerchantId _sgSettlementId _sgXgafv
              _sgUploadProtocol
              _sgAccessToken
              _sgUploadType
              _sgCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy SettlementreportsGetResource)
                      mempty
