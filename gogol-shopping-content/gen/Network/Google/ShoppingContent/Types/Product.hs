{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ShoppingContent.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ShoppingContent.Types.Product where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types.Sum

--
-- /See:/ 'ordersAcknowledgeRequest' smart constructor.
newtype OrdersAcknowledgeRequest =
  OrdersAcknowledgeRequest'
    { _oarOperationId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersAcknowledgeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oarOperationId'
ordersAcknowledgeRequest
    :: OrdersAcknowledgeRequest
ordersAcknowledgeRequest = OrdersAcknowledgeRequest' {_oarOperationId = Nothing}


-- | The ID of the operation. Unique across all operations for a given order.
oarOperationId :: Lens' OrdersAcknowledgeRequest (Maybe Text)
oarOperationId
  = lens _oarOperationId
      (\ s a -> s{_oarOperationId = a})

instance FromJSON OrdersAcknowledgeRequest where
        parseJSON
          = withObject "OrdersAcknowledgeRequest"
              (\ o ->
                 OrdersAcknowledgeRequest' <$> (o .:? "operationId"))

instance ToJSON OrdersAcknowledgeRequest where
        toJSON OrdersAcknowledgeRequest'{..}
          = object
              (catMaybes [("operationId" .=) <$> _oarOperationId])

-- | The tax settings of a merchant account. All methods require the admin
-- role.
--
-- /See:/ 'accountTax' smart constructor.
data AccountTax =
  AccountTax'
    { _atRules :: !(Maybe [AccountTaxTaxRule])
    , _atKind :: !(Maybe Text)
    , _atAccountId :: !(Maybe (Textual Word64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountTax' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atRules'
--
-- * 'atKind'
--
-- * 'atAccountId'
accountTax
    :: AccountTax
accountTax =
  AccountTax' {_atRules = Nothing, _atKind = Nothing, _atAccountId = Nothing}


-- | Tax rules. Updating the tax rules will enable US taxes (not reversible).
-- Defining no rules is equivalent to not charging tax at all.
atRules :: Lens' AccountTax [AccountTaxTaxRule]
atRules
  = lens _atRules (\ s a -> s{_atRules = a}) . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#accountTax\".
atKind :: Lens' AccountTax (Maybe Text)
atKind = lens _atKind (\ s a -> s{_atKind = a})

-- | Required. The ID of the account to which these account tax settings
-- belong.
atAccountId :: Lens' AccountTax (Maybe Word64)
atAccountId
  = lens _atAccountId (\ s a -> s{_atAccountId = a}) .
      mapping _Coerce

instance FromJSON AccountTax where
        parseJSON
          = withObject "AccountTax"
              (\ o ->
                 AccountTax' <$>
                   (o .:? "rules" .!= mempty) <*> (o .:? "kind") <*>
                     (o .:? "accountId"))

instance ToJSON AccountTax where
        toJSON AccountTax'{..}
          = object
              (catMaybes
                 [("rules" .=) <$> _atRules, ("kind" .=) <$> _atKind,
                  ("accountId" .=) <$> _atAccountId])

--
-- /See:/ 'orderinvoicesCreateRefundInvoiceResponse' smart constructor.
data OrderinvoicesCreateRefundInvoiceResponse =
  OrderinvoicesCreateRefundInvoiceResponse'
    { _ocrirKind :: !(Maybe Text)
    , _ocrirExecutionStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderinvoicesCreateRefundInvoiceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocrirKind'
--
-- * 'ocrirExecutionStatus'
orderinvoicesCreateRefundInvoiceResponse
    :: OrderinvoicesCreateRefundInvoiceResponse
orderinvoicesCreateRefundInvoiceResponse =
  OrderinvoicesCreateRefundInvoiceResponse'
    {_ocrirKind = Nothing, _ocrirExecutionStatus = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#orderinvoicesCreateRefundInvoiceResponse\".
ocrirKind :: Lens' OrderinvoicesCreateRefundInvoiceResponse (Maybe Text)
ocrirKind
  = lens _ocrirKind (\ s a -> s{_ocrirKind = a})

-- | The status of the execution. Acceptable values are: - \"\`duplicate\`\"
-- - \"\`executed\`\"
ocrirExecutionStatus :: Lens' OrderinvoicesCreateRefundInvoiceResponse (Maybe Text)
ocrirExecutionStatus
  = lens _ocrirExecutionStatus
      (\ s a -> s{_ocrirExecutionStatus = a})

instance FromJSON
           OrderinvoicesCreateRefundInvoiceResponse
         where
        parseJSON
          = withObject
              "OrderinvoicesCreateRefundInvoiceResponse"
              (\ o ->
                 OrderinvoicesCreateRefundInvoiceResponse' <$>
                   (o .:? "kind") <*> (o .:? "executionStatus"))

instance ToJSON
           OrderinvoicesCreateRefundInvoiceResponse
         where
        toJSON OrderinvoicesCreateRefundInvoiceResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _ocrirKind,
                  ("executionStatus" .=) <$> _ocrirExecutionStatus])

--
-- /See:/ 'ordersUpdateMerchantOrderIdRequest' smart constructor.
data OrdersUpdateMerchantOrderIdRequest =
  OrdersUpdateMerchantOrderIdRequest'
    { _oumoirMerchantOrderId :: !(Maybe Text)
    , _oumoirOperationId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersUpdateMerchantOrderIdRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oumoirMerchantOrderId'
--
-- * 'oumoirOperationId'
ordersUpdateMerchantOrderIdRequest
    :: OrdersUpdateMerchantOrderIdRequest
ordersUpdateMerchantOrderIdRequest =
  OrdersUpdateMerchantOrderIdRequest'
    {_oumoirMerchantOrderId = Nothing, _oumoirOperationId = Nothing}


-- | The merchant order id to be assigned to the order. Must be unique per
-- merchant.
oumoirMerchantOrderId :: Lens' OrdersUpdateMerchantOrderIdRequest (Maybe Text)
oumoirMerchantOrderId
  = lens _oumoirMerchantOrderId
      (\ s a -> s{_oumoirMerchantOrderId = a})

-- | The ID of the operation. Unique across all operations for a given order.
oumoirOperationId :: Lens' OrdersUpdateMerchantOrderIdRequest (Maybe Text)
oumoirOperationId
  = lens _oumoirOperationId
      (\ s a -> s{_oumoirOperationId = a})

instance FromJSON OrdersUpdateMerchantOrderIdRequest
         where
        parseJSON
          = withObject "OrdersUpdateMerchantOrderIdRequest"
              (\ o ->
                 OrdersUpdateMerchantOrderIdRequest' <$>
                   (o .:? "merchantOrderId") <*> (o .:? "operationId"))

instance ToJSON OrdersUpdateMerchantOrderIdRequest
         where
        toJSON OrdersUpdateMerchantOrderIdRequest'{..}
          = object
              (catMaybes
                 [("merchantOrderId" .=) <$> _oumoirMerchantOrderId,
                  ("operationId" .=) <$> _oumoirOperationId])

--
-- /See:/ 'returnpolicyCustomBatchRequest' smart constructor.
newtype ReturnpolicyCustomBatchRequest =
  ReturnpolicyCustomBatchRequest'
    { _rcbrEntries :: Maybe [ReturnpolicyCustomBatchRequestEntry]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReturnpolicyCustomBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcbrEntries'
returnpolicyCustomBatchRequest
    :: ReturnpolicyCustomBatchRequest
returnpolicyCustomBatchRequest =
  ReturnpolicyCustomBatchRequest' {_rcbrEntries = Nothing}


-- | The request entries to be processed in the batch.
rcbrEntries :: Lens' ReturnpolicyCustomBatchRequest [ReturnpolicyCustomBatchRequestEntry]
rcbrEntries
  = lens _rcbrEntries (\ s a -> s{_rcbrEntries = a}) .
      _Default
      . _Coerce

instance FromJSON ReturnpolicyCustomBatchRequest
         where
        parseJSON
          = withObject "ReturnpolicyCustomBatchRequest"
              (\ o ->
                 ReturnpolicyCustomBatchRequest' <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON ReturnpolicyCustomBatchRequest where
        toJSON ReturnpolicyCustomBatchRequest'{..}
          = object
              (catMaybes [("entries" .=) <$> _rcbrEntries])

--
-- /See:/ 'orderreturnsAcknowledgeResponse' smart constructor.
data OrderreturnsAcknowledgeResponse =
  OrderreturnsAcknowledgeResponse'
    { _oarKind :: !(Maybe Text)
    , _oarExecutionStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderreturnsAcknowledgeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oarKind'
--
-- * 'oarExecutionStatus'
orderreturnsAcknowledgeResponse
    :: OrderreturnsAcknowledgeResponse
orderreturnsAcknowledgeResponse =
  OrderreturnsAcknowledgeResponse'
    {_oarKind = Nothing, _oarExecutionStatus = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#orderreturnsAcknowledgeResponse\".
oarKind :: Lens' OrderreturnsAcknowledgeResponse (Maybe Text)
oarKind = lens _oarKind (\ s a -> s{_oarKind = a})

-- | The status of the execution. Acceptable values are: - \"\`duplicate\`\"
-- - \"\`executed\`\"
oarExecutionStatus :: Lens' OrderreturnsAcknowledgeResponse (Maybe Text)
oarExecutionStatus
  = lens _oarExecutionStatus
      (\ s a -> s{_oarExecutionStatus = a})

instance FromJSON OrderreturnsAcknowledgeResponse
         where
        parseJSON
          = withObject "OrderreturnsAcknowledgeResponse"
              (\ o ->
                 OrderreturnsAcknowledgeResponse' <$>
                   (o .:? "kind") <*> (o .:? "executionStatus"))

instance ToJSON OrderreturnsAcknowledgeResponse where
        toJSON OrderreturnsAcknowledgeResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _oarKind,
                  ("executionStatus" .=) <$> _oarExecutionStatus])

--
-- /See:/ 'orderReportTransaction' smart constructor.
data OrderReportTransaction =
  OrderReportTransaction'
    { _ortMerchantId :: !(Maybe (Textual Word64))
    , _ortDisbursementId :: !(Maybe Text)
    , _ortDisbursementCreationDate :: !(Maybe Text)
    , _ortTransactionDate :: !(Maybe Text)
    , _ortDisbursementDate :: !(Maybe Text)
    , _ortMerchantOrderId :: !(Maybe Text)
    , _ortProductAmount :: !(Maybe ProductAmount)
    , _ortOrderId :: !(Maybe Text)
    , _ortDisbursementAmount :: !(Maybe Price)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderReportTransaction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ortMerchantId'
--
-- * 'ortDisbursementId'
--
-- * 'ortDisbursementCreationDate'
--
-- * 'ortTransactionDate'
--
-- * 'ortDisbursementDate'
--
-- * 'ortMerchantOrderId'
--
-- * 'ortProductAmount'
--
-- * 'ortOrderId'
--
-- * 'ortDisbursementAmount'
orderReportTransaction
    :: OrderReportTransaction
orderReportTransaction =
  OrderReportTransaction'
    { _ortMerchantId = Nothing
    , _ortDisbursementId = Nothing
    , _ortDisbursementCreationDate = Nothing
    , _ortTransactionDate = Nothing
    , _ortDisbursementDate = Nothing
    , _ortMerchantOrderId = Nothing
    , _ortProductAmount = Nothing
    , _ortOrderId = Nothing
    , _ortDisbursementAmount = Nothing
    }


-- | The ID of the managing account.
ortMerchantId :: Lens' OrderReportTransaction (Maybe Word64)
ortMerchantId
  = lens _ortMerchantId
      (\ s a -> s{_ortMerchantId = a})
      . mapping _Coerce

-- | The ID of the disbursement.
ortDisbursementId :: Lens' OrderReportTransaction (Maybe Text)
ortDisbursementId
  = lens _ortDisbursementId
      (\ s a -> s{_ortDisbursementId = a})

-- | The date the disbursement was created, in ISO 8601 format.
ortDisbursementCreationDate :: Lens' OrderReportTransaction (Maybe Text)
ortDisbursementCreationDate
  = lens _ortDisbursementCreationDate
      (\ s a -> s{_ortDisbursementCreationDate = a})

-- | The date of the transaction, in ISO 8601 format.
ortTransactionDate :: Lens' OrderReportTransaction (Maybe Text)
ortTransactionDate
  = lens _ortTransactionDate
      (\ s a -> s{_ortTransactionDate = a})

-- | The date the disbursement was initiated, in ISO 8601 format.
ortDisbursementDate :: Lens' OrderReportTransaction (Maybe Text)
ortDisbursementDate
  = lens _ortDisbursementDate
      (\ s a -> s{_ortDisbursementDate = a})

-- | Merchant-provided ID of the order.
ortMerchantOrderId :: Lens' OrderReportTransaction (Maybe Text)
ortMerchantOrderId
  = lens _ortMerchantOrderId
      (\ s a -> s{_ortMerchantOrderId = a})

-- | Total amount for the items.
ortProductAmount :: Lens' OrderReportTransaction (Maybe ProductAmount)
ortProductAmount
  = lens _ortProductAmount
      (\ s a -> s{_ortProductAmount = a})

-- | The ID of the order.
ortOrderId :: Lens' OrderReportTransaction (Maybe Text)
ortOrderId
  = lens _ortOrderId (\ s a -> s{_ortOrderId = a})

-- | The disbursement amount.
ortDisbursementAmount :: Lens' OrderReportTransaction (Maybe Price)
ortDisbursementAmount
  = lens _ortDisbursementAmount
      (\ s a -> s{_ortDisbursementAmount = a})

instance FromJSON OrderReportTransaction where
        parseJSON
          = withObject "OrderReportTransaction"
              (\ o ->
                 OrderReportTransaction' <$>
                   (o .:? "merchantId") <*> (o .:? "disbursementId") <*>
                     (o .:? "disbursementCreationDate")
                     <*> (o .:? "transactionDate")
                     <*> (o .:? "disbursementDate")
                     <*> (o .:? "merchantOrderId")
                     <*> (o .:? "productAmount")
                     <*> (o .:? "orderId")
                     <*> (o .:? "disbursementAmount"))

instance ToJSON OrderReportTransaction where
        toJSON OrderReportTransaction'{..}
          = object
              (catMaybes
                 [("merchantId" .=) <$> _ortMerchantId,
                  ("disbursementId" .=) <$> _ortDisbursementId,
                  ("disbursementCreationDate" .=) <$>
                    _ortDisbursementCreationDate,
                  ("transactionDate" .=) <$> _ortTransactionDate,
                  ("disbursementDate" .=) <$> _ortDisbursementDate,
                  ("merchantOrderId" .=) <$> _ortMerchantOrderId,
                  ("productAmount" .=) <$> _ortProductAmount,
                  ("orderId" .=) <$> _ortOrderId,
                  ("disbursementAmount" .=) <$>
                    _ortDisbursementAmount])

--
-- /See:/ 'ordersAdvanceTestOrderResponse' smart constructor.
newtype OrdersAdvanceTestOrderResponse =
  OrdersAdvanceTestOrderResponse'
    { _oatorKind :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersAdvanceTestOrderResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oatorKind'
ordersAdvanceTestOrderResponse
    :: OrdersAdvanceTestOrderResponse
ordersAdvanceTestOrderResponse =
  OrdersAdvanceTestOrderResponse' {_oatorKind = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersAdvanceTestOrderResponse\".
oatorKind :: Lens' OrdersAdvanceTestOrderResponse (Maybe Text)
oatorKind
  = lens _oatorKind (\ s a -> s{_oatorKind = a})

instance FromJSON OrdersAdvanceTestOrderResponse
         where
        parseJSON
          = withObject "OrdersAdvanceTestOrderResponse"
              (\ o ->
                 OrdersAdvanceTestOrderResponse' <$> (o .:? "kind"))

instance ToJSON OrdersAdvanceTestOrderResponse where
        toJSON OrdersAdvanceTestOrderResponse'{..}
          = object (catMaybes [("kind" .=) <$> _oatorKind])

--
-- /See:/ 'productsCustomBatchResponse' smart constructor.
data ProductsCustomBatchResponse =
  ProductsCustomBatchResponse'
    { _pcbrEntries :: !(Maybe [ProductsCustomBatchResponseEntry])
    , _pcbrKind :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductsCustomBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcbrEntries'
--
-- * 'pcbrKind'
productsCustomBatchResponse
    :: ProductsCustomBatchResponse
productsCustomBatchResponse =
  ProductsCustomBatchResponse' {_pcbrEntries = Nothing, _pcbrKind = Nothing}


-- | The result of the execution of the batch requests.
pcbrEntries :: Lens' ProductsCustomBatchResponse [ProductsCustomBatchResponseEntry]
pcbrEntries
  = lens _pcbrEntries (\ s a -> s{_pcbrEntries = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#productsCustomBatchResponse\".
pcbrKind :: Lens' ProductsCustomBatchResponse (Maybe Text)
pcbrKind = lens _pcbrKind (\ s a -> s{_pcbrKind = a})

instance FromJSON ProductsCustomBatchResponse where
        parseJSON
          = withObject "ProductsCustomBatchResponse"
              (\ o ->
                 ProductsCustomBatchResponse' <$>
                   (o .:? "entries" .!= mempty) <*> (o .:? "kind"))

instance ToJSON ProductsCustomBatchResponse where
        toJSON ProductsCustomBatchResponse'{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _pcbrEntries,
                  ("kind" .=) <$> _pcbrKind])

--
-- /See:/ 'orderMerchantProvidedAnnotation' smart constructor.
data OrderMerchantProvidedAnnotation =
  OrderMerchantProvidedAnnotation'
    { _ompaValue :: !(Maybe Text)
    , _ompaKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderMerchantProvidedAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ompaValue'
--
-- * 'ompaKey'
orderMerchantProvidedAnnotation
    :: OrderMerchantProvidedAnnotation
orderMerchantProvidedAnnotation =
  OrderMerchantProvidedAnnotation' {_ompaValue = Nothing, _ompaKey = Nothing}


-- | Value for additional merchant provided (as key-value pairs) annotation
-- about the line item.
ompaValue :: Lens' OrderMerchantProvidedAnnotation (Maybe Text)
ompaValue
  = lens _ompaValue (\ s a -> s{_ompaValue = a})

-- | Key for additional merchant provided (as key-value pairs) annotation
-- about the line item.
ompaKey :: Lens' OrderMerchantProvidedAnnotation (Maybe Text)
ompaKey = lens _ompaKey (\ s a -> s{_ompaKey = a})

instance FromJSON OrderMerchantProvidedAnnotation
         where
        parseJSON
          = withObject "OrderMerchantProvidedAnnotation"
              (\ o ->
                 OrderMerchantProvidedAnnotation' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON OrderMerchantProvidedAnnotation where
        toJSON OrderMerchantProvidedAnnotation'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _ompaValue,
                  ("key" .=) <$> _ompaKey])

--
-- /See:/ 'datafeedstatusesCustomBatchResponse' smart constructor.
data DatafeedstatusesCustomBatchResponse =
  DatafeedstatusesCustomBatchResponse'
    { _dcbrEntries :: !(Maybe [DatafeedstatusesCustomBatchResponseEntry])
    , _dcbrKind :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatafeedstatusesCustomBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcbrEntries'
--
-- * 'dcbrKind'
datafeedstatusesCustomBatchResponse
    :: DatafeedstatusesCustomBatchResponse
datafeedstatusesCustomBatchResponse =
  DatafeedstatusesCustomBatchResponse'
    {_dcbrEntries = Nothing, _dcbrKind = Nothing}


-- | The result of the execution of the batch requests.
dcbrEntries :: Lens' DatafeedstatusesCustomBatchResponse [DatafeedstatusesCustomBatchResponseEntry]
dcbrEntries
  = lens _dcbrEntries (\ s a -> s{_dcbrEntries = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#datafeedstatusesCustomBatchResponse\".
dcbrKind :: Lens' DatafeedstatusesCustomBatchResponse (Maybe Text)
dcbrKind = lens _dcbrKind (\ s a -> s{_dcbrKind = a})

instance FromJSON DatafeedstatusesCustomBatchResponse
         where
        parseJSON
          = withObject "DatafeedstatusesCustomBatchResponse"
              (\ o ->
                 DatafeedstatusesCustomBatchResponse' <$>
                   (o .:? "entries" .!= mempty) <*> (o .:? "kind"))

instance ToJSON DatafeedstatusesCustomBatchResponse
         where
        toJSON DatafeedstatusesCustomBatchResponse'{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _dcbrEntries,
                  ("kind" .=) <$> _dcbrKind])

--
-- /See:/ 'returnPricingInfo' smart constructor.
data ReturnPricingInfo =
  ReturnPricingInfo'
    { _rpiRefundableItemsTotalAmount :: !(Maybe MonetaryAmount)
    , _rpiMaxReturnShippingFee :: !(Maybe MonetaryAmount)
    , _rpiChargeReturnShippingFee :: !(Maybe Bool)
    , _rpiRefundableShippingAmount :: !(Maybe MonetaryAmount)
    , _rpiTotalRefundedAmount :: !(Maybe MonetaryAmount)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReturnPricingInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpiRefundableItemsTotalAmount'
--
-- * 'rpiMaxReturnShippingFee'
--
-- * 'rpiChargeReturnShippingFee'
--
-- * 'rpiRefundableShippingAmount'
--
-- * 'rpiTotalRefundedAmount'
returnPricingInfo
    :: ReturnPricingInfo
returnPricingInfo =
  ReturnPricingInfo'
    { _rpiRefundableItemsTotalAmount = Nothing
    , _rpiMaxReturnShippingFee = Nothing
    , _rpiChargeReturnShippingFee = Nothing
    , _rpiRefundableShippingAmount = Nothing
    , _rpiTotalRefundedAmount = Nothing
    }


-- | Total amount that can be refunded for the items in this return. It
-- represents the total amount received by the merchant for the items,
-- after applying merchant coupons.
rpiRefundableItemsTotalAmount :: Lens' ReturnPricingInfo (Maybe MonetaryAmount)
rpiRefundableItemsTotalAmount
  = lens _rpiRefundableItemsTotalAmount
      (\ s a -> s{_rpiRefundableItemsTotalAmount = a})

-- | Maximum return shipping costs that may be charged to the customer
-- depending on merchant\'s assessment of the return reason and the
-- merchant\'s return policy for the items being returned.
rpiMaxReturnShippingFee :: Lens' ReturnPricingInfo (Maybe MonetaryAmount)
rpiMaxReturnShippingFee
  = lens _rpiMaxReturnShippingFee
      (\ s a -> s{_rpiMaxReturnShippingFee = a})

-- | Default option for whether merchant should charge the customer for
-- return shipping costs, based on customer selected return reason and
-- merchant\'s return policy for the items being returned.
rpiChargeReturnShippingFee :: Lens' ReturnPricingInfo (Maybe Bool)
rpiChargeReturnShippingFee
  = lens _rpiChargeReturnShippingFee
      (\ s a -> s{_rpiChargeReturnShippingFee = a})

-- | Maximum amount that can be refunded for the original shipping fee.
rpiRefundableShippingAmount :: Lens' ReturnPricingInfo (Maybe MonetaryAmount)
rpiRefundableShippingAmount
  = lens _rpiRefundableShippingAmount
      (\ s a -> s{_rpiRefundableShippingAmount = a})

-- | Total amount already refunded by the merchant. It includes all types of
-- refunds (items, shipping, etc.) Not provided if no refund has been
-- applied yet.
rpiTotalRefundedAmount :: Lens' ReturnPricingInfo (Maybe MonetaryAmount)
rpiTotalRefundedAmount
  = lens _rpiTotalRefundedAmount
      (\ s a -> s{_rpiTotalRefundedAmount = a})

instance FromJSON ReturnPricingInfo where
        parseJSON
          = withObject "ReturnPricingInfo"
              (\ o ->
                 ReturnPricingInfo' <$>
                   (o .:? "refundableItemsTotalAmount") <*>
                     (o .:? "maxReturnShippingFee")
                     <*> (o .:? "chargeReturnShippingFee")
                     <*> (o .:? "refundableShippingAmount")
                     <*> (o .:? "totalRefundedAmount"))

instance ToJSON ReturnPricingInfo where
        toJSON ReturnPricingInfo'{..}
          = object
              (catMaybes
                 [("refundableItemsTotalAmount" .=) <$>
                    _rpiRefundableItemsTotalAmount,
                  ("maxReturnShippingFee" .=) <$>
                    _rpiMaxReturnShippingFee,
                  ("chargeReturnShippingFee" .=) <$>
                    _rpiChargeReturnShippingFee,
                  ("refundableShippingAmount" .=) <$>
                    _rpiRefundableShippingAmount,
                  ("totalRefundedAmount" .=) <$>
                    _rpiTotalRefundedAmount])

-- | Response message for the ListCollections method.
--
-- /See:/ 'listCollectionsResponse' smart constructor.
data ListCollectionsResponse =
  ListCollectionsResponse'
    { _lcrNextPageToken :: !(Maybe Text)
    , _lcrResources :: !(Maybe [Collection])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListCollectionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcrNextPageToken'
--
-- * 'lcrResources'
listCollectionsResponse
    :: ListCollectionsResponse
listCollectionsResponse =
  ListCollectionsResponse'
    {_lcrNextPageToken = Nothing, _lcrResources = Nothing}


-- | A token, which can be sent as \`page_token\` to retrieve the next page.
-- If this field is omitted, there are no subsequent pages.
lcrNextPageToken :: Lens' ListCollectionsResponse (Maybe Text)
lcrNextPageToken
  = lens _lcrNextPageToken
      (\ s a -> s{_lcrNextPageToken = a})

-- | The collections listed.
lcrResources :: Lens' ListCollectionsResponse [Collection]
lcrResources
  = lens _lcrResources (\ s a -> s{_lcrResources = a})
      . _Default
      . _Coerce

instance FromJSON ListCollectionsResponse where
        parseJSON
          = withObject "ListCollectionsResponse"
              (\ o ->
                 ListCollectionsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "resources" .!= mempty))

instance ToJSON ListCollectionsResponse where
        toJSON ListCollectionsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lcrNextPageToken,
                  ("resources" .=) <$> _lcrResources])

--
-- /See:/ 'orderReturn' smart constructor.
data OrderReturn =
  OrderReturn'
    { _orQuantity :: !(Maybe (Textual Word32))
    , _orActor :: !(Maybe Text)
    , _orReason :: !(Maybe Text)
    , _orCreationDate :: !(Maybe Text)
    , _orReasonText :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderReturn' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orQuantity'
--
-- * 'orActor'
--
-- * 'orReason'
--
-- * 'orCreationDate'
--
-- * 'orReasonText'
orderReturn
    :: OrderReturn
orderReturn =
  OrderReturn'
    { _orQuantity = Nothing
    , _orActor = Nothing
    , _orReason = Nothing
    , _orCreationDate = Nothing
    , _orReasonText = Nothing
    }


-- | Quantity that is returned.
orQuantity :: Lens' OrderReturn (Maybe Word32)
orQuantity
  = lens _orQuantity (\ s a -> s{_orQuantity = a}) .
      mapping _Coerce

-- | The actor that created the refund. Acceptable values are: -
-- \"\`customer\`\" - \"\`googleBot\`\" - \"\`googleCustomerService\`\" -
-- \"\`googlePayments\`\" - \"\`googleSabre\`\" - \"\`merchant\`\"
orActor :: Lens' OrderReturn (Maybe Text)
orActor = lens _orActor (\ s a -> s{_orActor = a})

-- | The reason for the return. Acceptable values are: -
-- \"\`customerDiscretionaryReturn\`\" -
-- \"\`customerInitiatedMerchantCancel\`\" - \"\`deliveredTooLate\`\" -
-- \"\`expiredItem\`\" - \"\`invalidCoupon\`\" -
-- \"\`malformedShippingAddress\`\" - \"\`other\`\" -
-- \"\`productArrivedDamaged\`\" - \"\`productNotAsDescribed\`\" -
-- \"\`qualityNotAsExpected\`\" - \"\`undeliverableShippingAddress\`\" -
-- \"\`unsupportedPoBoxAddress\`\" - \"\`wrongProductShipped\`\"
orReason :: Lens' OrderReturn (Maybe Text)
orReason = lens _orReason (\ s a -> s{_orReason = a})

-- | Date on which the item has been created, in ISO 8601 format.
orCreationDate :: Lens' OrderReturn (Maybe Text)
orCreationDate
  = lens _orCreationDate
      (\ s a -> s{_orCreationDate = a})

-- | The explanation of the reason.
orReasonText :: Lens' OrderReturn (Maybe Text)
orReasonText
  = lens _orReasonText (\ s a -> s{_orReasonText = a})

instance FromJSON OrderReturn where
        parseJSON
          = withObject "OrderReturn"
              (\ o ->
                 OrderReturn' <$>
                   (o .:? "quantity") <*> (o .:? "actor") <*>
                     (o .:? "reason")
                     <*> (o .:? "creationDate")
                     <*> (o .:? "reasonText"))

instance ToJSON OrderReturn where
        toJSON OrderReturn'{..}
          = object
              (catMaybes
                 [("quantity" .=) <$> _orQuantity,
                  ("actor" .=) <$> _orActor,
                  ("reason" .=) <$> _orReason,
                  ("creationDate" .=) <$> _orCreationDate,
                  ("reasonText" .=) <$> _orReasonText])

-- | Result row returned from the search query.
--
-- /See:/ 'reportRow' smart constructor.
data ReportRow =
  ReportRow'
    { _rrMetrics :: !(Maybe Metrics)
    , _rrSegments :: !(Maybe Segments)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReportRow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrMetrics'
--
-- * 'rrSegments'
reportRow
    :: ReportRow
reportRow = ReportRow' {_rrMetrics = Nothing, _rrSegments = Nothing}


-- | Metrics requested by the merchant in the query. Metric values are only
-- set for metrics requested explicitly in the query.
rrMetrics :: Lens' ReportRow (Maybe Metrics)
rrMetrics
  = lens _rrMetrics (\ s a -> s{_rrMetrics = a})

-- | Segmentation dimensions requested by the merchant in the query.
-- Dimension values are only set for dimensions requested explicitly in the
-- query.
rrSegments :: Lens' ReportRow (Maybe Segments)
rrSegments
  = lens _rrSegments (\ s a -> s{_rrSegments = a})

instance FromJSON ReportRow where
        parseJSON
          = withObject "ReportRow"
              (\ o ->
                 ReportRow' <$>
                   (o .:? "metrics") <*> (o .:? "segments"))

instance ToJSON ReportRow where
        toJSON ReportRow'{..}
          = object
              (catMaybes
                 [("metrics" .=) <$> _rrMetrics,
                  ("segments" .=) <$> _rrSegments])

-- | A batch entry encoding a single non-batch accounttax response.
--
-- /See:/ 'accounttaxCustomBatchResponseEntry' smart constructor.
data AccounttaxCustomBatchResponseEntry =
  AccounttaxCustomBatchResponseEntry'
    { _acbreAccountTax :: !(Maybe AccountTax)
    , _acbreKind :: !(Maybe Text)
    , _acbreErrors :: !(Maybe Errors)
    , _acbreBatchId :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccounttaxCustomBatchResponseEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acbreAccountTax'
--
-- * 'acbreKind'
--
-- * 'acbreErrors'
--
-- * 'acbreBatchId'
accounttaxCustomBatchResponseEntry
    :: AccounttaxCustomBatchResponseEntry
accounttaxCustomBatchResponseEntry =
  AccounttaxCustomBatchResponseEntry'
    { _acbreAccountTax = Nothing
    , _acbreKind = Nothing
    , _acbreErrors = Nothing
    , _acbreBatchId = Nothing
    }


-- | The retrieved or updated account tax settings.
acbreAccountTax :: Lens' AccounttaxCustomBatchResponseEntry (Maybe AccountTax)
acbreAccountTax
  = lens _acbreAccountTax
      (\ s a -> s{_acbreAccountTax = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"\`content#accounttaxCustomBatchResponseEntry\`\"
acbreKind :: Lens' AccounttaxCustomBatchResponseEntry (Maybe Text)
acbreKind
  = lens _acbreKind (\ s a -> s{_acbreKind = a})

-- | A list of errors defined if and only if the request failed.
acbreErrors :: Lens' AccounttaxCustomBatchResponseEntry (Maybe Errors)
acbreErrors
  = lens _acbreErrors (\ s a -> s{_acbreErrors = a})

-- | The ID of the request entry this entry responds to.
acbreBatchId :: Lens' AccounttaxCustomBatchResponseEntry (Maybe Word32)
acbreBatchId
  = lens _acbreBatchId (\ s a -> s{_acbreBatchId = a})
      . mapping _Coerce

instance FromJSON AccounttaxCustomBatchResponseEntry
         where
        parseJSON
          = withObject "AccounttaxCustomBatchResponseEntry"
              (\ o ->
                 AccounttaxCustomBatchResponseEntry' <$>
                   (o .:? "accountTax") <*> (o .:? "kind") <*>
                     (o .:? "errors")
                     <*> (o .:? "batchId"))

instance ToJSON AccounttaxCustomBatchResponseEntry
         where
        toJSON AccounttaxCustomBatchResponseEntry'{..}
          = object
              (catMaybes
                 [("accountTax" .=) <$> _acbreAccountTax,
                  ("kind" .=) <$> _acbreKind,
                  ("errors" .=) <$> _acbreErrors,
                  ("batchId" .=) <$> _acbreBatchId])

--
-- /See:/ 'posSaleResponse' smart constructor.
data PosSaleResponse =
  PosSaleResponse'
    { _psrStoreCode :: !(Maybe Text)
    , _psrKind :: !(Maybe Text)
    , _psrItemId :: !(Maybe Text)
    , _psrQuantity :: !(Maybe (Textual Int64))
    , _psrTargetCountry :: !(Maybe Text)
    , _psrGtin :: !(Maybe Text)
    , _psrPrice :: !(Maybe Price)
    , _psrContentLanguage :: !(Maybe Text)
    , _psrTimestamp :: !(Maybe Text)
    , _psrSaleId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PosSaleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psrStoreCode'
--
-- * 'psrKind'
--
-- * 'psrItemId'
--
-- * 'psrQuantity'
--
-- * 'psrTargetCountry'
--
-- * 'psrGtin'
--
-- * 'psrPrice'
--
-- * 'psrContentLanguage'
--
-- * 'psrTimestamp'
--
-- * 'psrSaleId'
posSaleResponse
    :: PosSaleResponse
posSaleResponse =
  PosSaleResponse'
    { _psrStoreCode = Nothing
    , _psrKind = Nothing
    , _psrItemId = Nothing
    , _psrQuantity = Nothing
    , _psrTargetCountry = Nothing
    , _psrGtin = Nothing
    , _psrPrice = Nothing
    , _psrContentLanguage = Nothing
    , _psrTimestamp = Nothing
    , _psrSaleId = Nothing
    }


-- | Required. The identifier of the merchant\'s store. Either a
-- \`storeCode\` inserted via the API or the code of the store in Google My
-- Business.
psrStoreCode :: Lens' PosSaleResponse (Maybe Text)
psrStoreCode
  = lens _psrStoreCode (\ s a -> s{_psrStoreCode = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#posSaleResponse\".
psrKind :: Lens' PosSaleResponse (Maybe Text)
psrKind = lens _psrKind (\ s a -> s{_psrKind = a})

-- | Required. A unique identifier for the item.
psrItemId :: Lens' PosSaleResponse (Maybe Text)
psrItemId
  = lens _psrItemId (\ s a -> s{_psrItemId = a})

-- | Required. The relative change of the available quantity. Negative for
-- items returned.
psrQuantity :: Lens' PosSaleResponse (Maybe Int64)
psrQuantity
  = lens _psrQuantity (\ s a -> s{_psrQuantity = a}) .
      mapping _Coerce

-- | Required. The CLDR territory code for the item.
psrTargetCountry :: Lens' PosSaleResponse (Maybe Text)
psrTargetCountry
  = lens _psrTargetCountry
      (\ s a -> s{_psrTargetCountry = a})

-- | Global Trade Item Number.
psrGtin :: Lens' PosSaleResponse (Maybe Text)
psrGtin = lens _psrGtin (\ s a -> s{_psrGtin = a})

-- | Required. The price of the item.
psrPrice :: Lens' PosSaleResponse (Maybe Price)
psrPrice = lens _psrPrice (\ s a -> s{_psrPrice = a})

-- | Required. The two-letter ISO 639-1 language code for the item.
psrContentLanguage :: Lens' PosSaleResponse (Maybe Text)
psrContentLanguage
  = lens _psrContentLanguage
      (\ s a -> s{_psrContentLanguage = a})

-- | Required. The inventory timestamp, in ISO 8601 format.
psrTimestamp :: Lens' PosSaleResponse (Maybe Text)
psrTimestamp
  = lens _psrTimestamp (\ s a -> s{_psrTimestamp = a})

-- | A unique ID to group items from the same sale event.
psrSaleId :: Lens' PosSaleResponse (Maybe Text)
psrSaleId
  = lens _psrSaleId (\ s a -> s{_psrSaleId = a})

instance FromJSON PosSaleResponse where
        parseJSON
          = withObject "PosSaleResponse"
              (\ o ->
                 PosSaleResponse' <$>
                   (o .:? "storeCode") <*> (o .:? "kind") <*>
                     (o .:? "itemId")
                     <*> (o .:? "quantity")
                     <*> (o .:? "targetCountry")
                     <*> (o .:? "gtin")
                     <*> (o .:? "price")
                     <*> (o .:? "contentLanguage")
                     <*> (o .:? "timestamp")
                     <*> (o .:? "saleId"))

instance ToJSON PosSaleResponse where
        toJSON PosSaleResponse'{..}
          = object
              (catMaybes
                 [("storeCode" .=) <$> _psrStoreCode,
                  ("kind" .=) <$> _psrKind,
                  ("itemId" .=) <$> _psrItemId,
                  ("quantity" .=) <$> _psrQuantity,
                  ("targetCountry" .=) <$> _psrTargetCountry,
                  ("gtin" .=) <$> _psrGtin, ("price" .=) <$> _psrPrice,
                  ("contentLanguage" .=) <$> _psrContentLanguage,
                  ("timestamp" .=) <$> _psrTimestamp,
                  ("saleId" .=) <$> _psrSaleId])

--
-- /See:/ 'amount' smart constructor.
data Amount =
  Amount'
    { _aTaxAmount :: !(Maybe Price)
    , _aPriceAmount :: !(Maybe Price)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Amount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aTaxAmount'
--
-- * 'aPriceAmount'
amount
    :: Amount
amount = Amount' {_aTaxAmount = Nothing, _aPriceAmount = Nothing}


-- | [required] Tax value.
aTaxAmount :: Lens' Amount (Maybe Price)
aTaxAmount
  = lens _aTaxAmount (\ s a -> s{_aTaxAmount = a})

-- | [required] The pre-tax or post-tax price depending on the location of
-- the order.
aPriceAmount :: Lens' Amount (Maybe Price)
aPriceAmount
  = lens _aPriceAmount (\ s a -> s{_aPriceAmount = a})

instance FromJSON Amount where
        parseJSON
          = withObject "Amount"
              (\ o ->
                 Amount' <$>
                   (o .:? "taxAmount") <*> (o .:? "priceAmount"))

instance ToJSON Amount where
        toJSON Amount'{..}
          = object
              (catMaybes
                 [("taxAmount" .=) <$> _aTaxAmount,
                  ("priceAmount" .=) <$> _aPriceAmount])

--
-- /See:/ 'accountsAuthInfoResponse' smart constructor.
data AccountsAuthInfoResponse =
  AccountsAuthInfoResponse'
    { _aairKind :: !(Maybe Text)
    , _aairAccountIdentifiers :: !(Maybe [AccountIdentifier])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsAuthInfoResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aairKind'
--
-- * 'aairAccountIdentifiers'
accountsAuthInfoResponse
    :: AccountsAuthInfoResponse
accountsAuthInfoResponse =
  AccountsAuthInfoResponse'
    {_aairKind = Nothing, _aairAccountIdentifiers = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#accountsAuthInfoResponse\".
aairKind :: Lens' AccountsAuthInfoResponse (Maybe Text)
aairKind = lens _aairKind (\ s a -> s{_aairKind = a})

-- | The account identifiers corresponding to the authenticated user. - For
-- an individual account: only the merchant ID is defined - For an
-- aggregator: only the aggregator ID is defined - For a subaccount of an
-- MCA: both the merchant ID and the aggregator ID are defined.
aairAccountIdentifiers :: Lens' AccountsAuthInfoResponse [AccountIdentifier]
aairAccountIdentifiers
  = lens _aairAccountIdentifiers
      (\ s a -> s{_aairAccountIdentifiers = a})
      . _Default
      . _Coerce

instance FromJSON AccountsAuthInfoResponse where
        parseJSON
          = withObject "AccountsAuthInfoResponse"
              (\ o ->
                 AccountsAuthInfoResponse' <$>
                   (o .:? "kind") <*>
                     (o .:? "accountIdentifiers" .!= mempty))

instance ToJSON AccountsAuthInfoResponse where
        toJSON AccountsAuthInfoResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _aairKind,
                  ("accountIdentifiers" .=) <$>
                    _aairAccountIdentifiers])

-- | Order disbursement. All methods require the payment analyst role.
--
-- /See:/ 'orderReportDisbursement' smart constructor.
data OrderReportDisbursement =
  OrderReportDisbursement'
    { _ordMerchantId :: !(Maybe (Textual Word64))
    , _ordDisbursementId :: !(Maybe Text)
    , _ordDisbursementCreationDate :: !(Maybe Text)
    , _ordDisbursementDate :: !(Maybe Text)
    , _ordDisbursementAmount :: !(Maybe Price)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderReportDisbursement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ordMerchantId'
--
-- * 'ordDisbursementId'
--
-- * 'ordDisbursementCreationDate'
--
-- * 'ordDisbursementDate'
--
-- * 'ordDisbursementAmount'
orderReportDisbursement
    :: OrderReportDisbursement
orderReportDisbursement =
  OrderReportDisbursement'
    { _ordMerchantId = Nothing
    , _ordDisbursementId = Nothing
    , _ordDisbursementCreationDate = Nothing
    , _ordDisbursementDate = Nothing
    , _ordDisbursementAmount = Nothing
    }


-- | The ID of the managing account.
ordMerchantId :: Lens' OrderReportDisbursement (Maybe Word64)
ordMerchantId
  = lens _ordMerchantId
      (\ s a -> s{_ordMerchantId = a})
      . mapping _Coerce

-- | The ID of the disbursement.
ordDisbursementId :: Lens' OrderReportDisbursement (Maybe Text)
ordDisbursementId
  = lens _ordDisbursementId
      (\ s a -> s{_ordDisbursementId = a})

-- | The disbursement date, in ISO 8601 format.
ordDisbursementCreationDate :: Lens' OrderReportDisbursement (Maybe Text)
ordDisbursementCreationDate
  = lens _ordDisbursementCreationDate
      (\ s a -> s{_ordDisbursementCreationDate = a})

-- | The date the disbursement was initiated, in ISO 8601 format.
ordDisbursementDate :: Lens' OrderReportDisbursement (Maybe Text)
ordDisbursementDate
  = lens _ordDisbursementDate
      (\ s a -> s{_ordDisbursementDate = a})

-- | The disbursement amount.
ordDisbursementAmount :: Lens' OrderReportDisbursement (Maybe Price)
ordDisbursementAmount
  = lens _ordDisbursementAmount
      (\ s a -> s{_ordDisbursementAmount = a})

instance FromJSON OrderReportDisbursement where
        parseJSON
          = withObject "OrderReportDisbursement"
              (\ o ->
                 OrderReportDisbursement' <$>
                   (o .:? "merchantId") <*> (o .:? "disbursementId") <*>
                     (o .:? "disbursementCreationDate")
                     <*> (o .:? "disbursementDate")
                     <*> (o .:? "disbursementAmount"))

instance ToJSON OrderReportDisbursement where
        toJSON OrderReportDisbursement'{..}
          = object
              (catMaybes
                 [("merchantId" .=) <$> _ordMerchantId,
                  ("disbursementId" .=) <$> _ordDisbursementId,
                  ("disbursementCreationDate" .=) <$>
                    _ordDisbursementCreationDate,
                  ("disbursementDate" .=) <$> _ordDisbursementDate,
                  ("disbursementAmount" .=) <$>
                    _ordDisbursementAmount])

-- | Local inventory resource. For accepted attribute values, see the local
-- product inventory feed specification.
--
-- /See:/ 'localInventory' smart constructor.
data LocalInventory =
  LocalInventory'
    { _liPickupSla :: !(Maybe Text)
    , _liStoreCode :: !(Maybe Text)
    , _liKind :: !(Maybe Text)
    , _liPickupMethod :: !(Maybe Text)
    , _liQuantity :: !(Maybe (Textual Word32))
    , _liSalePrice :: !(Maybe Price)
    , _liAvailability :: !(Maybe Text)
    , _liSalePriceEffectiveDate :: !(Maybe Text)
    , _liPrice :: !(Maybe Price)
    , _liInstoreProductLocation :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocalInventory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liPickupSla'
--
-- * 'liStoreCode'
--
-- * 'liKind'
--
-- * 'liPickupMethod'
--
-- * 'liQuantity'
--
-- * 'liSalePrice'
--
-- * 'liAvailability'
--
-- * 'liSalePriceEffectiveDate'
--
-- * 'liPrice'
--
-- * 'liInstoreProductLocation'
localInventory
    :: LocalInventory
localInventory =
  LocalInventory'
    { _liPickupSla = Nothing
    , _liStoreCode = Nothing
    , _liKind = Nothing
    , _liPickupMethod = Nothing
    , _liQuantity = Nothing
    , _liSalePrice = Nothing
    , _liAvailability = Nothing
    , _liSalePriceEffectiveDate = Nothing
    , _liPrice = Nothing
    , _liInstoreProductLocation = Nothing
    }


-- | Expected date that an order will be ready for pickup relative to the
-- order date. Must be submitted together with \`pickupMethod\`. For
-- accepted attribute values, see the local product inventory feed
-- specification.
liPickupSla :: Lens' LocalInventory (Maybe Text)
liPickupSla
  = lens _liPickupSla (\ s a -> s{_liPickupSla = a})

-- | Required. Store code of this local inventory resource.
liStoreCode :: Lens' LocalInventory (Maybe Text)
liStoreCode
  = lens _liStoreCode (\ s a -> s{_liStoreCode = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"\`content#localInventory\`\"
liKind :: Lens' LocalInventory (Maybe Text)
liKind = lens _liKind (\ s a -> s{_liKind = a})

-- | Supported pickup method for this offer. Unless the value is \"not
-- supported\", this field must be submitted together with \`pickupSla\`.
-- For accepted attribute values, see the local product inventory feed \/\/
-- specification.
liPickupMethod :: Lens' LocalInventory (Maybe Text)
liPickupMethod
  = lens _liPickupMethod
      (\ s a -> s{_liPickupMethod = a})

-- | Quantity of the product. Must be nonnegative.
liQuantity :: Lens' LocalInventory (Maybe Word32)
liQuantity
  = lens _liQuantity (\ s a -> s{_liQuantity = a}) .
      mapping _Coerce

-- | Sale price of the product. Mandatory if \`sale_price_effective_date\` is
-- defined.
liSalePrice :: Lens' LocalInventory (Maybe Price)
liSalePrice
  = lens _liSalePrice (\ s a -> s{_liSalePrice = a})

-- | Availability of the product. For accepted attribute values, see the
-- local product inventory feed specification.
liAvailability :: Lens' LocalInventory (Maybe Text)
liAvailability
  = lens _liAvailability
      (\ s a -> s{_liAvailability = a})

-- | A date range represented by a pair of ISO 8601 dates separated by a
-- space, comma, or slash. Both dates may be specified as \'null\' if
-- undecided.
liSalePriceEffectiveDate :: Lens' LocalInventory (Maybe Text)
liSalePriceEffectiveDate
  = lens _liSalePriceEffectiveDate
      (\ s a -> s{_liSalePriceEffectiveDate = a})

-- | Price of the product.
liPrice :: Lens' LocalInventory (Maybe Price)
liPrice = lens _liPrice (\ s a -> s{_liPrice = a})

-- | In-store product location.
liInstoreProductLocation :: Lens' LocalInventory (Maybe Text)
liInstoreProductLocation
  = lens _liInstoreProductLocation
      (\ s a -> s{_liInstoreProductLocation = a})

instance FromJSON LocalInventory where
        parseJSON
          = withObject "LocalInventory"
              (\ o ->
                 LocalInventory' <$>
                   (o .:? "pickupSla") <*> (o .:? "storeCode") <*>
                     (o .:? "kind")
                     <*> (o .:? "pickupMethod")
                     <*> (o .:? "quantity")
                     <*> (o .:? "salePrice")
                     <*> (o .:? "availability")
                     <*> (o .:? "salePriceEffectiveDate")
                     <*> (o .:? "price")
                     <*> (o .:? "instoreProductLocation"))

instance ToJSON LocalInventory where
        toJSON LocalInventory'{..}
          = object
              (catMaybes
                 [("pickupSla" .=) <$> _liPickupSla,
                  ("storeCode" .=) <$> _liStoreCode,
                  ("kind" .=) <$> _liKind,
                  ("pickupMethod" .=) <$> _liPickupMethod,
                  ("quantity" .=) <$> _liQuantity,
                  ("salePrice" .=) <$> _liSalePrice,
                  ("availability" .=) <$> _liAvailability,
                  ("salePriceEffectiveDate" .=) <$>
                    _liSalePriceEffectiveDate,
                  ("price" .=) <$> _liPrice,
                  ("instoreProductLocation" .=) <$>
                    _liInstoreProductLocation])

--
-- /See:/ 'unitInvoice' smart constructor.
data UnitInvoice =
  UnitInvoice'
    { _uiUnitPriceTaxes :: !(Maybe [UnitInvoiceTaxLine])
    , _uiAdditionalCharges :: !(Maybe [UnitInvoiceAdditionalCharge])
    , _uiUnitPrice :: !(Maybe Price)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UnitInvoice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uiUnitPriceTaxes'
--
-- * 'uiAdditionalCharges'
--
-- * 'uiUnitPrice'
unitInvoice
    :: UnitInvoice
unitInvoice =
  UnitInvoice'
    { _uiUnitPriceTaxes = Nothing
    , _uiAdditionalCharges = Nothing
    , _uiUnitPrice = Nothing
    }


-- | Tax amounts to apply to the unit price.
uiUnitPriceTaxes :: Lens' UnitInvoice [UnitInvoiceTaxLine]
uiUnitPriceTaxes
  = lens _uiUnitPriceTaxes
      (\ s a -> s{_uiUnitPriceTaxes = a})
      . _Default
      . _Coerce

-- | Additional charges for a unit, e.g. shipping costs.
uiAdditionalCharges :: Lens' UnitInvoice [UnitInvoiceAdditionalCharge]
uiAdditionalCharges
  = lens _uiAdditionalCharges
      (\ s a -> s{_uiAdditionalCharges = a})
      . _Default
      . _Coerce

-- | [required] Pre-tax or post-tax price of the unit depending on the
-- locality of the order.
uiUnitPrice :: Lens' UnitInvoice (Maybe Price)
uiUnitPrice
  = lens _uiUnitPrice (\ s a -> s{_uiUnitPrice = a})

instance FromJSON UnitInvoice where
        parseJSON
          = withObject "UnitInvoice"
              (\ o ->
                 UnitInvoice' <$>
                   (o .:? "unitPriceTaxes" .!= mempty) <*>
                     (o .:? "additionalCharges" .!= mempty)
                     <*> (o .:? "unitPrice"))

instance ToJSON UnitInvoice where
        toJSON UnitInvoice'{..}
          = object
              (catMaybes
                 [("unitPriceTaxes" .=) <$> _uiUnitPriceTaxes,
                  ("additionalCharges" .=) <$> _uiAdditionalCharges,
                  ("unitPrice" .=) <$> _uiUnitPrice])

-- | The change of the available quantity of an item at the given store.
--
-- /See:/ 'posSale' smart constructor.
data PosSale =
  PosSale'
    { _psStoreCode :: !(Maybe Text)
    , _psKind :: !(Maybe Text)
    , _psItemId :: !(Maybe Text)
    , _psQuantity :: !(Maybe (Textual Int64))
    , _psTargetCountry :: !(Maybe Text)
    , _psGtin :: !(Maybe Text)
    , _psPrice :: !(Maybe Price)
    , _psContentLanguage :: !(Maybe Text)
    , _psTimestamp :: !(Maybe Text)
    , _psSaleId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PosSale' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psStoreCode'
--
-- * 'psKind'
--
-- * 'psItemId'
--
-- * 'psQuantity'
--
-- * 'psTargetCountry'
--
-- * 'psGtin'
--
-- * 'psPrice'
--
-- * 'psContentLanguage'
--
-- * 'psTimestamp'
--
-- * 'psSaleId'
posSale
    :: PosSale
posSale =
  PosSale'
    { _psStoreCode = Nothing
    , _psKind = Nothing
    , _psItemId = Nothing
    , _psQuantity = Nothing
    , _psTargetCountry = Nothing
    , _psGtin = Nothing
    , _psPrice = Nothing
    , _psContentLanguage = Nothing
    , _psTimestamp = Nothing
    , _psSaleId = Nothing
    }


-- | Required. The identifier of the merchant\'s store. Either a
-- \`storeCode\` inserted via the API or the code of the store in Google My
-- Business.
psStoreCode :: Lens' PosSale (Maybe Text)
psStoreCode
  = lens _psStoreCode (\ s a -> s{_psStoreCode = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"\`content#posSale\`\"
psKind :: Lens' PosSale (Maybe Text)
psKind = lens _psKind (\ s a -> s{_psKind = a})

-- | Required. A unique identifier for the item.
psItemId :: Lens' PosSale (Maybe Text)
psItemId = lens _psItemId (\ s a -> s{_psItemId = a})

-- | Required. The relative change of the available quantity. Negative for
-- items returned.
psQuantity :: Lens' PosSale (Maybe Int64)
psQuantity
  = lens _psQuantity (\ s a -> s{_psQuantity = a}) .
      mapping _Coerce

-- | Required. The CLDR territory code for the item.
psTargetCountry :: Lens' PosSale (Maybe Text)
psTargetCountry
  = lens _psTargetCountry
      (\ s a -> s{_psTargetCountry = a})

-- | Global Trade Item Number.
psGtin :: Lens' PosSale (Maybe Text)
psGtin = lens _psGtin (\ s a -> s{_psGtin = a})

-- | Required. The price of the item.
psPrice :: Lens' PosSale (Maybe Price)
psPrice = lens _psPrice (\ s a -> s{_psPrice = a})

-- | Required. The two-letter ISO 639-1 language code for the item.
psContentLanguage :: Lens' PosSale (Maybe Text)
psContentLanguage
  = lens _psContentLanguage
      (\ s a -> s{_psContentLanguage = a})

-- | Required. The inventory timestamp, in ISO 8601 format.
psTimestamp :: Lens' PosSale (Maybe Text)
psTimestamp
  = lens _psTimestamp (\ s a -> s{_psTimestamp = a})

-- | A unique ID to group items from the same sale event.
psSaleId :: Lens' PosSale (Maybe Text)
psSaleId = lens _psSaleId (\ s a -> s{_psSaleId = a})

instance FromJSON PosSale where
        parseJSON
          = withObject "PosSale"
              (\ o ->
                 PosSale' <$>
                   (o .:? "storeCode") <*> (o .:? "kind") <*>
                     (o .:? "itemId")
                     <*> (o .:? "quantity")
                     <*> (o .:? "targetCountry")
                     <*> (o .:? "gtin")
                     <*> (o .:? "price")
                     <*> (o .:? "contentLanguage")
                     <*> (o .:? "timestamp")
                     <*> (o .:? "saleId"))

instance ToJSON PosSale where
        toJSON PosSale'{..}
          = object
              (catMaybes
                 [("storeCode" .=) <$> _psStoreCode,
                  ("kind" .=) <$> _psKind, ("itemId" .=) <$> _psItemId,
                  ("quantity" .=) <$> _psQuantity,
                  ("targetCountry" .=) <$> _psTargetCountry,
                  ("gtin" .=) <$> _psGtin, ("price" .=) <$> _psPrice,
                  ("contentLanguage" .=) <$> _psContentLanguage,
                  ("timestamp" .=) <$> _psTimestamp,
                  ("saleId" .=) <$> _psSaleId])

--
-- /See:/ 'accountStatusItemLevelIssue' smart constructor.
data AccountStatusItemLevelIssue =
  AccountStatusItemLevelIssue'
    { _asiliNumItems :: !(Maybe (Textual Int64))
    , _asiliResolution :: !(Maybe Text)
    , _asiliDocumentation :: !(Maybe Text)
    , _asiliCode :: !(Maybe Text)
    , _asiliServability :: !(Maybe Text)
    , _asiliAttributeName :: !(Maybe Text)
    , _asiliDescription :: !(Maybe Text)
    , _asiliDetail :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountStatusItemLevelIssue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asiliNumItems'
--
-- * 'asiliResolution'
--
-- * 'asiliDocumentation'
--
-- * 'asiliCode'
--
-- * 'asiliServability'
--
-- * 'asiliAttributeName'
--
-- * 'asiliDescription'
--
-- * 'asiliDetail'
accountStatusItemLevelIssue
    :: AccountStatusItemLevelIssue
accountStatusItemLevelIssue =
  AccountStatusItemLevelIssue'
    { _asiliNumItems = Nothing
    , _asiliResolution = Nothing
    , _asiliDocumentation = Nothing
    , _asiliCode = Nothing
    , _asiliServability = Nothing
    , _asiliAttributeName = Nothing
    , _asiliDescription = Nothing
    , _asiliDetail = Nothing
    }


-- | Number of items with this issue.
asiliNumItems :: Lens' AccountStatusItemLevelIssue (Maybe Int64)
asiliNumItems
  = lens _asiliNumItems
      (\ s a -> s{_asiliNumItems = a})
      . mapping _Coerce

-- | Whether the issue can be resolved by the merchant.
asiliResolution :: Lens' AccountStatusItemLevelIssue (Maybe Text)
asiliResolution
  = lens _asiliResolution
      (\ s a -> s{_asiliResolution = a})

-- | The URL of a web page to help with resolving this issue.
asiliDocumentation :: Lens' AccountStatusItemLevelIssue (Maybe Text)
asiliDocumentation
  = lens _asiliDocumentation
      (\ s a -> s{_asiliDocumentation = a})

-- | The error code of the issue.
asiliCode :: Lens' AccountStatusItemLevelIssue (Maybe Text)
asiliCode
  = lens _asiliCode (\ s a -> s{_asiliCode = a})

-- | How this issue affects serving of the offer.
asiliServability :: Lens' AccountStatusItemLevelIssue (Maybe Text)
asiliServability
  = lens _asiliServability
      (\ s a -> s{_asiliServability = a})

-- | The attribute\'s name, if the issue is caused by a single attribute.
asiliAttributeName :: Lens' AccountStatusItemLevelIssue (Maybe Text)
asiliAttributeName
  = lens _asiliAttributeName
      (\ s a -> s{_asiliAttributeName = a})

-- | A short issue description in English.
asiliDescription :: Lens' AccountStatusItemLevelIssue (Maybe Text)
asiliDescription
  = lens _asiliDescription
      (\ s a -> s{_asiliDescription = a})

-- | A detailed issue description in English.
asiliDetail :: Lens' AccountStatusItemLevelIssue (Maybe Text)
asiliDetail
  = lens _asiliDetail (\ s a -> s{_asiliDetail = a})

instance FromJSON AccountStatusItemLevelIssue where
        parseJSON
          = withObject "AccountStatusItemLevelIssue"
              (\ o ->
                 AccountStatusItemLevelIssue' <$>
                   (o .:? "numItems") <*> (o .:? "resolution") <*>
                     (o .:? "documentation")
                     <*> (o .:? "code")
                     <*> (o .:? "servability")
                     <*> (o .:? "attributeName")
                     <*> (o .:? "description")
                     <*> (o .:? "detail"))

instance ToJSON AccountStatusItemLevelIssue where
        toJSON AccountStatusItemLevelIssue'{..}
          = object
              (catMaybes
                 [("numItems" .=) <$> _asiliNumItems,
                  ("resolution" .=) <$> _asiliResolution,
                  ("documentation" .=) <$> _asiliDocumentation,
                  ("code" .=) <$> _asiliCode,
                  ("servability" .=) <$> _asiliServability,
                  ("attributeName" .=) <$> _asiliAttributeName,
                  ("description" .=) <$> _asiliDescription,
                  ("detail" .=) <$> _asiliDetail])

--
-- /See:/ 'orderreturnsProcessResponse' smart constructor.
data OrderreturnsProcessResponse =
  OrderreturnsProcessResponse'
    { _oprKind :: !(Maybe Text)
    , _oprExecutionStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderreturnsProcessResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oprKind'
--
-- * 'oprExecutionStatus'
orderreturnsProcessResponse
    :: OrderreturnsProcessResponse
orderreturnsProcessResponse =
  OrderreturnsProcessResponse'
    {_oprKind = Nothing, _oprExecutionStatus = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#orderreturnsProcessResponse\".
oprKind :: Lens' OrderreturnsProcessResponse (Maybe Text)
oprKind = lens _oprKind (\ s a -> s{_oprKind = a})

-- | The status of the execution. Acceptable values are: - \"\`duplicate\`\"
-- - \"\`executed\`\"
oprExecutionStatus :: Lens' OrderreturnsProcessResponse (Maybe Text)
oprExecutionStatus
  = lens _oprExecutionStatus
      (\ s a -> s{_oprExecutionStatus = a})

instance FromJSON OrderreturnsProcessResponse where
        parseJSON
          = withObject "OrderreturnsProcessResponse"
              (\ o ->
                 OrderreturnsProcessResponse' <$>
                   (o .:? "kind") <*> (o .:? "executionStatus"))

instance ToJSON OrderreturnsProcessResponse where
        toJSON OrderreturnsProcessResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _oprKind,
                  ("executionStatus" .=) <$> _oprExecutionStatus])

--
-- /See:/ 'liaSettingsRequestGmbAccessResponse' smart constructor.
newtype LiaSettingsRequestGmbAccessResponse =
  LiaSettingsRequestGmbAccessResponse'
    { _lsrgarKind :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiaSettingsRequestGmbAccessResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrgarKind'
liaSettingsRequestGmbAccessResponse
    :: LiaSettingsRequestGmbAccessResponse
liaSettingsRequestGmbAccessResponse =
  LiaSettingsRequestGmbAccessResponse' {_lsrgarKind = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#liasettingsRequestGmbAccessResponse\".
lsrgarKind :: Lens' LiaSettingsRequestGmbAccessResponse (Maybe Text)
lsrgarKind
  = lens _lsrgarKind (\ s a -> s{_lsrgarKind = a})

instance FromJSON LiaSettingsRequestGmbAccessResponse
         where
        parseJSON
          = withObject "LiaSettingsRequestGmbAccessResponse"
              (\ o ->
                 LiaSettingsRequestGmbAccessResponse' <$>
                   (o .:? "kind"))

instance ToJSON LiaSettingsRequestGmbAccessResponse
         where
        toJSON LiaSettingsRequestGmbAccessResponse'{..}
          = object (catMaybes [("kind" .=) <$> _lsrgarKind])

--
-- /See:/ 'productStatusDestinationStatus' smart constructor.
data ProductStatusDestinationStatus =
  ProductStatusDestinationStatus'
    { _psdsDestination :: !(Maybe Text)
    , _psdsStatus :: !(Maybe Text)
    , _psdsPendingCountries :: !(Maybe [Text])
    , _psdsApprovedCountries :: !(Maybe [Text])
    , _psdsDisApprovedCountries :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductStatusDestinationStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psdsDestination'
--
-- * 'psdsStatus'
--
-- * 'psdsPendingCountries'
--
-- * 'psdsApprovedCountries'
--
-- * 'psdsDisApprovedCountries'
productStatusDestinationStatus
    :: ProductStatusDestinationStatus
productStatusDestinationStatus =
  ProductStatusDestinationStatus'
    { _psdsDestination = Nothing
    , _psdsStatus = Nothing
    , _psdsPendingCountries = Nothing
    , _psdsApprovedCountries = Nothing
    , _psdsDisApprovedCountries = Nothing
    }


-- | The name of the destination
psdsDestination :: Lens' ProductStatusDestinationStatus (Maybe Text)
psdsDestination
  = lens _psdsDestination
      (\ s a -> s{_psdsDestination = a})

-- | Destination approval status in \`targetCountry\` of the offer.
psdsStatus :: Lens' ProductStatusDestinationStatus (Maybe Text)
psdsStatus
  = lens _psdsStatus (\ s a -> s{_psdsStatus = a})

-- | List of country codes (ISO 3166-1 alpha-2) where the offer is pending
-- approval.
psdsPendingCountries :: Lens' ProductStatusDestinationStatus [Text]
psdsPendingCountries
  = lens _psdsPendingCountries
      (\ s a -> s{_psdsPendingCountries = a})
      . _Default
      . _Coerce

-- | List of country codes (ISO 3166-1 alpha-2) where the offer is approved.
psdsApprovedCountries :: Lens' ProductStatusDestinationStatus [Text]
psdsApprovedCountries
  = lens _psdsApprovedCountries
      (\ s a -> s{_psdsApprovedCountries = a})
      . _Default
      . _Coerce

-- | List of country codes (ISO 3166-1 alpha-2) where the offer is
-- disapproved.
psdsDisApprovedCountries :: Lens' ProductStatusDestinationStatus [Text]
psdsDisApprovedCountries
  = lens _psdsDisApprovedCountries
      (\ s a -> s{_psdsDisApprovedCountries = a})
      . _Default
      . _Coerce

instance FromJSON ProductStatusDestinationStatus
         where
        parseJSON
          = withObject "ProductStatusDestinationStatus"
              (\ o ->
                 ProductStatusDestinationStatus' <$>
                   (o .:? "destination") <*> (o .:? "status") <*>
                     (o .:? "pendingCountries" .!= mempty)
                     <*> (o .:? "approvedCountries" .!= mempty)
                     <*> (o .:? "disapprovedCountries" .!= mempty))

instance ToJSON ProductStatusDestinationStatus where
        toJSON ProductStatusDestinationStatus'{..}
          = object
              (catMaybes
                 [("destination" .=) <$> _psdsDestination,
                  ("status" .=) <$> _psdsStatus,
                  ("pendingCountries" .=) <$> _psdsPendingCountries,
                  ("approvedCountries" .=) <$> _psdsApprovedCountries,
                  ("disapprovedCountries" .=) <$>
                    _psdsDisApprovedCountries])

-- | Regional inventory resource. contains the regional name and all
-- attributes which are overridden for the specified region.
--
-- /See:/ 'regionalInventory' smart constructor.
data RegionalInventory =
  RegionalInventory'
    { _riRegionId :: !(Maybe Text)
    , _riKind :: !(Maybe Text)
    , _riSalePrice :: !(Maybe Price)
    , _riAvailability :: !(Maybe Text)
    , _riCustomAttributes :: !(Maybe [CustomAttribute])
    , _riSalePriceEffectiveDate :: !(Maybe Text)
    , _riPrice :: !(Maybe Price)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionalInventory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riRegionId'
--
-- * 'riKind'
--
-- * 'riSalePrice'
--
-- * 'riAvailability'
--
-- * 'riCustomAttributes'
--
-- * 'riSalePriceEffectiveDate'
--
-- * 'riPrice'
regionalInventory
    :: RegionalInventory
regionalInventory =
  RegionalInventory'
    { _riRegionId = Nothing
    , _riKind = Nothing
    , _riSalePrice = Nothing
    , _riAvailability = Nothing
    , _riCustomAttributes = Nothing
    , _riSalePriceEffectiveDate = Nothing
    , _riPrice = Nothing
    }


-- | The ID uniquely identifying each region.
riRegionId :: Lens' RegionalInventory (Maybe Text)
riRegionId
  = lens _riRegionId (\ s a -> s{_riRegionId = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#regionalInventory\".
riKind :: Lens' RegionalInventory (Maybe Text)
riKind = lens _riKind (\ s a -> s{_riKind = a})

-- | The sale price of the product. Mandatory if
-- \`sale_price_effective_date\` is defined.
riSalePrice :: Lens' RegionalInventory (Maybe Price)
riSalePrice
  = lens _riSalePrice (\ s a -> s{_riSalePrice = a})

-- | The availability of the product.
riAvailability :: Lens' RegionalInventory (Maybe Text)
riAvailability
  = lens _riAvailability
      (\ s a -> s{_riAvailability = a})

-- | A list of custom (merchant-provided) attributes. It can also be used for
-- submitting any attribute of the feed specification in its generic form.
riCustomAttributes :: Lens' RegionalInventory [CustomAttribute]
riCustomAttributes
  = lens _riCustomAttributes
      (\ s a -> s{_riCustomAttributes = a})
      . _Default
      . _Coerce

-- | A date range represented by a pair of ISO 8601 dates separated by a
-- space, comma, or slash. Both dates might be specified as \'null\' if
-- undecided.
riSalePriceEffectiveDate :: Lens' RegionalInventory (Maybe Text)
riSalePriceEffectiveDate
  = lens _riSalePriceEffectiveDate
      (\ s a -> s{_riSalePriceEffectiveDate = a})

-- | The price of the product.
riPrice :: Lens' RegionalInventory (Maybe Price)
riPrice = lens _riPrice (\ s a -> s{_riPrice = a})

instance FromJSON RegionalInventory where
        parseJSON
          = withObject "RegionalInventory"
              (\ o ->
                 RegionalInventory' <$>
                   (o .:? "regionId") <*> (o .:? "kind") <*>
                     (o .:? "salePrice")
                     <*> (o .:? "availability")
                     <*> (o .:? "customAttributes" .!= mempty)
                     <*> (o .:? "salePriceEffectiveDate")
                     <*> (o .:? "price"))

instance ToJSON RegionalInventory where
        toJSON RegionalInventory'{..}
          = object
              (catMaybes
                 [("regionId" .=) <$> _riRegionId,
                  ("kind" .=) <$> _riKind,
                  ("salePrice" .=) <$> _riSalePrice,
                  ("availability" .=) <$> _riAvailability,
                  ("customAttributes" .=) <$> _riCustomAttributes,
                  ("salePriceEffectiveDate" .=) <$>
                    _riSalePriceEffectiveDate,
                  ("price" .=) <$> _riPrice])

-- | Tax calculation rule to apply in a state or province (USA only).
--
-- /See:/ 'accountTaxTaxRule' smart constructor.
data AccountTaxTaxRule =
  AccountTaxTaxRule'
    { _attrUseGlobalRate :: !(Maybe Bool)
    , _attrCountry :: !(Maybe Text)
    , _attrShippingTaxed :: !(Maybe Bool)
    , _attrLocationId :: !(Maybe (Textual Word64))
    , _attrRatePercent :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountTaxTaxRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'attrUseGlobalRate'
--
-- * 'attrCountry'
--
-- * 'attrShippingTaxed'
--
-- * 'attrLocationId'
--
-- * 'attrRatePercent'
accountTaxTaxRule
    :: AccountTaxTaxRule
accountTaxTaxRule =
  AccountTaxTaxRule'
    { _attrUseGlobalRate = Nothing
    , _attrCountry = Nothing
    , _attrShippingTaxed = Nothing
    , _attrLocationId = Nothing
    , _attrRatePercent = Nothing
    }


-- | Whether the tax rate is taken from a global tax table or specified
-- explicitly.
attrUseGlobalRate :: Lens' AccountTaxTaxRule (Maybe Bool)
attrUseGlobalRate
  = lens _attrUseGlobalRate
      (\ s a -> s{_attrUseGlobalRate = a})

-- | Country code in which tax is applicable.
attrCountry :: Lens' AccountTaxTaxRule (Maybe Text)
attrCountry
  = lens _attrCountry (\ s a -> s{_attrCountry = a})

-- | If true, shipping charges are also taxed.
attrShippingTaxed :: Lens' AccountTaxTaxRule (Maybe Bool)
attrShippingTaxed
  = lens _attrShippingTaxed
      (\ s a -> s{_attrShippingTaxed = a})

-- | Required. State (or province) is which the tax is applicable, described
-- by its location ID (also called criteria ID).
attrLocationId :: Lens' AccountTaxTaxRule (Maybe Word64)
attrLocationId
  = lens _attrLocationId
      (\ s a -> s{_attrLocationId = a})
      . mapping _Coerce

-- | Explicit tax rate in percent, represented as a floating point number
-- without the percentage character. Must not be negative.
attrRatePercent :: Lens' AccountTaxTaxRule (Maybe Text)
attrRatePercent
  = lens _attrRatePercent
      (\ s a -> s{_attrRatePercent = a})

instance FromJSON AccountTaxTaxRule where
        parseJSON
          = withObject "AccountTaxTaxRule"
              (\ o ->
                 AccountTaxTaxRule' <$>
                   (o .:? "useGlobalRate") <*> (o .:? "country") <*>
                     (o .:? "shippingTaxed")
                     <*> (o .:? "locationId")
                     <*> (o .:? "ratePercent"))

instance ToJSON AccountTaxTaxRule where
        toJSON AccountTaxTaxRule'{..}
          = object
              (catMaybes
                 [("useGlobalRate" .=) <$> _attrUseGlobalRate,
                  ("country" .=) <$> _attrCountry,
                  ("shippingTaxed" .=) <$> _attrShippingTaxed,
                  ("locationId" .=) <$> _attrLocationId,
                  ("ratePercent" .=) <$> _attrRatePercent])

-- | Batch entry encoding a single local inventory update response.
--
-- /See:/ 'localinventoryCustomBatchResponseEntry' smart constructor.
data LocalinventoryCustomBatchResponseEntry =
  LocalinventoryCustomBatchResponseEntry'
    { _lcbreKind :: !(Maybe Text)
    , _lcbreErrors :: !(Maybe Errors)
    , _lcbreBatchId :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocalinventoryCustomBatchResponseEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcbreKind'
--
-- * 'lcbreErrors'
--
-- * 'lcbreBatchId'
localinventoryCustomBatchResponseEntry
    :: LocalinventoryCustomBatchResponseEntry
localinventoryCustomBatchResponseEntry =
  LocalinventoryCustomBatchResponseEntry'
    {_lcbreKind = Nothing, _lcbreErrors = Nothing, _lcbreBatchId = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"\`content#localinventoryCustomBatchResponseEntry\`\"
lcbreKind :: Lens' LocalinventoryCustomBatchResponseEntry (Maybe Text)
lcbreKind
  = lens _lcbreKind (\ s a -> s{_lcbreKind = a})

-- | A list of errors defined if and only if the request failed.
lcbreErrors :: Lens' LocalinventoryCustomBatchResponseEntry (Maybe Errors)
lcbreErrors
  = lens _lcbreErrors (\ s a -> s{_lcbreErrors = a})

-- | The ID of the request entry this entry responds to.
lcbreBatchId :: Lens' LocalinventoryCustomBatchResponseEntry (Maybe Word32)
lcbreBatchId
  = lens _lcbreBatchId (\ s a -> s{_lcbreBatchId = a})
      . mapping _Coerce

instance FromJSON
           LocalinventoryCustomBatchResponseEntry
         where
        parseJSON
          = withObject "LocalinventoryCustomBatchResponseEntry"
              (\ o ->
                 LocalinventoryCustomBatchResponseEntry' <$>
                   (o .:? "kind") <*> (o .:? "errors") <*>
                     (o .:? "batchId"))

instance ToJSON
           LocalinventoryCustomBatchResponseEntry
         where
        toJSON LocalinventoryCustomBatchResponseEntry'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _lcbreKind,
                  ("errors" .=) <$> _lcbreErrors,
                  ("batchId" .=) <$> _lcbreBatchId])

--
-- /See:/ 'postalCodeGroup' smart constructor.
data PostalCodeGroup =
  PostalCodeGroup'
    { _pcgCountry :: !(Maybe Text)
    , _pcgPostalCodeRanges :: !(Maybe [PostalCodeRange])
    , _pcgName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PostalCodeGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcgCountry'
--
-- * 'pcgPostalCodeRanges'
--
-- * 'pcgName'
postalCodeGroup
    :: PostalCodeGroup
postalCodeGroup =
  PostalCodeGroup'
    {_pcgCountry = Nothing, _pcgPostalCodeRanges = Nothing, _pcgName = Nothing}


-- | The CLDR territory code of the country the postal code group applies to.
-- Required.
pcgCountry :: Lens' PostalCodeGroup (Maybe Text)
pcgCountry
  = lens _pcgCountry (\ s a -> s{_pcgCountry = a})

-- | A range of postal codes. Required.
pcgPostalCodeRanges :: Lens' PostalCodeGroup [PostalCodeRange]
pcgPostalCodeRanges
  = lens _pcgPostalCodeRanges
      (\ s a -> s{_pcgPostalCodeRanges = a})
      . _Default
      . _Coerce

-- | The name of the postal code group, referred to in headers. Required.
pcgName :: Lens' PostalCodeGroup (Maybe Text)
pcgName = lens _pcgName (\ s a -> s{_pcgName = a})

instance FromJSON PostalCodeGroup where
        parseJSON
          = withObject "PostalCodeGroup"
              (\ o ->
                 PostalCodeGroup' <$>
                   (o .:? "country") <*>
                     (o .:? "postalCodeRanges" .!= mempty)
                     <*> (o .:? "name"))

instance ToJSON PostalCodeGroup where
        toJSON PostalCodeGroup'{..}
          = object
              (catMaybes
                 [("country" .=) <$> _pcgCountry,
                  ("postalCodeRanges" .=) <$> _pcgPostalCodeRanges,
                  ("name" .=) <$> _pcgName])

--
-- /See:/ 'testOrderPickupDetailsPickupPerson' smart constructor.
data TestOrderPickupDetailsPickupPerson =
  TestOrderPickupDetailsPickupPerson'
    { _topdppName :: !(Maybe Text)
    , _topdppPhoneNumber :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestOrderPickupDetailsPickupPerson' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'topdppName'
--
-- * 'topdppPhoneNumber'
testOrderPickupDetailsPickupPerson
    :: TestOrderPickupDetailsPickupPerson
testOrderPickupDetailsPickupPerson =
  TestOrderPickupDetailsPickupPerson'
    {_topdppName = Nothing, _topdppPhoneNumber = Nothing}


-- | Required. Full name of the pickup person.
topdppName :: Lens' TestOrderPickupDetailsPickupPerson (Maybe Text)
topdppName
  = lens _topdppName (\ s a -> s{_topdppName = a})

-- | Required. The phone number of the person picking up the items.
topdppPhoneNumber :: Lens' TestOrderPickupDetailsPickupPerson (Maybe Text)
topdppPhoneNumber
  = lens _topdppPhoneNumber
      (\ s a -> s{_topdppPhoneNumber = a})

instance FromJSON TestOrderPickupDetailsPickupPerson
         where
        parseJSON
          = withObject "TestOrderPickupDetailsPickupPerson"
              (\ o ->
                 TestOrderPickupDetailsPickupPerson' <$>
                   (o .:? "name") <*> (o .:? "phoneNumber"))

instance ToJSON TestOrderPickupDetailsPickupPerson
         where
        toJSON TestOrderPickupDetailsPickupPerson'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _topdppName,
                  ("phoneNumber" .=) <$> _topdppPhoneNumber])

-- | Performance metrics. Values are only set for metrics requested
-- explicitly in the request\'s search query.
--
-- /See:/ 'metrics' smart constructor.
data Metrics =
  Metrics'
    { _mImpressions :: !(Maybe (Textual Int64))
    , _mCtr :: !(Maybe (Textual Double))
    , _mClicks :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Metrics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mImpressions'
--
-- * 'mCtr'
--
-- * 'mClicks'
metrics
    :: Metrics
metrics =
  Metrics' {_mImpressions = Nothing, _mCtr = Nothing, _mClicks = Nothing}


-- | Number of times merchant\'s products are shown.
mImpressions :: Lens' Metrics (Maybe Int64)
mImpressions
  = lens _mImpressions (\ s a -> s{_mImpressions = a})
      . mapping _Coerce

-- | Number of clicks merchant\'s products receive (clicks) divided by the
-- number of times the products are shown (impressions).
mCtr :: Lens' Metrics (Maybe Double)
mCtr
  = lens _mCtr (\ s a -> s{_mCtr = a}) .
      mapping _Coerce

-- | Number of clicks.
mClicks :: Lens' Metrics (Maybe Int64)
mClicks
  = lens _mClicks (\ s a -> s{_mClicks = a}) .
      mapping _Coerce

instance FromJSON Metrics where
        parseJSON
          = withObject "Metrics"
              (\ o ->
                 Metrics' <$>
                   (o .:? "impressions") <*> (o .:? "ctr") <*>
                     (o .:? "clicks"))

instance ToJSON Metrics where
        toJSON Metrics'{..}
          = object
              (catMaybes
                 [("impressions" .=) <$> _mImpressions,
                  ("ctr" .=) <$> _mCtr, ("clicks" .=) <$> _mClicks])

--
-- /See:/ 'datafeedsCustomBatchRequest' smart constructor.
newtype DatafeedsCustomBatchRequest =
  DatafeedsCustomBatchRequest'
    { _dEntries :: Maybe [DatafeedsCustomBatchRequestEntry]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatafeedsCustomBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dEntries'
datafeedsCustomBatchRequest
    :: DatafeedsCustomBatchRequest
datafeedsCustomBatchRequest = DatafeedsCustomBatchRequest' {_dEntries = Nothing}


-- | The request entries to be processed in the batch.
dEntries :: Lens' DatafeedsCustomBatchRequest [DatafeedsCustomBatchRequestEntry]
dEntries
  = lens _dEntries (\ s a -> s{_dEntries = a}) .
      _Default
      . _Coerce

instance FromJSON DatafeedsCustomBatchRequest where
        parseJSON
          = withObject "DatafeedsCustomBatchRequest"
              (\ o ->
                 DatafeedsCustomBatchRequest' <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON DatafeedsCustomBatchRequest where
        toJSON DatafeedsCustomBatchRequest'{..}
          = object (catMaybes [("entries" .=) <$> _dEntries])

-- | Definition of stats based rule.
--
-- /See:/ 'repricingRuleStatsBasedRule' smart constructor.
data RepricingRuleStatsBasedRule =
  RepricingRuleStatsBasedRule'
    { _rrsbrPriceDelta :: !(Maybe Text)
    , _rrsbrPercentageDelta :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RepricingRuleStatsBasedRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrsbrPriceDelta'
--
-- * 'rrsbrPercentageDelta'
repricingRuleStatsBasedRule
    :: RepricingRuleStatsBasedRule
repricingRuleStatsBasedRule =
  RepricingRuleStatsBasedRule'
    {_rrsbrPriceDelta = Nothing, _rrsbrPercentageDelta = Nothing}


-- | The price delta against the above price target. A positive value means
-- the price should be adjusted to be above statistical measure, and a
-- negative value means below. Currency code must not be included.
rrsbrPriceDelta :: Lens' RepricingRuleStatsBasedRule (Maybe Text)
rrsbrPriceDelta
  = lens _rrsbrPriceDelta
      (\ s a -> s{_rrsbrPriceDelta = a})

-- | The percent change against the price target. Valid from 0 to 100
-- inclusively.
rrsbrPercentageDelta :: Lens' RepricingRuleStatsBasedRule (Maybe Int32)
rrsbrPercentageDelta
  = lens _rrsbrPercentageDelta
      (\ s a -> s{_rrsbrPercentageDelta = a})
      . mapping _Coerce

instance FromJSON RepricingRuleStatsBasedRule where
        parseJSON
          = withObject "RepricingRuleStatsBasedRule"
              (\ o ->
                 RepricingRuleStatsBasedRule' <$>
                   (o .:? "priceDelta") <*> (o .:? "percentageDelta"))

instance ToJSON RepricingRuleStatsBasedRule where
        toJSON RepricingRuleStatsBasedRule'{..}
          = object
              (catMaybes
                 [("priceDelta" .=) <$> _rrsbrPriceDelta,
                  ("percentageDelta" .=) <$> _rrsbrPercentageDelta])

--
-- /See:/ 'ordersRefundItemRequest' smart constructor.
data OrdersRefundItemRequest =
  OrdersRefundItemRequest'
    { _orirItems :: !(Maybe [OrdersCustomBatchRequestEntryRefundItemItem])
    , _orirReason :: !(Maybe Text)
    , _orirShipping :: !(Maybe OrdersCustomBatchRequestEntryRefundItemShipping)
    , _orirOperationId :: !(Maybe Text)
    , _orirReasonText :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersRefundItemRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orirItems'
--
-- * 'orirReason'
--
-- * 'orirShipping'
--
-- * 'orirOperationId'
--
-- * 'orirReasonText'
ordersRefundItemRequest
    :: OrdersRefundItemRequest
ordersRefundItemRequest =
  OrdersRefundItemRequest'
    { _orirItems = Nothing
    , _orirReason = Nothing
    , _orirShipping = Nothing
    , _orirOperationId = Nothing
    , _orirReasonText = Nothing
    }


-- | The items that are refunded. Either Item or Shipping must be provided in
-- the request.
orirItems :: Lens' OrdersRefundItemRequest [OrdersCustomBatchRequestEntryRefundItemItem]
orirItems
  = lens _orirItems (\ s a -> s{_orirItems = a}) .
      _Default
      . _Coerce

-- | The reason for the refund. Acceptable values are: -
-- \"\`shippingCostAdjustment\`\" - \"\`priceAdjustment\`\" -
-- \"\`taxAdjustment\`\" - \"\`feeAdjustment\`\" -
-- \"\`courtesyAdjustment\`\" - \"\`adjustment\`\" -
-- \"\`customerCancelled\`\" - \"\`noInventory\`\" -
-- \"\`productNotAsDescribed\`\" - \"\`undeliverableShippingAddress\`\" -
-- \"\`wrongProductShipped\`\" - \"\`lateShipmentCredit\`\" -
-- \"\`deliveredLateByCarrier\`\" - \"\`productArrivedDamaged\`\"
orirReason :: Lens' OrdersRefundItemRequest (Maybe Text)
orirReason
  = lens _orirReason (\ s a -> s{_orirReason = a})

-- | The refund on shipping. Optional, but either Item or Shipping must be
-- provided in the request.
orirShipping :: Lens' OrdersRefundItemRequest (Maybe OrdersCustomBatchRequestEntryRefundItemShipping)
orirShipping
  = lens _orirShipping (\ s a -> s{_orirShipping = a})

-- | The ID of the operation. Unique across all operations for a given order.
orirOperationId :: Lens' OrdersRefundItemRequest (Maybe Text)
orirOperationId
  = lens _orirOperationId
      (\ s a -> s{_orirOperationId = a})

-- | The explanation of the reason.
orirReasonText :: Lens' OrdersRefundItemRequest (Maybe Text)
orirReasonText
  = lens _orirReasonText
      (\ s a -> s{_orirReasonText = a})

instance FromJSON OrdersRefundItemRequest where
        parseJSON
          = withObject "OrdersRefundItemRequest"
              (\ o ->
                 OrdersRefundItemRequest' <$>
                   (o .:? "items" .!= mempty) <*> (o .:? "reason") <*>
                     (o .:? "shipping")
                     <*> (o .:? "operationId")
                     <*> (o .:? "reasonText"))

instance ToJSON OrdersRefundItemRequest where
        toJSON OrdersRefundItemRequest'{..}
          = object
              (catMaybes
                 [("items" .=) <$> _orirItems,
                  ("reason" .=) <$> _orirReason,
                  ("shipping" .=) <$> _orirShipping,
                  ("operationId" .=) <$> _orirOperationId,
                  ("reasonText" .=) <$> _orirReasonText])

-- | A batch entry encoding a single non-batch regional inventory response.
--
-- /See:/ 'regionalinventoryCustomBatchResponseEntry' smart constructor.
data RegionalinventoryCustomBatchResponseEntry =
  RegionalinventoryCustomBatchResponseEntry'
    { _rcbreRegionalInventory :: !(Maybe RegionalInventory)
    , _rcbreKind :: !(Maybe Text)
    , _rcbreErrors :: !(Maybe Errors)
    , _rcbreBatchId :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionalinventoryCustomBatchResponseEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcbreRegionalInventory'
--
-- * 'rcbreKind'
--
-- * 'rcbreErrors'
--
-- * 'rcbreBatchId'
regionalinventoryCustomBatchResponseEntry
    :: RegionalinventoryCustomBatchResponseEntry
regionalinventoryCustomBatchResponseEntry =
  RegionalinventoryCustomBatchResponseEntry'
    { _rcbreRegionalInventory = Nothing
    , _rcbreKind = Nothing
    , _rcbreErrors = Nothing
    , _rcbreBatchId = Nothing
    }


-- | Price and availability of the product.
rcbreRegionalInventory :: Lens' RegionalinventoryCustomBatchResponseEntry (Maybe RegionalInventory)
rcbreRegionalInventory
  = lens _rcbreRegionalInventory
      (\ s a -> s{_rcbreRegionalInventory = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#regionalinventoryCustomBatchResponseEntry\".
rcbreKind :: Lens' RegionalinventoryCustomBatchResponseEntry (Maybe Text)
rcbreKind
  = lens _rcbreKind (\ s a -> s{_rcbreKind = a})

-- | A list of errors defined if and only if the request failed.
rcbreErrors :: Lens' RegionalinventoryCustomBatchResponseEntry (Maybe Errors)
rcbreErrors
  = lens _rcbreErrors (\ s a -> s{_rcbreErrors = a})

-- | The ID of the request entry this entry responds to.
rcbreBatchId :: Lens' RegionalinventoryCustomBatchResponseEntry (Maybe Word32)
rcbreBatchId
  = lens _rcbreBatchId (\ s a -> s{_rcbreBatchId = a})
      . mapping _Coerce

instance FromJSON
           RegionalinventoryCustomBatchResponseEntry
         where
        parseJSON
          = withObject
              "RegionalinventoryCustomBatchResponseEntry"
              (\ o ->
                 RegionalinventoryCustomBatchResponseEntry' <$>
                   (o .:? "regionalInventory") <*> (o .:? "kind") <*>
                     (o .:? "errors")
                     <*> (o .:? "batchId"))

instance ToJSON
           RegionalinventoryCustomBatchResponseEntry
         where
        toJSON RegionalinventoryCustomBatchResponseEntry'{..}
          = object
              (catMaybes
                 [("regionalInventory" .=) <$>
                    _rcbreRegionalInventory,
                  ("kind" .=) <$> _rcbreKind,
                  ("errors" .=) <$> _rcbreErrors,
                  ("batchId" .=) <$> _rcbreBatchId])

--
-- /See:/ 'ordersCancelTestOrderByCustomerResponse' smart constructor.
newtype OrdersCancelTestOrderByCustomerResponse =
  OrdersCancelTestOrderByCustomerResponse'
    { _octobcrKind :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersCancelTestOrderByCustomerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'octobcrKind'
ordersCancelTestOrderByCustomerResponse
    :: OrdersCancelTestOrderByCustomerResponse
ordersCancelTestOrderByCustomerResponse =
  OrdersCancelTestOrderByCustomerResponse' {_octobcrKind = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersCancelTestOrderByCustomerResponse\".
octobcrKind :: Lens' OrdersCancelTestOrderByCustomerResponse (Maybe Text)
octobcrKind
  = lens _octobcrKind (\ s a -> s{_octobcrKind = a})

instance FromJSON
           OrdersCancelTestOrderByCustomerResponse
         where
        parseJSON
          = withObject
              "OrdersCancelTestOrderByCustomerResponse"
              (\ o ->
                 OrdersCancelTestOrderByCustomerResponse' <$>
                   (o .:? "kind"))

instance ToJSON
           OrdersCancelTestOrderByCustomerResponse
         where
        toJSON OrdersCancelTestOrderByCustomerResponse'{..}
          = object (catMaybes [("kind" .=) <$> _octobcrKind])

--
-- /See:/ 'liaOnDisplayToOrderSettings' smart constructor.
data LiaOnDisplayToOrderSettings =
  LiaOnDisplayToOrderSettings'
    { _lodtosStatus :: !(Maybe Text)
    , _lodtosShippingCostPolicyURL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiaOnDisplayToOrderSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lodtosStatus'
--
-- * 'lodtosShippingCostPolicyURL'
liaOnDisplayToOrderSettings
    :: LiaOnDisplayToOrderSettings
liaOnDisplayToOrderSettings =
  LiaOnDisplayToOrderSettings'
    {_lodtosStatus = Nothing, _lodtosShippingCostPolicyURL = Nothing}


-- | The status of the ?On display to order? feature. Acceptable values are:
-- - \"\`active\`\" - \"\`inactive\`\" - \"\`pending\`\"
lodtosStatus :: Lens' LiaOnDisplayToOrderSettings (Maybe Text)
lodtosStatus
  = lens _lodtosStatus (\ s a -> s{_lodtosStatus = a})

-- | Shipping cost and policy URL.
lodtosShippingCostPolicyURL :: Lens' LiaOnDisplayToOrderSettings (Maybe Text)
lodtosShippingCostPolicyURL
  = lens _lodtosShippingCostPolicyURL
      (\ s a -> s{_lodtosShippingCostPolicyURL = a})

instance FromJSON LiaOnDisplayToOrderSettings where
        parseJSON
          = withObject "LiaOnDisplayToOrderSettings"
              (\ o ->
                 LiaOnDisplayToOrderSettings' <$>
                   (o .:? "status") <*> (o .:? "shippingCostPolicyUrl"))

instance ToJSON LiaOnDisplayToOrderSettings where
        toJSON LiaOnDisplayToOrderSettings'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _lodtosStatus,
                  ("shippingCostPolicyUrl" .=) <$>
                    _lodtosShippingCostPolicyURL])

--
-- /See:/ 'orderOrderAnnotation' smart constructor.
data OrderOrderAnnotation =
  OrderOrderAnnotation'
    { _ooaValue :: !(Maybe Text)
    , _ooaKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderOrderAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ooaValue'
--
-- * 'ooaKey'
orderOrderAnnotation
    :: OrderOrderAnnotation
orderOrderAnnotation =
  OrderOrderAnnotation' {_ooaValue = Nothing, _ooaKey = Nothing}


-- | Value for additional google provided (as key-value pairs) annotation.
ooaValue :: Lens' OrderOrderAnnotation (Maybe Text)
ooaValue = lens _ooaValue (\ s a -> s{_ooaValue = a})

-- | Key for additional google provided (as key-value pairs) annotation.
ooaKey :: Lens' OrderOrderAnnotation (Maybe Text)
ooaKey = lens _ooaKey (\ s a -> s{_ooaKey = a})

instance FromJSON OrderOrderAnnotation where
        parseJSON
          = withObject "OrderOrderAnnotation"
              (\ o ->
                 OrderOrderAnnotation' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON OrderOrderAnnotation where
        toJSON OrderOrderAnnotation'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _ooaValue, ("key" .=) <$> _ooaKey])

--
-- /See:/ 'accountAddress' smart constructor.
data AccountAddress =
  AccountAddress'
    { _aaStreetAddress :: !(Maybe Text)
    , _aaCountry :: !(Maybe Text)
    , _aaPostalCode :: !(Maybe Text)
    , _aaLocality :: !(Maybe Text)
    , _aaRegion :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountAddress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaStreetAddress'
--
-- * 'aaCountry'
--
-- * 'aaPostalCode'
--
-- * 'aaLocality'
--
-- * 'aaRegion'
accountAddress
    :: AccountAddress
accountAddress =
  AccountAddress'
    { _aaStreetAddress = Nothing
    , _aaCountry = Nothing
    , _aaPostalCode = Nothing
    , _aaLocality = Nothing
    , _aaRegion = Nothing
    }


-- | Street-level part of the address.
aaStreetAddress :: Lens' AccountAddress (Maybe Text)
aaStreetAddress
  = lens _aaStreetAddress
      (\ s a -> s{_aaStreetAddress = a})

-- | CLDR country code (e.g. \"US\"). This value cannot be set for a
-- sub-account of an MCA. All MCA sub-accounts inherit the country of their
-- parent MCA.
aaCountry :: Lens' AccountAddress (Maybe Text)
aaCountry
  = lens _aaCountry (\ s a -> s{_aaCountry = a})

-- | Postal code or ZIP (e.g. \"94043\").
aaPostalCode :: Lens' AccountAddress (Maybe Text)
aaPostalCode
  = lens _aaPostalCode (\ s a -> s{_aaPostalCode = a})

-- | City, town or commune. May also include dependent localities or
-- sublocalities (e.g. neighborhoods or suburbs).
aaLocality :: Lens' AccountAddress (Maybe Text)
aaLocality
  = lens _aaLocality (\ s a -> s{_aaLocality = a})

-- | Top-level administrative subdivision of the country. For example, a
-- state like California (\"CA\") or a province like Quebec (\"QC\").
aaRegion :: Lens' AccountAddress (Maybe Text)
aaRegion = lens _aaRegion (\ s a -> s{_aaRegion = a})

instance FromJSON AccountAddress where
        parseJSON
          = withObject "AccountAddress"
              (\ o ->
                 AccountAddress' <$>
                   (o .:? "streetAddress") <*> (o .:? "country") <*>
                     (o .:? "postalCode")
                     <*> (o .:? "locality")
                     <*> (o .:? "region"))

instance ToJSON AccountAddress where
        toJSON AccountAddress'{..}
          = object
              (catMaybes
                 [("streetAddress" .=) <$> _aaStreetAddress,
                  ("country" .=) <$> _aaCountry,
                  ("postalCode" .=) <$> _aaPostalCode,
                  ("locality" .=) <$> _aaLocality,
                  ("region" .=) <$> _aaRegion])

--
-- /See:/ 'orderLineItemAdjustment' smart constructor.
data OrderLineItemAdjustment =
  OrderLineItemAdjustment'
    { _oliaTaxAdjustment :: !(Maybe Price)
    , _oliaPriceAdjustment :: !(Maybe Price)
    , _oliaType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderLineItemAdjustment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oliaTaxAdjustment'
--
-- * 'oliaPriceAdjustment'
--
-- * 'oliaType'
orderLineItemAdjustment
    :: OrderLineItemAdjustment
orderLineItemAdjustment =
  OrderLineItemAdjustment'
    { _oliaTaxAdjustment = Nothing
    , _oliaPriceAdjustment = Nothing
    , _oliaType = Nothing
    }


-- | Adjustment for total tax of the line item.
oliaTaxAdjustment :: Lens' OrderLineItemAdjustment (Maybe Price)
oliaTaxAdjustment
  = lens _oliaTaxAdjustment
      (\ s a -> s{_oliaTaxAdjustment = a})

-- | Adjustment for total price of the line item.
oliaPriceAdjustment :: Lens' OrderLineItemAdjustment (Maybe Price)
oliaPriceAdjustment
  = lens _oliaPriceAdjustment
      (\ s a -> s{_oliaPriceAdjustment = a})

-- | Type of this adjustment. Acceptable values are: - \"\`promotion\`\"
oliaType :: Lens' OrderLineItemAdjustment (Maybe Text)
oliaType = lens _oliaType (\ s a -> s{_oliaType = a})

instance FromJSON OrderLineItemAdjustment where
        parseJSON
          = withObject "OrderLineItemAdjustment"
              (\ o ->
                 OrderLineItemAdjustment' <$>
                   (o .:? "taxAdjustment") <*> (o .:? "priceAdjustment")
                     <*> (o .:? "type"))

instance ToJSON OrderLineItemAdjustment where
        toJSON OrderLineItemAdjustment'{..}
          = object
              (catMaybes
                 [("taxAdjustment" .=) <$> _oliaTaxAdjustment,
                  ("priceAdjustment" .=) <$> _oliaPriceAdjustment,
                  ("type" .=) <$> _oliaType])

--
-- /See:/ 'returnaddressCustomBatchRequest' smart constructor.
newtype ReturnaddressCustomBatchRequest =
  ReturnaddressCustomBatchRequest'
    { _rEntries :: Maybe [ReturnaddressCustomBatchRequestEntry]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReturnaddressCustomBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rEntries'
returnaddressCustomBatchRequest
    :: ReturnaddressCustomBatchRequest
returnaddressCustomBatchRequest =
  ReturnaddressCustomBatchRequest' {_rEntries = Nothing}


-- | The request entries to be processed in the batch.
rEntries :: Lens' ReturnaddressCustomBatchRequest [ReturnaddressCustomBatchRequestEntry]
rEntries
  = lens _rEntries (\ s a -> s{_rEntries = a}) .
      _Default
      . _Coerce

instance FromJSON ReturnaddressCustomBatchRequest
         where
        parseJSON
          = withObject "ReturnaddressCustomBatchRequest"
              (\ o ->
                 ReturnaddressCustomBatchRequest' <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON ReturnaddressCustomBatchRequest where
        toJSON ReturnaddressCustomBatchRequest'{..}
          = object (catMaybes [("entries" .=) <$> _rEntries])

--
-- /See:/ 'invoiceSummaryAdditionalChargeSummary' smart constructor.
data InvoiceSummaryAdditionalChargeSummary =
  InvoiceSummaryAdditionalChargeSummary'
    { _isacsTotalAmount :: !(Maybe Amount)
    , _isacsType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InvoiceSummaryAdditionalChargeSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isacsTotalAmount'
--
-- * 'isacsType'
invoiceSummaryAdditionalChargeSummary
    :: InvoiceSummaryAdditionalChargeSummary
invoiceSummaryAdditionalChargeSummary =
  InvoiceSummaryAdditionalChargeSummary'
    {_isacsTotalAmount = Nothing, _isacsType = Nothing}


-- | [required] Total additional charge for this type.
isacsTotalAmount :: Lens' InvoiceSummaryAdditionalChargeSummary (Maybe Amount)
isacsTotalAmount
  = lens _isacsTotalAmount
      (\ s a -> s{_isacsTotalAmount = a})

-- | [required] Type of the additional charge. Acceptable values are: -
-- \"\`shipping\`\"
isacsType :: Lens' InvoiceSummaryAdditionalChargeSummary (Maybe Text)
isacsType
  = lens _isacsType (\ s a -> s{_isacsType = a})

instance FromJSON
           InvoiceSummaryAdditionalChargeSummary
         where
        parseJSON
          = withObject "InvoiceSummaryAdditionalChargeSummary"
              (\ o ->
                 InvoiceSummaryAdditionalChargeSummary' <$>
                   (o .:? "totalAmount") <*> (o .:? "type"))

instance ToJSON InvoiceSummaryAdditionalChargeSummary
         where
        toJSON InvoiceSummaryAdditionalChargeSummary'{..}
          = object
              (catMaybes
                 [("totalAmount" .=) <$> _isacsTotalAmount,
                  ("type" .=) <$> _isacsType])

-- | Response message for the \`ListRegions\` method.
--
-- /See:/ 'listRegionsResponse' smart constructor.
data ListRegionsResponse =
  ListRegionsResponse'
    { _lrrNextPageToken :: !(Maybe Text)
    , _lrrRegions :: !(Maybe [Region])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListRegionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrrNextPageToken'
--
-- * 'lrrRegions'
listRegionsResponse
    :: ListRegionsResponse
listRegionsResponse =
  ListRegionsResponse' {_lrrNextPageToken = Nothing, _lrrRegions = Nothing}


-- | A token, which can be sent as \`page_token\` to retrieve the next page.
-- If this field is omitted, there are no subsequent pages.
lrrNextPageToken :: Lens' ListRegionsResponse (Maybe Text)
lrrNextPageToken
  = lens _lrrNextPageToken
      (\ s a -> s{_lrrNextPageToken = a})

-- | The regions from the specified merchant.
lrrRegions :: Lens' ListRegionsResponse [Region]
lrrRegions
  = lens _lrrRegions (\ s a -> s{_lrrRegions = a}) .
      _Default
      . _Coerce

instance FromJSON ListRegionsResponse where
        parseJSON
          = withObject "ListRegionsResponse"
              (\ o ->
                 ListRegionsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "regions" .!= mempty))

instance ToJSON ListRegionsResponse where
        toJSON ListRegionsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lrrNextPageToken,
                  ("regions" .=) <$> _lrrRegions])

--
-- /See:/ 'refundReason' smart constructor.
data RefundReason =
  RefundReason'
    { _rrReasonCode :: !(Maybe Text)
    , _rrDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RefundReason' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrReasonCode'
--
-- * 'rrDescription'
refundReason
    :: RefundReason
refundReason = RefundReason' {_rrReasonCode = Nothing, _rrDescription = Nothing}


-- | Code of the refund reason. Acceptable values are: - \"\`adjustment\`\" -
-- \"\`autoPostInternal\`\" - \"\`autoPostInvalidBillingAddress\`\" -
-- \"\`autoPostNoInventory\`\" - \"\`autoPostPriceError\`\" -
-- \"\`autoPostUndeliverableShippingAddress\`\" - \"\`couponAbuse\`\" -
-- \"\`courtesyAdjustment\`\" - \"\`customerCanceled\`\" -
-- \"\`customerDiscretionaryReturn\`\" -
-- \"\`customerInitiatedMerchantCancel\`\" -
-- \"\`customerSupportRequested\`\" - \"\`deliveredLateByCarrier\`\" -
-- \"\`deliveredTooLate\`\" - \"\`expiredItem\`\" -
-- \"\`failToPushOrderGoogleError\`\" -
-- \"\`failToPushOrderMerchantError\`\" -
-- \"\`failToPushOrderMerchantFulfillmentError\`\" -
-- \"\`failToPushOrderToMerchant\`\" -
-- \"\`failToPushOrderToMerchantOutOfStock\`\" - \"\`feeAdjustment\`\" -
-- \"\`invalidCoupon\`\" - \"\`lateShipmentCredit\`\" -
-- \"\`malformedShippingAddress\`\" - \"\`merchantDidNotShipOnTime\`\" -
-- \"\`noInventory\`\" - \"\`orderTimeout\`\" - \"\`other\`\" -
-- \"\`paymentAbuse\`\" - \"\`paymentDeclined\`\" - \"\`priceAdjustment\`\"
-- - \"\`priceError\`\" - \"\`productArrivedDamaged\`\" -
-- \"\`productNotAsDescribed\`\" - \"\`promoReallocation\`\" -
-- \"\`qualityNotAsExpected\`\" - \"\`returnRefundAbuse\`\" -
-- \"\`shippingCostAdjustment\`\" - \"\`shippingPriceError\`\" -
-- \"\`taxAdjustment\`\" - \"\`taxError\`\" -
-- \"\`undeliverableShippingAddress\`\" - \"\`unsupportedPoBoxAddress\`\" -
-- \"\`wrongProductShipped\`\"
rrReasonCode :: Lens' RefundReason (Maybe Text)
rrReasonCode
  = lens _rrReasonCode (\ s a -> s{_rrReasonCode = a})

-- | Description of the reason.
rrDescription :: Lens' RefundReason (Maybe Text)
rrDescription
  = lens _rrDescription
      (\ s a -> s{_rrDescription = a})

instance FromJSON RefundReason where
        parseJSON
          = withObject "RefundReason"
              (\ o ->
                 RefundReason' <$>
                   (o .:? "reasonCode") <*> (o .:? "description"))

instance ToJSON RefundReason where
        toJSON RefundReason'{..}
          = object
              (catMaybes
                 [("reasonCode" .=) <$> _rrReasonCode,
                  ("description" .=) <$> _rrDescription])

--
-- /See:/ 'orderLineItemShippingDetailsMethod' smart constructor.
data OrderLineItemShippingDetailsMethod =
  OrderLineItemShippingDetailsMethod'
    { _olisdmCarrier :: !(Maybe Text)
    , _olisdmMethodName :: !(Maybe Text)
    , _olisdmMaxDaysInTransit :: !(Maybe (Textual Word32))
    , _olisdmMinDaysInTransit :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderLineItemShippingDetailsMethod' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olisdmCarrier'
--
-- * 'olisdmMethodName'
--
-- * 'olisdmMaxDaysInTransit'
--
-- * 'olisdmMinDaysInTransit'
orderLineItemShippingDetailsMethod
    :: OrderLineItemShippingDetailsMethod
orderLineItemShippingDetailsMethod =
  OrderLineItemShippingDetailsMethod'
    { _olisdmCarrier = Nothing
    , _olisdmMethodName = Nothing
    , _olisdmMaxDaysInTransit = Nothing
    , _olisdmMinDaysInTransit = Nothing
    }


-- | The carrier for the shipping. Optional. See \`shipments[].carrier\` for
-- a list of acceptable values.
olisdmCarrier :: Lens' OrderLineItemShippingDetailsMethod (Maybe Text)
olisdmCarrier
  = lens _olisdmCarrier
      (\ s a -> s{_olisdmCarrier = a})

-- | Required. The name of the shipping method.
olisdmMethodName :: Lens' OrderLineItemShippingDetailsMethod (Maybe Text)
olisdmMethodName
  = lens _olisdmMethodName
      (\ s a -> s{_olisdmMethodName = a})

-- | Required. Maximum transit time.
olisdmMaxDaysInTransit :: Lens' OrderLineItemShippingDetailsMethod (Maybe Word32)
olisdmMaxDaysInTransit
  = lens _olisdmMaxDaysInTransit
      (\ s a -> s{_olisdmMaxDaysInTransit = a})
      . mapping _Coerce

-- | Required. Minimum transit time.
olisdmMinDaysInTransit :: Lens' OrderLineItemShippingDetailsMethod (Maybe Word32)
olisdmMinDaysInTransit
  = lens _olisdmMinDaysInTransit
      (\ s a -> s{_olisdmMinDaysInTransit = a})
      . mapping _Coerce

instance FromJSON OrderLineItemShippingDetailsMethod
         where
        parseJSON
          = withObject "OrderLineItemShippingDetailsMethod"
              (\ o ->
                 OrderLineItemShippingDetailsMethod' <$>
                   (o .:? "carrier") <*> (o .:? "methodName") <*>
                     (o .:? "maxDaysInTransit")
                     <*> (o .:? "minDaysInTransit"))

instance ToJSON OrderLineItemShippingDetailsMethod
         where
        toJSON OrderLineItemShippingDetailsMethod'{..}
          = object
              (catMaybes
                 [("carrier" .=) <$> _olisdmCarrier,
                  ("methodName" .=) <$> _olisdmMethodName,
                  ("maxDaysInTransit" .=) <$> _olisdmMaxDaysInTransit,
                  ("minDaysInTransit" .=) <$> _olisdmMinDaysInTransit])

-- | Datafeed configuration data.
--
-- /See:/ 'datafeed' smart constructor.
data Datafeed =
  Datafeed'
    { _dKind :: !(Maybe Text)
    , _dFormat :: !(Maybe DatafeedFormat)
    , _dAttributeLanguage :: !(Maybe Text)
    , _dFetchSchedule :: !(Maybe DatafeedFetchSchedule)
    , _dName :: !(Maybe Text)
    , _dTargets :: !(Maybe [DatafeedTarget])
    , _dId :: !(Maybe (Textual Int64))
    , _dContentType :: !(Maybe Text)
    , _dFileName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Datafeed' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dKind'
--
-- * 'dFormat'
--
-- * 'dAttributeLanguage'
--
-- * 'dFetchSchedule'
--
-- * 'dName'
--
-- * 'dTargets'
--
-- * 'dId'
--
-- * 'dContentType'
--
-- * 'dFileName'
datafeed
    :: Datafeed
datafeed =
  Datafeed'
    { _dKind = Nothing
    , _dFormat = Nothing
    , _dAttributeLanguage = Nothing
    , _dFetchSchedule = Nothing
    , _dName = Nothing
    , _dTargets = Nothing
    , _dId = Nothing
    , _dContentType = Nothing
    , _dFileName = Nothing
    }


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"\`content#datafeed\`\"
dKind :: Lens' Datafeed (Maybe Text)
dKind = lens _dKind (\ s a -> s{_dKind = a})

-- | Format of the feed file.
dFormat :: Lens' Datafeed (Maybe DatafeedFormat)
dFormat = lens _dFormat (\ s a -> s{_dFormat = a})

-- | The two-letter ISO 639-1 language in which the attributes are defined in
-- the data feed.
dAttributeLanguage :: Lens' Datafeed (Maybe Text)
dAttributeLanguage
  = lens _dAttributeLanguage
      (\ s a -> s{_dAttributeLanguage = a})

-- | Fetch schedule for the feed file.
dFetchSchedule :: Lens' Datafeed (Maybe DatafeedFetchSchedule)
dFetchSchedule
  = lens _dFetchSchedule
      (\ s a -> s{_dFetchSchedule = a})

-- | Required for insert. A descriptive name of the data feed.
dName :: Lens' Datafeed (Maybe Text)
dName = lens _dName (\ s a -> s{_dName = a})

-- | The targets this feed should apply to (country, language, destinations).
dTargets :: Lens' Datafeed [DatafeedTarget]
dTargets
  = lens _dTargets (\ s a -> s{_dTargets = a}) .
      _Default
      . _Coerce

-- | Required for update. The ID of the data feed.
dId :: Lens' Datafeed (Maybe Int64)
dId
  = lens _dId (\ s a -> s{_dId = a}) . mapping _Coerce

-- | Required. The type of data feed. For product inventory feeds, only feeds
-- for local stores, not online stores, are supported. Acceptable values
-- are: - \"\`local products\`\" - \"\`product inventory\`\" -
-- \"\`products\`\"
dContentType :: Lens' Datafeed (Maybe Text)
dContentType
  = lens _dContentType (\ s a -> s{_dContentType = a})

-- | Required. The filename of the feed. All feeds must have a unique file
-- name.
dFileName :: Lens' Datafeed (Maybe Text)
dFileName
  = lens _dFileName (\ s a -> s{_dFileName = a})

instance FromJSON Datafeed where
        parseJSON
          = withObject "Datafeed"
              (\ o ->
                 Datafeed' <$>
                   (o .:? "kind") <*> (o .:? "format") <*>
                     (o .:? "attributeLanguage")
                     <*> (o .:? "fetchSchedule")
                     <*> (o .:? "name")
                     <*> (o .:? "targets" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "contentType")
                     <*> (o .:? "fileName"))

instance ToJSON Datafeed where
        toJSON Datafeed'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _dKind, ("format" .=) <$> _dFormat,
                  ("attributeLanguage" .=) <$> _dAttributeLanguage,
                  ("fetchSchedule" .=) <$> _dFetchSchedule,
                  ("name" .=) <$> _dName, ("targets" .=) <$> _dTargets,
                  ("id" .=) <$> _dId,
                  ("contentType" .=) <$> _dContentType,
                  ("fileName" .=) <$> _dFileName])

--
-- /See:/ 'returnPolicyPolicy' smart constructor.
data ReturnPolicyPolicy =
  ReturnPolicyPolicy'
    { _rppLastReturnDate :: !(Maybe Text)
    , _rppNumberOfDays :: !(Maybe (Textual Int64))
    , _rppType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReturnPolicyPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rppLastReturnDate'
--
-- * 'rppNumberOfDays'
--
-- * 'rppType'
returnPolicyPolicy
    :: ReturnPolicyPolicy
returnPolicyPolicy =
  ReturnPolicyPolicy'
    { _rppLastReturnDate = Nothing
    , _rppNumberOfDays = Nothing
    , _rppType = Nothing
    }


-- | Required. Last day for returning the items. In ISO 8601 format. When
-- specifying the return window like this, set the policy type to
-- \"lastReturnDate\". Use this for seasonal overrides only.
rppLastReturnDate :: Lens' ReturnPolicyPolicy (Maybe Text)
rppLastReturnDate
  = lens _rppLastReturnDate
      (\ s a -> s{_rppLastReturnDate = a})

-- | The number of days items can be returned after delivery, where one day
-- is defined to be 24 hours after the delivery timestamp. When specifying
-- the return window like this, set the policy type to
-- \"numberOfDaysAfterDelivery\". Acceptable values are 30, 45, 60, 90,
-- 100, 180, 270 and 365 for the default policy. Additional policies
-- further allow 14, 15, 21 and 28 days, but note that for most items a
-- minimum of 30 days is required for returns. Exceptions may be made for
-- electronics. A policy of less than 30 days can only be applied to those
-- items.
rppNumberOfDays :: Lens' ReturnPolicyPolicy (Maybe Int64)
rppNumberOfDays
  = lens _rppNumberOfDays
      (\ s a -> s{_rppNumberOfDays = a})
      . mapping _Coerce

-- | Policy type. Use \"lastReturnDate\" for seasonal overrides only. Note
-- that for most items a minimum of 30 days is required for returns.
-- Exceptions may be made for electronics or non-returnable items such as
-- food, perishables, and living things. A policy of less than 30 days can
-- only be applied to those items. Acceptable values are: -
-- \"\`lastReturnDate\`\" - \"\`lifetimeReturns\`\" - \"\`noReturns\`\" -
-- \"\`numberOfDaysAfterDelivery\`\"
rppType :: Lens' ReturnPolicyPolicy (Maybe Text)
rppType = lens _rppType (\ s a -> s{_rppType = a})

instance FromJSON ReturnPolicyPolicy where
        parseJSON
          = withObject "ReturnPolicyPolicy"
              (\ o ->
                 ReturnPolicyPolicy' <$>
                   (o .:? "lastReturnDate") <*> (o .:? "numberOfDays")
                     <*> (o .:? "type"))

instance ToJSON ReturnPolicyPolicy where
        toJSON ReturnPolicyPolicy'{..}
          = object
              (catMaybes
                 [("lastReturnDate" .=) <$> _rppLastReturnDate,
                  ("numberOfDays" .=) <$> _rppNumberOfDays,
                  ("type" .=) <$> _rppType])

--
-- /See:/ 'ordersCreateTestOrderResponse' smart constructor.
data OrdersCreateTestOrderResponse =
  OrdersCreateTestOrderResponse'
    { _octorKind :: !(Maybe Text)
    , _octorOrderId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersCreateTestOrderResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'octorKind'
--
-- * 'octorOrderId'
ordersCreateTestOrderResponse
    :: OrdersCreateTestOrderResponse
ordersCreateTestOrderResponse =
  OrdersCreateTestOrderResponse' {_octorKind = Nothing, _octorOrderId = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersCreateTestOrderResponse\".
octorKind :: Lens' OrdersCreateTestOrderResponse (Maybe Text)
octorKind
  = lens _octorKind (\ s a -> s{_octorKind = a})

-- | The ID of the newly created test order.
octorOrderId :: Lens' OrdersCreateTestOrderResponse (Maybe Text)
octorOrderId
  = lens _octorOrderId (\ s a -> s{_octorOrderId = a})

instance FromJSON OrdersCreateTestOrderResponse where
        parseJSON
          = withObject "OrdersCreateTestOrderResponse"
              (\ o ->
                 OrdersCreateTestOrderResponse' <$>
                   (o .:? "kind") <*> (o .:? "orderId"))

instance ToJSON OrdersCreateTestOrderResponse where
        toJSON OrdersCreateTestOrderResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _octorKind,
                  ("orderId" .=) <$> _octorOrderId])

-- | Resource that represents a daily Repricing product report. Each report
-- contains stats for a single type of Repricing rule for a single product
-- on a given day. If there are multiple rules of the same type for the
-- product on that day, the report lists all the rules by rule ids,
-- combines the stats, and paginates the results by date. To retrieve the
-- stats of a particular rule, provide the rule_id in the request.
--
-- /See:/ 'repricingProductReport' smart constructor.
data RepricingProductReport =
  RepricingProductReport'
    { _rprOrderItemCount :: !(Maybe (Textual Int32))
    , _rprRuleIds :: !(Maybe [Text])
    , _rprHighWatermark :: !(Maybe PriceAmount)
    , _rprApplicationCount :: !(Maybe (Textual Int64))
    , _rprDate :: !(Maybe Date)
    , _rprLowWatermark :: !(Maybe PriceAmount)
    , _rprBuyboxWinningProductStats :: !(Maybe RepricingProductReportBuyboxWinningProductStats)
    , _rprInApplicabilityDetails :: !(Maybe [InApplicabilityDetails])
    , _rprType :: !(Maybe RepricingProductReportType)
    , _rprTotalGmv :: !(Maybe PriceAmount)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RepricingProductReport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rprOrderItemCount'
--
-- * 'rprRuleIds'
--
-- * 'rprHighWatermark'
--
-- * 'rprApplicationCount'
--
-- * 'rprDate'
--
-- * 'rprLowWatermark'
--
-- * 'rprBuyboxWinningProductStats'
--
-- * 'rprInApplicabilityDetails'
--
-- * 'rprType'
--
-- * 'rprTotalGmv'
repricingProductReport
    :: RepricingProductReport
repricingProductReport =
  RepricingProductReport'
    { _rprOrderItemCount = Nothing
    , _rprRuleIds = Nothing
    , _rprHighWatermark = Nothing
    , _rprApplicationCount = Nothing
    , _rprDate = Nothing
    , _rprLowWatermark = Nothing
    , _rprBuyboxWinningProductStats = Nothing
    , _rprInApplicabilityDetails = Nothing
    , _rprType = Nothing
    , _rprTotalGmv = Nothing
    }


-- | Total unit count of impacted products ordered while the rule was active
-- on the date of the report. This count includes all orders that were
-- started while the rule was active, even if the rule was no longer active
-- when the order was completed.
rprOrderItemCount :: Lens' RepricingProductReport (Maybe Int32)
rprOrderItemCount
  = lens _rprOrderItemCount
      (\ s a -> s{_rprOrderItemCount = a})
      . mapping _Coerce

-- | Ids of the Repricing rule for this report.
rprRuleIds :: Lens' RepricingProductReport [Text]
rprRuleIds
  = lens _rprRuleIds (\ s a -> s{_rprRuleIds = a}) .
      _Default
      . _Coerce

-- | Maximum displayed price after repriced during this reporting period.
rprHighWatermark :: Lens' RepricingProductReport (Maybe PriceAmount)
rprHighWatermark
  = lens _rprHighWatermark
      (\ s a -> s{_rprHighWatermark = a})

-- | Total count of Repricer applications. This value captures how many times
-- the rule of this type was applied to this product during this reporting
-- period.
rprApplicationCount :: Lens' RepricingProductReport (Maybe Int64)
rprApplicationCount
  = lens _rprApplicationCount
      (\ s a -> s{_rprApplicationCount = a})
      . mapping _Coerce

-- | Date of the stats in this report. The report starts and ends according
-- to the merchant\'s timezone.
rprDate :: Lens' RepricingProductReport (Maybe Date)
rprDate = lens _rprDate (\ s a -> s{_rprDate = a})

-- | Minimum displayed price after repriced during this reporting period.
rprLowWatermark :: Lens' RepricingProductReport (Maybe PriceAmount)
rprLowWatermark
  = lens _rprLowWatermark
      (\ s a -> s{_rprLowWatermark = a})

-- | Stats specific to buybox winning rules for product report.
rprBuyboxWinningProductStats :: Lens' RepricingProductReport (Maybe RepricingProductReportBuyboxWinningProductStats)
rprBuyboxWinningProductStats
  = lens _rprBuyboxWinningProductStats
      (\ s a -> s{_rprBuyboxWinningProductStats = a})

-- | List of all reasons the rule did not apply to the product during the
-- specified reporting period.
rprInApplicabilityDetails :: Lens' RepricingProductReport [InApplicabilityDetails]
rprInApplicabilityDetails
  = lens _rprInApplicabilityDetails
      (\ s a -> s{_rprInApplicabilityDetails = a})
      . _Default
      . _Coerce

-- | Type of the rule.
rprType :: Lens' RepricingProductReport (Maybe RepricingProductReportType)
rprType = lens _rprType (\ s a -> s{_rprType = a})

-- | Total GMV generated by impacted products while the rule was active on
-- the date of the report. This value includes all orders that were started
-- while the rule was active, even if the rule was no longer active when
-- the order was completed.
rprTotalGmv :: Lens' RepricingProductReport (Maybe PriceAmount)
rprTotalGmv
  = lens _rprTotalGmv (\ s a -> s{_rprTotalGmv = a})

instance FromJSON RepricingProductReport where
        parseJSON
          = withObject "RepricingProductReport"
              (\ o ->
                 RepricingProductReport' <$>
                   (o .:? "orderItemCount") <*>
                     (o .:? "ruleIds" .!= mempty)
                     <*> (o .:? "highWatermark")
                     <*> (o .:? "applicationCount")
                     <*> (o .:? "date")
                     <*> (o .:? "lowWatermark")
                     <*> (o .:? "buyboxWinningProductStats")
                     <*> (o .:? "inapplicabilityDetails" .!= mempty)
                     <*> (o .:? "type")
                     <*> (o .:? "totalGmv"))

instance ToJSON RepricingProductReport where
        toJSON RepricingProductReport'{..}
          = object
              (catMaybes
                 [("orderItemCount" .=) <$> _rprOrderItemCount,
                  ("ruleIds" .=) <$> _rprRuleIds,
                  ("highWatermark" .=) <$> _rprHighWatermark,
                  ("applicationCount" .=) <$> _rprApplicationCount,
                  ("date" .=) <$> _rprDate,
                  ("lowWatermark" .=) <$> _rprLowWatermark,
                  ("buyboxWinningProductStats" .=) <$>
                    _rprBuyboxWinningProductStats,
                  ("inapplicabilityDetails" .=) <$>
                    _rprInApplicabilityDetails,
                  ("type" .=) <$> _rprType,
                  ("totalGmv" .=) <$> _rprTotalGmv])

-- | A batch entry encoding a single non-batch accounts response.
--
-- /See:/ 'accountsCustomBatchResponseEntry' smart constructor.
data AccountsCustomBatchResponseEntry =
  AccountsCustomBatchResponseEntry'
    { _aKind :: !(Maybe Text)
    , _aAccount :: !(Maybe Account)
    , _aErrors :: !(Maybe Errors)
    , _aBatchId :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsCustomBatchResponseEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aKind'
--
-- * 'aAccount'
--
-- * 'aErrors'
--
-- * 'aBatchId'
accountsCustomBatchResponseEntry
    :: AccountsCustomBatchResponseEntry
accountsCustomBatchResponseEntry =
  AccountsCustomBatchResponseEntry'
    { _aKind = Nothing
    , _aAccount = Nothing
    , _aErrors = Nothing
    , _aBatchId = Nothing
    }


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"\`content#accountsCustomBatchResponseEntry\`\"
aKind :: Lens' AccountsCustomBatchResponseEntry (Maybe Text)
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | The retrieved, created, or updated account. Not defined if the method
-- was \`delete\`, \`claimwebsite\` or \`link\`.
aAccount :: Lens' AccountsCustomBatchResponseEntry (Maybe Account)
aAccount = lens _aAccount (\ s a -> s{_aAccount = a})

-- | A list of errors defined if and only if the request failed.
aErrors :: Lens' AccountsCustomBatchResponseEntry (Maybe Errors)
aErrors = lens _aErrors (\ s a -> s{_aErrors = a})

-- | The ID of the request entry this entry responds to.
aBatchId :: Lens' AccountsCustomBatchResponseEntry (Maybe Word32)
aBatchId
  = lens _aBatchId (\ s a -> s{_aBatchId = a}) .
      mapping _Coerce

instance FromJSON AccountsCustomBatchResponseEntry
         where
        parseJSON
          = withObject "AccountsCustomBatchResponseEntry"
              (\ o ->
                 AccountsCustomBatchResponseEntry' <$>
                   (o .:? "kind") <*> (o .:? "account") <*>
                     (o .:? "errors")
                     <*> (o .:? "batchId"))

instance ToJSON AccountsCustomBatchResponseEntry
         where
        toJSON AccountsCustomBatchResponseEntry'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _aKind,
                  ("account" .=) <$> _aAccount,
                  ("errors" .=) <$> _aErrors,
                  ("batchId" .=) <$> _aBatchId])

--
-- /See:/ 'gmbAccounts' smart constructor.
data GmbAccounts =
  GmbAccounts'
    { _gaGmbAccounts :: !(Maybe [GmbAccountsGmbAccount])
    , _gaAccountId :: !(Maybe (Textual Word64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GmbAccounts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaGmbAccounts'
--
-- * 'gaAccountId'
gmbAccounts
    :: GmbAccounts
gmbAccounts = GmbAccounts' {_gaGmbAccounts = Nothing, _gaAccountId = Nothing}


-- | A list of GMB accounts which are available to the merchant.
gaGmbAccounts :: Lens' GmbAccounts [GmbAccountsGmbAccount]
gaGmbAccounts
  = lens _gaGmbAccounts
      (\ s a -> s{_gaGmbAccounts = a})
      . _Default
      . _Coerce

-- | The ID of the Merchant Center account.
gaAccountId :: Lens' GmbAccounts (Maybe Word64)
gaAccountId
  = lens _gaAccountId (\ s a -> s{_gaAccountId = a}) .
      mapping _Coerce

instance FromJSON GmbAccounts where
        parseJSON
          = withObject "GmbAccounts"
              (\ o ->
                 GmbAccounts' <$>
                   (o .:? "gmbAccounts" .!= mempty) <*>
                     (o .:? "accountId"))

instance ToJSON GmbAccounts where
        toJSON GmbAccounts'{..}
          = object
              (catMaybes
                 [("gmbAccounts" .=) <$> _gaGmbAccounts,
                  ("accountId" .=) <$> _gaAccountId])

--
-- /See:/ 'customerReturnReason' smart constructor.
data CustomerReturnReason =
  CustomerReturnReason'
    { _crrReasonCode :: !(Maybe Text)
    , _crrDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomerReturnReason' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crrReasonCode'
--
-- * 'crrDescription'
customerReturnReason
    :: CustomerReturnReason
customerReturnReason =
  CustomerReturnReason' {_crrReasonCode = Nothing, _crrDescription = Nothing}


-- | Code of the return reason. Acceptable values are: -
-- \"\`betterPriceFound\`\" - \"\`changedMind\`\" -
-- \"\`damagedOrDefectiveItem\`\" - \"\`didNotMatchDescription\`\" -
-- \"\`doesNotFit\`\" - \"\`expiredItem\`\" - \"\`incorrectItemReceived\`\"
-- - \"\`noLongerNeeded\`\" - \"\`notSpecified\`\" -
-- \"\`orderedWrongItem\`\" - \"\`other\`\" - \"\`qualityNotExpected\`\" -
-- \"\`receivedTooLate\`\" - \"\`undeliverable\`\"
crrReasonCode :: Lens' CustomerReturnReason (Maybe Text)
crrReasonCode
  = lens _crrReasonCode
      (\ s a -> s{_crrReasonCode = a})

-- | Description of the reason.
crrDescription :: Lens' CustomerReturnReason (Maybe Text)
crrDescription
  = lens _crrDescription
      (\ s a -> s{_crrDescription = a})

instance FromJSON CustomerReturnReason where
        parseJSON
          = withObject "CustomerReturnReason"
              (\ o ->
                 CustomerReturnReason' <$>
                   (o .:? "reasonCode") <*> (o .:? "description"))

instance ToJSON CustomerReturnReason where
        toJSON CustomerReturnReason'{..}
          = object
              (catMaybes
                 [("reasonCode" .=) <$> _crrReasonCode,
                  ("description" .=) <$> _crrDescription])

--
-- /See:/ 'accountIdentifier' smart constructor.
data AccountIdentifier =
  AccountIdentifier'
    { _aiMerchantId :: !(Maybe (Textual Word64))
    , _aiAggregatorId :: !(Maybe (Textual Word64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountIdentifier' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiMerchantId'
--
-- * 'aiAggregatorId'
accountIdentifier
    :: AccountIdentifier
accountIdentifier =
  AccountIdentifier' {_aiMerchantId = Nothing, _aiAggregatorId = Nothing}


-- | The merchant account ID, set for individual accounts and subaccounts.
aiMerchantId :: Lens' AccountIdentifier (Maybe Word64)
aiMerchantId
  = lens _aiMerchantId (\ s a -> s{_aiMerchantId = a})
      . mapping _Coerce

-- | The aggregator ID, set for aggregators and subaccounts (in that case, it
-- represents the aggregator of the subaccount).
aiAggregatorId :: Lens' AccountIdentifier (Maybe Word64)
aiAggregatorId
  = lens _aiAggregatorId
      (\ s a -> s{_aiAggregatorId = a})
      . mapping _Coerce

instance FromJSON AccountIdentifier where
        parseJSON
          = withObject "AccountIdentifier"
              (\ o ->
                 AccountIdentifier' <$>
                   (o .:? "merchantId") <*> (o .:? "aggregatorId"))

instance ToJSON AccountIdentifier where
        toJSON AccountIdentifier'{..}
          = object
              (catMaybes
                 [("merchantId" .=) <$> _aiMerchantId,
                  ("aggregatorId" .=) <$> _aiAggregatorId])

--
-- /See:/ 'posCustomBatchRequest' smart constructor.
newtype PosCustomBatchRequest =
  PosCustomBatchRequest'
    { _pEntries :: Maybe [PosCustomBatchRequestEntry]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PosCustomBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pEntries'
posCustomBatchRequest
    :: PosCustomBatchRequest
posCustomBatchRequest = PosCustomBatchRequest' {_pEntries = Nothing}


-- | The request entries to be processed in the batch.
pEntries :: Lens' PosCustomBatchRequest [PosCustomBatchRequestEntry]
pEntries
  = lens _pEntries (\ s a -> s{_pEntries = a}) .
      _Default
      . _Coerce

instance FromJSON PosCustomBatchRequest where
        parseJSON
          = withObject "PosCustomBatchRequest"
              (\ o ->
                 PosCustomBatchRequest' <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON PosCustomBatchRequest where
        toJSON PosCustomBatchRequest'{..}
          = object (catMaybes [("entries" .=) <$> _pEntries])

--
-- /See:/ 'returnAddressAddress' smart constructor.
data ReturnAddressAddress =
  ReturnAddressAddress'
    { _raaRecipientName :: !(Maybe Text)
    , _raaStreetAddress :: !(Maybe [Text])
    , _raaCountry :: !(Maybe Text)
    , _raaPostalCode :: !(Maybe Text)
    , _raaLocality :: !(Maybe Text)
    , _raaRegion :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReturnAddressAddress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'raaRecipientName'
--
-- * 'raaStreetAddress'
--
-- * 'raaCountry'
--
-- * 'raaPostalCode'
--
-- * 'raaLocality'
--
-- * 'raaRegion'
returnAddressAddress
    :: ReturnAddressAddress
returnAddressAddress =
  ReturnAddressAddress'
    { _raaRecipientName = Nothing
    , _raaStreetAddress = Nothing
    , _raaCountry = Nothing
    , _raaPostalCode = Nothing
    , _raaLocality = Nothing
    , _raaRegion = Nothing
    }


-- | Name of the recipient to address returns to.
raaRecipientName :: Lens' ReturnAddressAddress (Maybe Text)
raaRecipientName
  = lens _raaRecipientName
      (\ s a -> s{_raaRecipientName = a})

-- | Street-level part of the address. May be up to two lines, each line
-- specified as an array element.
raaStreetAddress :: Lens' ReturnAddressAddress [Text]
raaStreetAddress
  = lens _raaStreetAddress
      (\ s a -> s{_raaStreetAddress = a})
      . _Default
      . _Coerce

-- | CLDR country code (e.g. \"US\").
raaCountry :: Lens' ReturnAddressAddress (Maybe Text)
raaCountry
  = lens _raaCountry (\ s a -> s{_raaCountry = a})

-- | Postal code or ZIP (e.g. \"94043\").
raaPostalCode :: Lens' ReturnAddressAddress (Maybe Text)
raaPostalCode
  = lens _raaPostalCode
      (\ s a -> s{_raaPostalCode = a})

-- | City, town or commune. May also include dependent localities or
-- sublocalities (e.g. neighborhoods or suburbs).
raaLocality :: Lens' ReturnAddressAddress (Maybe Text)
raaLocality
  = lens _raaLocality (\ s a -> s{_raaLocality = a})

-- | Top-level administrative subdivision of the country. For example, a
-- state like California (\"CA\") or a province like Quebec (\"QC\").
raaRegion :: Lens' ReturnAddressAddress (Maybe Text)
raaRegion
  = lens _raaRegion (\ s a -> s{_raaRegion = a})

instance FromJSON ReturnAddressAddress where
        parseJSON
          = withObject "ReturnAddressAddress"
              (\ o ->
                 ReturnAddressAddress' <$>
                   (o .:? "recipientName") <*>
                     (o .:? "streetAddress" .!= mempty)
                     <*> (o .:? "country")
                     <*> (o .:? "postalCode")
                     <*> (o .:? "locality")
                     <*> (o .:? "region"))

instance ToJSON ReturnAddressAddress where
        toJSON ReturnAddressAddress'{..}
          = object
              (catMaybes
                 [("recipientName" .=) <$> _raaRecipientName,
                  ("streetAddress" .=) <$> _raaStreetAddress,
                  ("country" .=) <$> _raaCountry,
                  ("postalCode" .=) <$> _raaPostalCode,
                  ("locality" .=) <$> _raaLocality,
                  ("region" .=) <$> _raaRegion])

--
-- /See:/ 'orderinvoicesCreateChargeInvoiceRequest' smart constructor.
data OrderinvoicesCreateChargeInvoiceRequest =
  OrderinvoicesCreateChargeInvoiceRequest'
    { _occirShipmentGroupId :: !(Maybe Text)
    , _occirLineItemInvoices :: !(Maybe [ShipmentInvoiceLineItemInvoice])
    , _occirInvoiceId :: !(Maybe Text)
    , _occirInvoiceSummary :: !(Maybe InvoiceSummary)
    , _occirOperationId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderinvoicesCreateChargeInvoiceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'occirShipmentGroupId'
--
-- * 'occirLineItemInvoices'
--
-- * 'occirInvoiceId'
--
-- * 'occirInvoiceSummary'
--
-- * 'occirOperationId'
orderinvoicesCreateChargeInvoiceRequest
    :: OrderinvoicesCreateChargeInvoiceRequest
orderinvoicesCreateChargeInvoiceRequest =
  OrderinvoicesCreateChargeInvoiceRequest'
    { _occirShipmentGroupId = Nothing
    , _occirLineItemInvoices = Nothing
    , _occirInvoiceId = Nothing
    , _occirInvoiceSummary = Nothing
    , _occirOperationId = Nothing
    }


-- | [required] ID of the shipment group. It is assigned by the merchant in
-- the \`shipLineItems\` method and is used to group multiple line items
-- that have the same kind of shipping charges.
occirShipmentGroupId :: Lens' OrderinvoicesCreateChargeInvoiceRequest (Maybe Text)
occirShipmentGroupId
  = lens _occirShipmentGroupId
      (\ s a -> s{_occirShipmentGroupId = a})

-- | [required] Invoice details per line item.
occirLineItemInvoices :: Lens' OrderinvoicesCreateChargeInvoiceRequest [ShipmentInvoiceLineItemInvoice]
occirLineItemInvoices
  = lens _occirLineItemInvoices
      (\ s a -> s{_occirLineItemInvoices = a})
      . _Default
      . _Coerce

-- | [required] The ID of the invoice.
occirInvoiceId :: Lens' OrderinvoicesCreateChargeInvoiceRequest (Maybe Text)
occirInvoiceId
  = lens _occirInvoiceId
      (\ s a -> s{_occirInvoiceId = a})

-- | [required] Invoice summary.
occirInvoiceSummary :: Lens' OrderinvoicesCreateChargeInvoiceRequest (Maybe InvoiceSummary)
occirInvoiceSummary
  = lens _occirInvoiceSummary
      (\ s a -> s{_occirInvoiceSummary = a})

-- | [required] The ID of the operation, unique across all operations for a
-- given order.
occirOperationId :: Lens' OrderinvoicesCreateChargeInvoiceRequest (Maybe Text)
occirOperationId
  = lens _occirOperationId
      (\ s a -> s{_occirOperationId = a})

instance FromJSON
           OrderinvoicesCreateChargeInvoiceRequest
         where
        parseJSON
          = withObject
              "OrderinvoicesCreateChargeInvoiceRequest"
              (\ o ->
                 OrderinvoicesCreateChargeInvoiceRequest' <$>
                   (o .:? "shipmentGroupId") <*>
                     (o .:? "lineItemInvoices" .!= mempty)
                     <*> (o .:? "invoiceId")
                     <*> (o .:? "invoiceSummary")
                     <*> (o .:? "operationId"))

instance ToJSON
           OrderinvoicesCreateChargeInvoiceRequest
         where
        toJSON OrderinvoicesCreateChargeInvoiceRequest'{..}
          = object
              (catMaybes
                 [("shipmentGroupId" .=) <$> _occirShipmentGroupId,
                  ("lineItemInvoices" .=) <$> _occirLineItemInvoices,
                  ("invoiceId" .=) <$> _occirInvoiceId,
                  ("invoiceSummary" .=) <$> _occirInvoiceSummary,
                  ("operationId" .=) <$> _occirOperationId])

--
-- /See:/ 'orderreturnsPartialRefund' smart constructor.
data OrderreturnsPartialRefund =
  OrderreturnsPartialRefund'
    { _oprTaxAmount :: !(Maybe Price)
    , _oprPriceAmount :: !(Maybe Price)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderreturnsPartialRefund' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oprTaxAmount'
--
-- * 'oprPriceAmount'
orderreturnsPartialRefund
    :: OrderreturnsPartialRefund
orderreturnsPartialRefund =
  OrderreturnsPartialRefund'
    {_oprTaxAmount = Nothing, _oprPriceAmount = Nothing}


-- | Tax amount to be refunded. Note: This has different meaning depending on
-- the location of the order.
oprTaxAmount :: Lens' OrderreturnsPartialRefund (Maybe Price)
oprTaxAmount
  = lens _oprTaxAmount (\ s a -> s{_oprTaxAmount = a})

-- | The pre-tax or post-tax amount to be refunded, depending on the location
-- of the order.
oprPriceAmount :: Lens' OrderreturnsPartialRefund (Maybe Price)
oprPriceAmount
  = lens _oprPriceAmount
      (\ s a -> s{_oprPriceAmount = a})

instance FromJSON OrderreturnsPartialRefund where
        parseJSON
          = withObject "OrderreturnsPartialRefund"
              (\ o ->
                 OrderreturnsPartialRefund' <$>
                   (o .:? "taxAmount") <*> (o .:? "priceAmount"))

instance ToJSON OrderreturnsPartialRefund where
        toJSON OrderreturnsPartialRefund'{..}
          = object
              (catMaybes
                 [("taxAmount" .=) <$> _oprTaxAmount,
                  ("priceAmount" .=) <$> _oprPriceAmount])

-- | Response message for the ReportService.Search method.
--
-- /See:/ 'searchResponse' smart constructor.
data SearchResponse =
  SearchResponse'
    { _srNextPageToken :: !(Maybe Text)
    , _srResults :: !(Maybe [ReportRow])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srNextPageToken'
--
-- * 'srResults'
searchResponse
    :: SearchResponse
searchResponse =
  SearchResponse' {_srNextPageToken = Nothing, _srResults = Nothing}


-- | Token which can be sent as \`page_token\` to retrieve the next page. If
-- omitted, there are no subsequent pages.
srNextPageToken :: Lens' SearchResponse (Maybe Text)
srNextPageToken
  = lens _srNextPageToken
      (\ s a -> s{_srNextPageToken = a})

-- | Rows that matched the search query.
srResults :: Lens' SearchResponse [ReportRow]
srResults
  = lens _srResults (\ s a -> s{_srResults = a}) .
      _Default
      . _Coerce

instance FromJSON SearchResponse where
        parseJSON
          = withObject "SearchResponse"
              (\ o ->
                 SearchResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "results" .!= mempty))

instance ToJSON SearchResponse where
        toJSON SearchResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _srNextPageToken,
                  ("results" .=) <$> _srResults])

--
-- /See:/ 'orderLineItem' smart constructor.
data OrderLineItem =
  OrderLineItem'
    { _oliAnnotations :: !(Maybe [OrderMerchantProvidedAnnotation])
    , _oliAdjustments :: !(Maybe [OrderLineItemAdjustment])
    , _oliQuantityOrdered :: !(Maybe (Textual Word32))
    , _oliReturnInfo :: !(Maybe OrderLineItemReturnInfo)
    , _oliQuantityReadyForPickup :: !(Maybe (Textual Word32))
    , _oliQuantityDelivered :: !(Maybe (Textual Word32))
    , _oliQuantityUndeliverable :: !(Maybe (Textual Word32))
    , _oliShippingDetails :: !(Maybe OrderLineItemShippingDetails)
    , _oliQuantityPending :: !(Maybe (Textual Word32))
    , _oliCancellations :: !(Maybe [OrderCancellation])
    , _oliQuantityCanceled :: !(Maybe (Textual Word32))
    , _oliId :: !(Maybe Text)
    , _oliTax :: !(Maybe Price)
    , _oliPrice :: !(Maybe Price)
    , _oliQuantityShipped :: !(Maybe (Textual Word32))
    , _oliQuantityReturned :: !(Maybe (Textual Word32))
    , _oliProduct :: !(Maybe OrderLineItemProduct)
    , _oliReturns :: !(Maybe [OrderReturn])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderLineItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oliAnnotations'
--
-- * 'oliAdjustments'
--
-- * 'oliQuantityOrdered'
--
-- * 'oliReturnInfo'
--
-- * 'oliQuantityReadyForPickup'
--
-- * 'oliQuantityDelivered'
--
-- * 'oliQuantityUndeliverable'
--
-- * 'oliShippingDetails'
--
-- * 'oliQuantityPending'
--
-- * 'oliCancellations'
--
-- * 'oliQuantityCanceled'
--
-- * 'oliId'
--
-- * 'oliTax'
--
-- * 'oliPrice'
--
-- * 'oliQuantityShipped'
--
-- * 'oliQuantityReturned'
--
-- * 'oliProduct'
--
-- * 'oliReturns'
orderLineItem
    :: OrderLineItem
orderLineItem =
  OrderLineItem'
    { _oliAnnotations = Nothing
    , _oliAdjustments = Nothing
    , _oliQuantityOrdered = Nothing
    , _oliReturnInfo = Nothing
    , _oliQuantityReadyForPickup = Nothing
    , _oliQuantityDelivered = Nothing
    , _oliQuantityUndeliverable = Nothing
    , _oliShippingDetails = Nothing
    , _oliQuantityPending = Nothing
    , _oliCancellations = Nothing
    , _oliQuantityCanceled = Nothing
    , _oliId = Nothing
    , _oliTax = Nothing
    , _oliPrice = Nothing
    , _oliQuantityShipped = Nothing
    , _oliQuantityReturned = Nothing
    , _oliProduct = Nothing
    , _oliReturns = Nothing
    }


-- | Annotations that are attached to the line item.
oliAnnotations :: Lens' OrderLineItem [OrderMerchantProvidedAnnotation]
oliAnnotations
  = lens _oliAnnotations
      (\ s a -> s{_oliAnnotations = a})
      . _Default
      . _Coerce

-- | Price and tax adjustments applied on the line item.
oliAdjustments :: Lens' OrderLineItem [OrderLineItemAdjustment]
oliAdjustments
  = lens _oliAdjustments
      (\ s a -> s{_oliAdjustments = a})
      . _Default
      . _Coerce

-- | Number of items ordered.
oliQuantityOrdered :: Lens' OrderLineItem (Maybe Word32)
oliQuantityOrdered
  = lens _oliQuantityOrdered
      (\ s a -> s{_oliQuantityOrdered = a})
      . mapping _Coerce

-- | Details of the return policy for the line item.
oliReturnInfo :: Lens' OrderLineItem (Maybe OrderLineItemReturnInfo)
oliReturnInfo
  = lens _oliReturnInfo
      (\ s a -> s{_oliReturnInfo = a})

-- | Number of items ready for pickup.
oliQuantityReadyForPickup :: Lens' OrderLineItem (Maybe Word32)
oliQuantityReadyForPickup
  = lens _oliQuantityReadyForPickup
      (\ s a -> s{_oliQuantityReadyForPickup = a})
      . mapping _Coerce

-- | Number of items delivered.
oliQuantityDelivered :: Lens' OrderLineItem (Maybe Word32)
oliQuantityDelivered
  = lens _oliQuantityDelivered
      (\ s a -> s{_oliQuantityDelivered = a})
      . mapping _Coerce

-- | Number of items undeliverable.
oliQuantityUndeliverable :: Lens' OrderLineItem (Maybe Word32)
oliQuantityUndeliverable
  = lens _oliQuantityUndeliverable
      (\ s a -> s{_oliQuantityUndeliverable = a})
      . mapping _Coerce

-- | Details of the requested shipping for the line item.
oliShippingDetails :: Lens' OrderLineItem (Maybe OrderLineItemShippingDetails)
oliShippingDetails
  = lens _oliShippingDetails
      (\ s a -> s{_oliShippingDetails = a})

-- | Number of items pending.
oliQuantityPending :: Lens' OrderLineItem (Maybe Word32)
oliQuantityPending
  = lens _oliQuantityPending
      (\ s a -> s{_oliQuantityPending = a})
      . mapping _Coerce

-- | Cancellations of the line item.
oliCancellations :: Lens' OrderLineItem [OrderCancellation]
oliCancellations
  = lens _oliCancellations
      (\ s a -> s{_oliCancellations = a})
      . _Default
      . _Coerce

-- | Number of items canceled.
oliQuantityCanceled :: Lens' OrderLineItem (Maybe Word32)
oliQuantityCanceled
  = lens _oliQuantityCanceled
      (\ s a -> s{_oliQuantityCanceled = a})
      . mapping _Coerce

-- | The ID of the line item.
oliId :: Lens' OrderLineItem (Maybe Text)
oliId = lens _oliId (\ s a -> s{_oliId = a})

-- | Total tax amount for the line item. For example, if two items are
-- purchased, and each have a cost tax of $2, the total tax amount will be
-- $4.
oliTax :: Lens' OrderLineItem (Maybe Price)
oliTax = lens _oliTax (\ s a -> s{_oliTax = a})

-- | Total price for the line item. For example, if two items for $10 are
-- purchased, the total price will be $20.
oliPrice :: Lens' OrderLineItem (Maybe Price)
oliPrice = lens _oliPrice (\ s a -> s{_oliPrice = a})

-- | Number of items shipped.
oliQuantityShipped :: Lens' OrderLineItem (Maybe Word32)
oliQuantityShipped
  = lens _oliQuantityShipped
      (\ s a -> s{_oliQuantityShipped = a})
      . mapping _Coerce

-- | Number of items returned.
oliQuantityReturned :: Lens' OrderLineItem (Maybe Word32)
oliQuantityReturned
  = lens _oliQuantityReturned
      (\ s a -> s{_oliQuantityReturned = a})
      . mapping _Coerce

-- | Product data as seen by customer from the time of the order placement.
-- Note that certain attributes values (e.g. title or gtin) might be
-- reformatted and no longer match values submitted via product feed.
oliProduct :: Lens' OrderLineItem (Maybe OrderLineItemProduct)
oliProduct
  = lens _oliProduct (\ s a -> s{_oliProduct = a})

-- | Returns of the line item.
oliReturns :: Lens' OrderLineItem [OrderReturn]
oliReturns
  = lens _oliReturns (\ s a -> s{_oliReturns = a}) .
      _Default
      . _Coerce

instance FromJSON OrderLineItem where
        parseJSON
          = withObject "OrderLineItem"
              (\ o ->
                 OrderLineItem' <$>
                   (o .:? "annotations" .!= mempty) <*>
                     (o .:? "adjustments" .!= mempty)
                     <*> (o .:? "quantityOrdered")
                     <*> (o .:? "returnInfo")
                     <*> (o .:? "quantityReadyForPickup")
                     <*> (o .:? "quantityDelivered")
                     <*> (o .:? "quantityUndeliverable")
                     <*> (o .:? "shippingDetails")
                     <*> (o .:? "quantityPending")
                     <*> (o .:? "cancellations" .!= mempty)
                     <*> (o .:? "quantityCanceled")
                     <*> (o .:? "id")
                     <*> (o .:? "tax")
                     <*> (o .:? "price")
                     <*> (o .:? "quantityShipped")
                     <*> (o .:? "quantityReturned")
                     <*> (o .:? "product")
                     <*> (o .:? "returns" .!= mempty))

instance ToJSON OrderLineItem where
        toJSON OrderLineItem'{..}
          = object
              (catMaybes
                 [("annotations" .=) <$> _oliAnnotations,
                  ("adjustments" .=) <$> _oliAdjustments,
                  ("quantityOrdered" .=) <$> _oliQuantityOrdered,
                  ("returnInfo" .=) <$> _oliReturnInfo,
                  ("quantityReadyForPickup" .=) <$>
                    _oliQuantityReadyForPickup,
                  ("quantityDelivered" .=) <$> _oliQuantityDelivered,
                  ("quantityUndeliverable" .=) <$>
                    _oliQuantityUndeliverable,
                  ("shippingDetails" .=) <$> _oliShippingDetails,
                  ("quantityPending" .=) <$> _oliQuantityPending,
                  ("cancellations" .=) <$> _oliCancellations,
                  ("quantityCanceled" .=) <$> _oliQuantityCanceled,
                  ("id" .=) <$> _oliId, ("tax" .=) <$> _oliTax,
                  ("price" .=) <$> _oliPrice,
                  ("quantityShipped" .=) <$> _oliQuantityShipped,
                  ("quantityReturned" .=) <$> _oliQuantityReturned,
                  ("product" .=) <$> _oliProduct,
                  ("returns" .=) <$> _oliReturns])

--
-- /See:/ 'minimumOrderValueTable' smart constructor.
newtype MinimumOrderValueTable =
  MinimumOrderValueTable'
    { _movtStoreCodeSetWithMovs :: Maybe [MinimumOrderValueTableStoreCodeSetWithMov]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MinimumOrderValueTable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'movtStoreCodeSetWithMovs'
minimumOrderValueTable
    :: MinimumOrderValueTable
minimumOrderValueTable =
  MinimumOrderValueTable' {_movtStoreCodeSetWithMovs = Nothing}


movtStoreCodeSetWithMovs :: Lens' MinimumOrderValueTable [MinimumOrderValueTableStoreCodeSetWithMov]
movtStoreCodeSetWithMovs
  = lens _movtStoreCodeSetWithMovs
      (\ s a -> s{_movtStoreCodeSetWithMovs = a})
      . _Default
      . _Coerce

instance FromJSON MinimumOrderValueTable where
        parseJSON
          = withObject "MinimumOrderValueTable"
              (\ o ->
                 MinimumOrderValueTable' <$>
                   (o .:? "storeCodeSetWithMovs" .!= mempty))

instance ToJSON MinimumOrderValueTable where
        toJSON MinimumOrderValueTable'{..}
          = object
              (catMaybes
                 [("storeCodeSetWithMovs" .=) <$>
                    _movtStoreCodeSetWithMovs])

--
-- /See:/ 'service' smart constructor.
data Service =
  Service'
    { _sDeliveryCountry :: !(Maybe Text)
    , _sMinimumOrderValueTable :: !(Maybe MinimumOrderValueTable)
    , _sShipmentType :: !(Maybe Text)
    , _sRateGroups :: !(Maybe [RateGroup])
    , _sDeliveryTime :: !(Maybe DeliveryTime)
    , _sActive :: !(Maybe Bool)
    , _sName :: !(Maybe Text)
    , _sCurrency :: !(Maybe Text)
    , _sEligibility :: !(Maybe Text)
    , _sMinimumOrderValue :: !(Maybe Price)
    , _sPickupService :: !(Maybe PickupCarrierService)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Service' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sDeliveryCountry'
--
-- * 'sMinimumOrderValueTable'
--
-- * 'sShipmentType'
--
-- * 'sRateGroups'
--
-- * 'sDeliveryTime'
--
-- * 'sActive'
--
-- * 'sName'
--
-- * 'sCurrency'
--
-- * 'sEligibility'
--
-- * 'sMinimumOrderValue'
--
-- * 'sPickupService'
service
    :: Service
service =
  Service'
    { _sDeliveryCountry = Nothing
    , _sMinimumOrderValueTable = Nothing
    , _sShipmentType = Nothing
    , _sRateGroups = Nothing
    , _sDeliveryTime = Nothing
    , _sActive = Nothing
    , _sName = Nothing
    , _sCurrency = Nothing
    , _sEligibility = Nothing
    , _sMinimumOrderValue = Nothing
    , _sPickupService = Nothing
    }


-- | The CLDR territory code of the country to which the service applies.
-- Required.
sDeliveryCountry :: Lens' Service (Maybe Text)
sDeliveryCountry
  = lens _sDeliveryCountry
      (\ s a -> s{_sDeliveryCountry = a})

-- | Table of per store minimum order values for the pickup fulfillment type.
-- Cannot be set together with minimum_order_value.
sMinimumOrderValueTable :: Lens' Service (Maybe MinimumOrderValueTable)
sMinimumOrderValueTable
  = lens _sMinimumOrderValueTable
      (\ s a -> s{_sMinimumOrderValueTable = a})

-- | Type of locations this service ships orders to. Acceptable values are: -
-- \"\`delivery\`\" - \"\`pickup\`\"
sShipmentType :: Lens' Service (Maybe Text)
sShipmentType
  = lens _sShipmentType
      (\ s a -> s{_sShipmentType = a})

-- | Shipping rate group definitions. Only the last one is allowed to have an
-- empty \`applicableShippingLabels\`, which means \"everything else\". The
-- other \`applicableShippingLabels\` must not overlap.
sRateGroups :: Lens' Service [RateGroup]
sRateGroups
  = lens _sRateGroups (\ s a -> s{_sRateGroups = a}) .
      _Default
      . _Coerce

-- | Time spent in various aspects from order to the delivery of the product.
-- Required.
sDeliveryTime :: Lens' Service (Maybe DeliveryTime)
sDeliveryTime
  = lens _sDeliveryTime
      (\ s a -> s{_sDeliveryTime = a})

-- | A boolean exposing the active status of the shipping service. Required.
sActive :: Lens' Service (Maybe Bool)
sActive = lens _sActive (\ s a -> s{_sActive = a})

-- | Free-form name of the service. Must be unique within target account.
-- Required.
sName :: Lens' Service (Maybe Text)
sName = lens _sName (\ s a -> s{_sName = a})

-- | The CLDR code of the currency to which this service applies. Must match
-- that of the prices in rate groups.
sCurrency :: Lens' Service (Maybe Text)
sCurrency
  = lens _sCurrency (\ s a -> s{_sCurrency = a})

-- | Eligibility for this service. Acceptable values are: - \"\`All
-- scenarios\`\" - \"\`All scenarios except Shopping Actions\`\" -
-- \"\`Shopping Actions\`\"
sEligibility :: Lens' Service (Maybe Text)
sEligibility
  = lens _sEligibility (\ s a -> s{_sEligibility = a})

-- | Minimum order value for this service. If set, indicates that customers
-- will have to spend at least this amount. All prices within a service
-- must have the same currency. Cannot be set together with
-- minimum_order_value_table.
sMinimumOrderValue :: Lens' Service (Maybe Price)
sMinimumOrderValue
  = lens _sMinimumOrderValue
      (\ s a -> s{_sMinimumOrderValue = a})

-- | The carrier-service pair delivering items to collection points. The list
-- of supported pickup services can be retrieved via the
-- \`getSupportedPickupServices\` method. Required if and only if the
-- service delivery type is \`pickup\`.
sPickupService :: Lens' Service (Maybe PickupCarrierService)
sPickupService
  = lens _sPickupService
      (\ s a -> s{_sPickupService = a})

instance FromJSON Service where
        parseJSON
          = withObject "Service"
              (\ o ->
                 Service' <$>
                   (o .:? "deliveryCountry") <*>
                     (o .:? "minimumOrderValueTable")
                     <*> (o .:? "shipmentType")
                     <*> (o .:? "rateGroups" .!= mempty)
                     <*> (o .:? "deliveryTime")
                     <*> (o .:? "active")
                     <*> (o .:? "name")
                     <*> (o .:? "currency")
                     <*> (o .:? "eligibility")
                     <*> (o .:? "minimumOrderValue")
                     <*> (o .:? "pickupService"))

instance ToJSON Service where
        toJSON Service'{..}
          = object
              (catMaybes
                 [("deliveryCountry" .=) <$> _sDeliveryCountry,
                  ("minimumOrderValueTable" .=) <$>
                    _sMinimumOrderValueTable,
                  ("shipmentType" .=) <$> _sShipmentType,
                  ("rateGroups" .=) <$> _sRateGroups,
                  ("deliveryTime" .=) <$> _sDeliveryTime,
                  ("active" .=) <$> _sActive, ("name" .=) <$> _sName,
                  ("currency" .=) <$> _sCurrency,
                  ("eligibility" .=) <$> _sEligibility,
                  ("minimumOrderValue" .=) <$> _sMinimumOrderValue,
                  ("pickupService" .=) <$> _sPickupService])

-- | Stats specific to buybox winning rules for rule report.
--
-- /See:/ 'repricingRuleReportBuyboxWinningRuleStats' smart constructor.
newtype RepricingRuleReportBuyboxWinningRuleStats =
  RepricingRuleReportBuyboxWinningRuleStats'
    { _rrrbwrsBuyboxWonProductCount :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RepricingRuleReportBuyboxWinningRuleStats' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrrbwrsBuyboxWonProductCount'
repricingRuleReportBuyboxWinningRuleStats
    :: RepricingRuleReportBuyboxWinningRuleStats
repricingRuleReportBuyboxWinningRuleStats =
  RepricingRuleReportBuyboxWinningRuleStats'
    {_rrrbwrsBuyboxWonProductCount = Nothing}


-- | Number of unique products that won the buybox with this rule during this
-- period of time.
rrrbwrsBuyboxWonProductCount :: Lens' RepricingRuleReportBuyboxWinningRuleStats (Maybe Int32)
rrrbwrsBuyboxWonProductCount
  = lens _rrrbwrsBuyboxWonProductCount
      (\ s a -> s{_rrrbwrsBuyboxWonProductCount = a})
      . mapping _Coerce

instance FromJSON
           RepricingRuleReportBuyboxWinningRuleStats
         where
        parseJSON
          = withObject
              "RepricingRuleReportBuyboxWinningRuleStats"
              (\ o ->
                 RepricingRuleReportBuyboxWinningRuleStats' <$>
                   (o .:? "buyboxWonProductCount"))

instance ToJSON
           RepricingRuleReportBuyboxWinningRuleStats
         where
        toJSON RepricingRuleReportBuyboxWinningRuleStats'{..}
          = object
              (catMaybes
                 [("buyboxWonProductCount" .=) <$>
                    _rrrbwrsBuyboxWonProductCount])

--
-- /See:/ 'productstatusesCustomBatchResponse' smart constructor.
data ProductstatusesCustomBatchResponse =
  ProductstatusesCustomBatchResponse'
    { _proEntries :: !(Maybe [ProductstatusesCustomBatchResponseEntry])
    , _proKind :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductstatusesCustomBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proEntries'
--
-- * 'proKind'
productstatusesCustomBatchResponse
    :: ProductstatusesCustomBatchResponse
productstatusesCustomBatchResponse =
  ProductstatusesCustomBatchResponse'
    {_proEntries = Nothing, _proKind = Nothing}


-- | The result of the execution of the batch requests.
proEntries :: Lens' ProductstatusesCustomBatchResponse [ProductstatusesCustomBatchResponseEntry]
proEntries
  = lens _proEntries (\ s a -> s{_proEntries = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#productstatusesCustomBatchResponse\".
proKind :: Lens' ProductstatusesCustomBatchResponse (Maybe Text)
proKind = lens _proKind (\ s a -> s{_proKind = a})

instance FromJSON ProductstatusesCustomBatchResponse
         where
        parseJSON
          = withObject "ProductstatusesCustomBatchResponse"
              (\ o ->
                 ProductstatusesCustomBatchResponse' <$>
                   (o .:? "entries" .!= mempty) <*> (o .:? "kind"))

instance ToJSON ProductstatusesCustomBatchResponse
         where
        toJSON ProductstatusesCustomBatchResponse'{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _proEntries,
                  ("kind" .=) <$> _proKind])

--
-- /See:/ 'productUnitPricingMeasure' smart constructor.
data ProductUnitPricingMeasure =
  ProductUnitPricingMeasure'
    { _pupmValue :: !(Maybe (Textual Double))
    , _pupmUnit :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductUnitPricingMeasure' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pupmValue'
--
-- * 'pupmUnit'
productUnitPricingMeasure
    :: ProductUnitPricingMeasure
productUnitPricingMeasure =
  ProductUnitPricingMeasure' {_pupmValue = Nothing, _pupmUnit = Nothing}


-- | The measure of an item.
pupmValue :: Lens' ProductUnitPricingMeasure (Maybe Double)
pupmValue
  = lens _pupmValue (\ s a -> s{_pupmValue = a}) .
      mapping _Coerce

-- | The unit of the measure.
pupmUnit :: Lens' ProductUnitPricingMeasure (Maybe Text)
pupmUnit = lens _pupmUnit (\ s a -> s{_pupmUnit = a})

instance FromJSON ProductUnitPricingMeasure where
        parseJSON
          = withObject "ProductUnitPricingMeasure"
              (\ o ->
                 ProductUnitPricingMeasure' <$>
                   (o .:? "value") <*> (o .:? "unit"))

instance ToJSON ProductUnitPricingMeasure where
        toJSON ProductUnitPricingMeasure'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _pupmValue,
                  ("unit" .=) <$> _pupmUnit])

--
-- /See:/ 'ordersUpdateShipmentRequest' smart constructor.
data OrdersUpdateShipmentRequest =
  OrdersUpdateShipmentRequest'
    { _ousrCarrier :: !(Maybe Text)
    , _ousrStatus :: !(Maybe Text)
    , _ousrScheduledDeliveryDetails :: !(Maybe OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails)
    , _ousrTrackingId :: !(Maybe Text)
    , _ousrShipmentId :: !(Maybe Text)
    , _ousrUndeliveredDate :: !(Maybe Text)
    , _ousrLastPickupDate :: !(Maybe Text)
    , _ousrDeliveryDate :: !(Maybe Text)
    , _ousrOperationId :: !(Maybe Text)
    , _ousrReadyPickupDate :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersUpdateShipmentRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ousrCarrier'
--
-- * 'ousrStatus'
--
-- * 'ousrScheduledDeliveryDetails'
--
-- * 'ousrTrackingId'
--
-- * 'ousrShipmentId'
--
-- * 'ousrUndeliveredDate'
--
-- * 'ousrLastPickupDate'
--
-- * 'ousrDeliveryDate'
--
-- * 'ousrOperationId'
--
-- * 'ousrReadyPickupDate'
ordersUpdateShipmentRequest
    :: OrdersUpdateShipmentRequest
ordersUpdateShipmentRequest =
  OrdersUpdateShipmentRequest'
    { _ousrCarrier = Nothing
    , _ousrStatus = Nothing
    , _ousrScheduledDeliveryDetails = Nothing
    , _ousrTrackingId = Nothing
    , _ousrShipmentId = Nothing
    , _ousrUndeliveredDate = Nothing
    , _ousrLastPickupDate = Nothing
    , _ousrDeliveryDate = Nothing
    , _ousrOperationId = Nothing
    , _ousrReadyPickupDate = Nothing
    }


-- | The carrier handling the shipment. Not updated if missing. See
-- \`shipments[].carrier\` in the Orders resource representation for a list
-- of acceptable values.
ousrCarrier :: Lens' OrdersUpdateShipmentRequest (Maybe Text)
ousrCarrier
  = lens _ousrCarrier (\ s a -> s{_ousrCarrier = a})

-- | New status for the shipment. Not updated if missing. Acceptable values
-- are: - \"\`delivered\`\" - \"\`undeliverable\`\" -
-- \"\`readyForPickup\`\"
ousrStatus :: Lens' OrdersUpdateShipmentRequest (Maybe Text)
ousrStatus
  = lens _ousrStatus (\ s a -> s{_ousrStatus = a})

-- | Delivery details of the shipment if scheduling is needed.
ousrScheduledDeliveryDetails :: Lens' OrdersUpdateShipmentRequest (Maybe OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails)
ousrScheduledDeliveryDetails
  = lens _ousrScheduledDeliveryDetails
      (\ s a -> s{_ousrScheduledDeliveryDetails = a})

-- | The tracking ID for the shipment. Not updated if missing.
ousrTrackingId :: Lens' OrdersUpdateShipmentRequest (Maybe Text)
ousrTrackingId
  = lens _ousrTrackingId
      (\ s a -> s{_ousrTrackingId = a})

-- | The ID of the shipment.
ousrShipmentId :: Lens' OrdersUpdateShipmentRequest (Maybe Text)
ousrShipmentId
  = lens _ousrShipmentId
      (\ s a -> s{_ousrShipmentId = a})

-- | Date on which the shipment has been undeliverable, in ISO 8601 format.
-- Optional and can be provided only if \`status\` is \`undeliverable\`.
ousrUndeliveredDate :: Lens' OrdersUpdateShipmentRequest (Maybe Text)
ousrUndeliveredDate
  = lens _ousrUndeliveredDate
      (\ s a -> s{_ousrUndeliveredDate = a})

-- | Date after which the pickup will expire, in ISO 8601 format. Required
-- only when order is buy-online-pickup-in-store(BOPIS) and \`status\` is
-- \`ready for pickup\`.
ousrLastPickupDate :: Lens' OrdersUpdateShipmentRequest (Maybe Text)
ousrLastPickupDate
  = lens _ousrLastPickupDate
      (\ s a -> s{_ousrLastPickupDate = a})

-- | Date on which the shipment has been delivered, in ISO 8601 format.
-- Optional and can be provided only if \`status\` is \`delivered\`.
ousrDeliveryDate :: Lens' OrdersUpdateShipmentRequest (Maybe Text)
ousrDeliveryDate
  = lens _ousrDeliveryDate
      (\ s a -> s{_ousrDeliveryDate = a})

-- | The ID of the operation. Unique across all operations for a given order.
ousrOperationId :: Lens' OrdersUpdateShipmentRequest (Maybe Text)
ousrOperationId
  = lens _ousrOperationId
      (\ s a -> s{_ousrOperationId = a})

-- | Date on which the shipment has been ready for pickup, in ISO 8601
-- format. Optional and can be provided only if \`status\` is \`ready for
-- pickup\`.
ousrReadyPickupDate :: Lens' OrdersUpdateShipmentRequest (Maybe Text)
ousrReadyPickupDate
  = lens _ousrReadyPickupDate
      (\ s a -> s{_ousrReadyPickupDate = a})

instance FromJSON OrdersUpdateShipmentRequest where
        parseJSON
          = withObject "OrdersUpdateShipmentRequest"
              (\ o ->
                 OrdersUpdateShipmentRequest' <$>
                   (o .:? "carrier") <*> (o .:? "status") <*>
                     (o .:? "scheduledDeliveryDetails")
                     <*> (o .:? "trackingId")
                     <*> (o .:? "shipmentId")
                     <*> (o .:? "undeliveredDate")
                     <*> (o .:? "lastPickupDate")
                     <*> (o .:? "deliveryDate")
                     <*> (o .:? "operationId")
                     <*> (o .:? "readyPickupDate"))

instance ToJSON OrdersUpdateShipmentRequest where
        toJSON OrdersUpdateShipmentRequest'{..}
          = object
              (catMaybes
                 [("carrier" .=) <$> _ousrCarrier,
                  ("status" .=) <$> _ousrStatus,
                  ("scheduledDeliveryDetails" .=) <$>
                    _ousrScheduledDeliveryDetails,
                  ("trackingId" .=) <$> _ousrTrackingId,
                  ("shipmentId" .=) <$> _ousrShipmentId,
                  ("undeliveredDate" .=) <$> _ousrUndeliveredDate,
                  ("lastPickupDate" .=) <$> _ousrLastPickupDate,
                  ("deliveryDate" .=) <$> _ousrDeliveryDate,
                  ("operationId" .=) <$> _ousrOperationId,
                  ("readyPickupDate" .=) <$> _ousrReadyPickupDate])

--
-- /See:/ 'orderShipmentLineItemShipment' smart constructor.
data OrderShipmentLineItemShipment =
  OrderShipmentLineItemShipment'
    { _oslisQuantity :: !(Maybe (Textual Word32))
    , _oslisLineItemId :: !(Maybe Text)
    , _oslisProductId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderShipmentLineItemShipment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oslisQuantity'
--
-- * 'oslisLineItemId'
--
-- * 'oslisProductId'
orderShipmentLineItemShipment
    :: OrderShipmentLineItemShipment
orderShipmentLineItemShipment =
  OrderShipmentLineItemShipment'
    { _oslisQuantity = Nothing
    , _oslisLineItemId = Nothing
    , _oslisProductId = Nothing
    }


-- | The quantity that is shipped.
oslisQuantity :: Lens' OrderShipmentLineItemShipment (Maybe Word32)
oslisQuantity
  = lens _oslisQuantity
      (\ s a -> s{_oslisQuantity = a})
      . mapping _Coerce

-- | The ID of the line item that is shipped. This value is assigned by
-- Google when an order is created. Either lineItemId or productId is
-- required.
oslisLineItemId :: Lens' OrderShipmentLineItemShipment (Maybe Text)
oslisLineItemId
  = lens _oslisLineItemId
      (\ s a -> s{_oslisLineItemId = a})

-- | The ID of the product to ship. This is the REST ID used in the products
-- service. Either lineItemId or productId is required.
oslisProductId :: Lens' OrderShipmentLineItemShipment (Maybe Text)
oslisProductId
  = lens _oslisProductId
      (\ s a -> s{_oslisProductId = a})

instance FromJSON OrderShipmentLineItemShipment where
        parseJSON
          = withObject "OrderShipmentLineItemShipment"
              (\ o ->
                 OrderShipmentLineItemShipment' <$>
                   (o .:? "quantity") <*> (o .:? "lineItemId") <*>
                     (o .:? "productId"))

instance ToJSON OrderShipmentLineItemShipment where
        toJSON OrderShipmentLineItemShipment'{..}
          = object
              (catMaybes
                 [("quantity" .=) <$> _oslisQuantity,
                  ("lineItemId" .=) <$> _oslisLineItemId,
                  ("productId" .=) <$> _oslisProductId])

-- | The available policies.
--
-- /See:/ 'returnPolicyOnlinePolicy' smart constructor.
data ReturnPolicyOnlinePolicy =
  ReturnPolicyOnlinePolicy'
    { _rpopDays :: !(Maybe (Textual Int64))
    , _rpopType :: !(Maybe ReturnPolicyOnlinePolicyType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReturnPolicyOnlinePolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpopDays'
--
-- * 'rpopType'
returnPolicyOnlinePolicy
    :: ReturnPolicyOnlinePolicy
returnPolicyOnlinePolicy =
  ReturnPolicyOnlinePolicy' {_rpopDays = Nothing, _rpopType = Nothing}


-- | The number of days items can be returned after delivery, where one day
-- is defined to be 24 hours after the delivery timestamp. Required for
-- \`numberOfDaysAfterDelivery\` returns.
rpopDays :: Lens' ReturnPolicyOnlinePolicy (Maybe Int64)
rpopDays
  = lens _rpopDays (\ s a -> s{_rpopDays = a}) .
      mapping _Coerce

-- | Policy type.
rpopType :: Lens' ReturnPolicyOnlinePolicy (Maybe ReturnPolicyOnlinePolicyType)
rpopType = lens _rpopType (\ s a -> s{_rpopType = a})

instance FromJSON ReturnPolicyOnlinePolicy where
        parseJSON
          = withObject "ReturnPolicyOnlinePolicy"
              (\ o ->
                 ReturnPolicyOnlinePolicy' <$>
                   (o .:? "days") <*> (o .:? "type"))

instance ToJSON ReturnPolicyOnlinePolicy where
        toJSON ReturnPolicyOnlinePolicy'{..}
          = object
              (catMaybes
                 [("days" .=) <$> _rpopDays,
                  ("type" .=) <$> _rpopType])

--
-- /See:/ 'orderreportsListTransactionsResponse' smart constructor.
data OrderreportsListTransactionsResponse =
  OrderreportsListTransactionsResponse'
    { _oltrNextPageToken :: !(Maybe Text)
    , _oltrTransactions :: !(Maybe [OrderReportTransaction])
    , _oltrKind :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderreportsListTransactionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oltrNextPageToken'
--
-- * 'oltrTransactions'
--
-- * 'oltrKind'
orderreportsListTransactionsResponse
    :: OrderreportsListTransactionsResponse
orderreportsListTransactionsResponse =
  OrderreportsListTransactionsResponse'
    { _oltrNextPageToken = Nothing
    , _oltrTransactions = Nothing
    , _oltrKind = Nothing
    }


-- | The token for the retrieval of the next page of transactions.
oltrNextPageToken :: Lens' OrderreportsListTransactionsResponse (Maybe Text)
oltrNextPageToken
  = lens _oltrNextPageToken
      (\ s a -> s{_oltrNextPageToken = a})

-- | The list of transactions.
oltrTransactions :: Lens' OrderreportsListTransactionsResponse [OrderReportTransaction]
oltrTransactions
  = lens _oltrTransactions
      (\ s a -> s{_oltrTransactions = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#orderreportsListTransactionsResponse\".
oltrKind :: Lens' OrderreportsListTransactionsResponse (Maybe Text)
oltrKind = lens _oltrKind (\ s a -> s{_oltrKind = a})

instance FromJSON
           OrderreportsListTransactionsResponse
         where
        parseJSON
          = withObject "OrderreportsListTransactionsResponse"
              (\ o ->
                 OrderreportsListTransactionsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "transactions" .!= mempty)
                     <*> (o .:? "kind"))

instance ToJSON OrderreportsListTransactionsResponse
         where
        toJSON OrderreportsListTransactionsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _oltrNextPageToken,
                  ("transactions" .=) <$> _oltrTransactions,
                  ("kind" .=) <$> _oltrKind])

--
-- /See:/ 'settlementTransactionAmount' smart constructor.
data SettlementTransactionAmount =
  SettlementTransactionAmount'
    { _staCommission :: !(Maybe SettlementTransactionAmountCommission)
    , _staTransactionAmount :: !(Maybe Price)
    , _staType :: !(Maybe Text)
    , _staDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SettlementTransactionAmount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'staCommission'
--
-- * 'staTransactionAmount'
--
-- * 'staType'
--
-- * 'staDescription'
settlementTransactionAmount
    :: SettlementTransactionAmount
settlementTransactionAmount =
  SettlementTransactionAmount'
    { _staCommission = Nothing
    , _staTransactionAmount = Nothing
    , _staType = Nothing
    , _staDescription = Nothing
    }


staCommission :: Lens' SettlementTransactionAmount (Maybe SettlementTransactionAmountCommission)
staCommission
  = lens _staCommission
      (\ s a -> s{_staCommission = a})

-- | The amount that contributes to the line item price.
staTransactionAmount :: Lens' SettlementTransactionAmount (Maybe Price)
staTransactionAmount
  = lens _staTransactionAmount
      (\ s a -> s{_staTransactionAmount = a})

-- | The type of the amount. Acceptable values are: - \"\`itemPrice\`\" -
-- \"\`orderPrice\`\" - \"\`refund\`\" - \"\`earlyRefund\`\" -
-- \"\`courtesyRefund\`\" - \"\`returnRefund\`\" -
-- \"\`returnLabelShippingFeeAmount\`\"
staType :: Lens' SettlementTransactionAmount (Maybe Text)
staType = lens _staType (\ s a -> s{_staType = a})

-- | The description of the event. Acceptable values are: -
-- \"\`taxWithhold\`\" - \"\`principal\`\" - \"\`principalAdjustment\`\" -
-- \"\`shippingFee\`\" - \"\`merchantRemittedSalesTax\`\" -
-- \"\`googleRemittedSalesTax\`\" - \"\`merchantCoupon\`\" -
-- \"\`merchantCouponTax\`\" - \"\`merchantRemittedDisposalTax\`\" -
-- \"\`googleRemittedDisposalTax\`\" -
-- \"\`merchantRemittedRedemptionFee\`\" -
-- \"\`googleRemittedRedemptionFee\`\" - \"\`eeeEcoFee\`\" -
-- \"\`furnitureEcoFee\`\" - \"\`copyPrivateFee\`\" -
-- \"\`eeeEcoFeeCommission\`\" - \"\`furnitureEcoFeeCommission\`\" -
-- \"\`copyPrivateFeeCommission\`\" - \"\`principalRefund\`\" -
-- \"\`principalRefundTax\`\" - \"\`itemCommission\`\" -
-- \"\`adjustmentCommission\`\" - \"\`shippingFeeCommission\`\" -
-- \"\`commissionRefund\`\" - \"\`damaged\`\" -
-- \"\`damagedOrDefectiveItem\`\" - \"\`expiredItem\`\" -
-- \"\`faultyItem\`\" - \"\`incorrectItemReceived\`\" - \"\`itemMissing\`\"
-- - \"\`qualityNotExpected\`\" - \"\`receivedTooLate\`\" -
-- \"\`storePackageMissing\`\" - \"\`transitPackageMissing\`\" -
-- \"\`unsuccessfulDeliveryUndeliverable\`\" - \"\`wrongChargeInStore\`\" -
-- \"\`wrongItem\`\" - \"\`returns\`\" - \"\`undeliverable\`\" -
-- \"\`refundFromMerchant\`\" - \"\`returnLabelShippingFee\`\" -
-- \"\`pspFee\`\"
staDescription :: Lens' SettlementTransactionAmount (Maybe Text)
staDescription
  = lens _staDescription
      (\ s a -> s{_staDescription = a})

instance FromJSON SettlementTransactionAmount where
        parseJSON
          = withObject "SettlementTransactionAmount"
              (\ o ->
                 SettlementTransactionAmount' <$>
                   (o .:? "commission") <*> (o .:? "transactionAmount")
                     <*> (o .:? "type")
                     <*> (o .:? "description"))

instance ToJSON SettlementTransactionAmount where
        toJSON SettlementTransactionAmount'{..}
          = object
              (catMaybes
                 [("commission" .=) <$> _staCommission,
                  ("transactionAmount" .=) <$> _staTransactionAmount,
                  ("type" .=) <$> _staType,
                  ("description" .=) <$> _staDescription])

--
-- /See:/ 'liaSettingsCustomBatchResponse' smart constructor.
data LiaSettingsCustomBatchResponse =
  LiaSettingsCustomBatchResponse'
    { _lscbrEntries :: !(Maybe [LiaSettingsCustomBatchResponseEntry])
    , _lscbrKind :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiaSettingsCustomBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lscbrEntries'
--
-- * 'lscbrKind'
liaSettingsCustomBatchResponse
    :: LiaSettingsCustomBatchResponse
liaSettingsCustomBatchResponse =
  LiaSettingsCustomBatchResponse'
    {_lscbrEntries = Nothing, _lscbrKind = Nothing}


-- | The result of the execution of the batch requests.
lscbrEntries :: Lens' LiaSettingsCustomBatchResponse [LiaSettingsCustomBatchResponseEntry]
lscbrEntries
  = lens _lscbrEntries (\ s a -> s{_lscbrEntries = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#liasettingsCustomBatchResponse\".
lscbrKind :: Lens' LiaSettingsCustomBatchResponse (Maybe Text)
lscbrKind
  = lens _lscbrKind (\ s a -> s{_lscbrKind = a})

instance FromJSON LiaSettingsCustomBatchResponse
         where
        parseJSON
          = withObject "LiaSettingsCustomBatchResponse"
              (\ o ->
                 LiaSettingsCustomBatchResponse' <$>
                   (o .:? "entries" .!= mempty) <*> (o .:? "kind"))

instance ToJSON LiaSettingsCustomBatchResponse where
        toJSON LiaSettingsCustomBatchResponse'{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _lscbrEntries,
                  ("kind" .=) <$> _lscbrKind])

--
-- /See:/ 'loyaltyPoints' smart constructor.
data LoyaltyPoints =
  LoyaltyPoints'
    { _lpRatio :: !(Maybe (Textual Double))
    , _lpPointsValue :: !(Maybe (Textual Int64))
    , _lpName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LoyaltyPoints' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpRatio'
--
-- * 'lpPointsValue'
--
-- * 'lpName'
loyaltyPoints
    :: LoyaltyPoints
loyaltyPoints =
  LoyaltyPoints'
    {_lpRatio = Nothing, _lpPointsValue = Nothing, _lpName = Nothing}


-- | The ratio of a point when converted to currency. Google assumes currency
-- based on Merchant Center settings. If ratio is left out, it defaults to
-- 1.0.
lpRatio :: Lens' LoyaltyPoints (Maybe Double)
lpRatio
  = lens _lpRatio (\ s a -> s{_lpRatio = a}) .
      mapping _Coerce

-- | The retailer\'s loyalty points in absolute value.
lpPointsValue :: Lens' LoyaltyPoints (Maybe Int64)
lpPointsValue
  = lens _lpPointsValue
      (\ s a -> s{_lpPointsValue = a})
      . mapping _Coerce

-- | Name of loyalty points program. It is recommended to limit the name to
-- 12 full-width characters or 24 Roman characters.
lpName :: Lens' LoyaltyPoints (Maybe Text)
lpName = lens _lpName (\ s a -> s{_lpName = a})

instance FromJSON LoyaltyPoints where
        parseJSON
          = withObject "LoyaltyPoints"
              (\ o ->
                 LoyaltyPoints' <$>
                   (o .:? "ratio") <*> (o .:? "pointsValue") <*>
                     (o .:? "name"))

instance ToJSON LoyaltyPoints where
        toJSON LoyaltyPoints'{..}
          = object
              (catMaybes
                 [("ratio" .=) <$> _lpRatio,
                  ("pointsValue" .=) <$> _lpPointsValue,
                  ("name" .=) <$> _lpName])

--
-- /See:/ 'liaSettingsSetPosDataProviderResponse' smart constructor.
newtype LiaSettingsSetPosDataProviderResponse =
  LiaSettingsSetPosDataProviderResponse'
    { _lsspdprKind :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiaSettingsSetPosDataProviderResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsspdprKind'
liaSettingsSetPosDataProviderResponse
    :: LiaSettingsSetPosDataProviderResponse
liaSettingsSetPosDataProviderResponse =
  LiaSettingsSetPosDataProviderResponse' {_lsspdprKind = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#liasettingsSetPosDataProviderResponse\".
lsspdprKind :: Lens' LiaSettingsSetPosDataProviderResponse (Maybe Text)
lsspdprKind
  = lens _lsspdprKind (\ s a -> s{_lsspdprKind = a})

instance FromJSON
           LiaSettingsSetPosDataProviderResponse
         where
        parseJSON
          = withObject "LiaSettingsSetPosDataProviderResponse"
              (\ o ->
                 LiaSettingsSetPosDataProviderResponse' <$>
                   (o .:? "kind"))

instance ToJSON LiaSettingsSetPosDataProviderResponse
         where
        toJSON LiaSettingsSetPosDataProviderResponse'{..}
          = object (catMaybes [("kind" .=) <$> _lsspdprKind])

-- | Response message for the ListCollectionStatuses method.
--
-- /See:/ 'listCollectionStatusesResponse' smart constructor.
data ListCollectionStatusesResponse =
  ListCollectionStatusesResponse'
    { _lcsrNextPageToken :: !(Maybe Text)
    , _lcsrResources :: !(Maybe [CollectionStatus])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListCollectionStatusesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcsrNextPageToken'
--
-- * 'lcsrResources'
listCollectionStatusesResponse
    :: ListCollectionStatusesResponse
listCollectionStatusesResponse =
  ListCollectionStatusesResponse'
    {_lcsrNextPageToken = Nothing, _lcsrResources = Nothing}


-- | A token, which can be sent as \`page_token\` to retrieve the next page.
-- If this field is omitted, there are no subsequent pages.
lcsrNextPageToken :: Lens' ListCollectionStatusesResponse (Maybe Text)
lcsrNextPageToken
  = lens _lcsrNextPageToken
      (\ s a -> s{_lcsrNextPageToken = a})

-- | The collectionstatuses listed.
lcsrResources :: Lens' ListCollectionStatusesResponse [CollectionStatus]
lcsrResources
  = lens _lcsrResources
      (\ s a -> s{_lcsrResources = a})
      . _Default
      . _Coerce

instance FromJSON ListCollectionStatusesResponse
         where
        parseJSON
          = withObject "ListCollectionStatusesResponse"
              (\ o ->
                 ListCollectionStatusesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "resources" .!= mempty))

instance ToJSON ListCollectionStatusesResponse where
        toJSON ListCollectionStatusesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lcsrNextPageToken,
                  ("resources" .=) <$> _lcsrResources])

-- | The return reason category info wrapper.
--
-- /See:/ 'returnPolicyOnlineReturnReasonCategoryInfo' smart constructor.
data ReturnPolicyOnlineReturnReasonCategoryInfo =
  ReturnPolicyOnlineReturnReasonCategoryInfo'
    { _rporrciReturnReasonCategory :: !(Maybe ReturnPolicyOnlineReturnReasonCategoryInfoReturnReasonCategory)
    , _rporrciReturnShippingFee :: !(Maybe ReturnPolicyOnlineReturnShippingFee)
    , _rporrciReturnLabelSource :: !(Maybe ReturnPolicyOnlineReturnReasonCategoryInfoReturnLabelSource)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReturnPolicyOnlineReturnReasonCategoryInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rporrciReturnReasonCategory'
--
-- * 'rporrciReturnShippingFee'
--
-- * 'rporrciReturnLabelSource'
returnPolicyOnlineReturnReasonCategoryInfo
    :: ReturnPolicyOnlineReturnReasonCategoryInfo
returnPolicyOnlineReturnReasonCategoryInfo =
  ReturnPolicyOnlineReturnReasonCategoryInfo'
    { _rporrciReturnReasonCategory = Nothing
    , _rporrciReturnShippingFee = Nothing
    , _rporrciReturnLabelSource = Nothing
    }


-- | The return reason category.
rporrciReturnReasonCategory :: Lens' ReturnPolicyOnlineReturnReasonCategoryInfo (Maybe ReturnPolicyOnlineReturnReasonCategoryInfoReturnReasonCategory)
rporrciReturnReasonCategory
  = lens _rporrciReturnReasonCategory
      (\ s a -> s{_rporrciReturnReasonCategory = a})

-- | The corresponding return shipping fee. This is only applicable when
-- returnLabelSource is not the customer\'s responsibility.
rporrciReturnShippingFee :: Lens' ReturnPolicyOnlineReturnReasonCategoryInfo (Maybe ReturnPolicyOnlineReturnShippingFee)
rporrciReturnShippingFee
  = lens _rporrciReturnShippingFee
      (\ s a -> s{_rporrciReturnShippingFee = a})

-- | The corresponding return label source.
rporrciReturnLabelSource :: Lens' ReturnPolicyOnlineReturnReasonCategoryInfo (Maybe ReturnPolicyOnlineReturnReasonCategoryInfoReturnLabelSource)
rporrciReturnLabelSource
  = lens _rporrciReturnLabelSource
      (\ s a -> s{_rporrciReturnLabelSource = a})

instance FromJSON
           ReturnPolicyOnlineReturnReasonCategoryInfo
         where
        parseJSON
          = withObject
              "ReturnPolicyOnlineReturnReasonCategoryInfo"
              (\ o ->
                 ReturnPolicyOnlineReturnReasonCategoryInfo' <$>
                   (o .:? "returnReasonCategory") <*>
                     (o .:? "returnShippingFee")
                     <*> (o .:? "returnLabelSource"))

instance ToJSON
           ReturnPolicyOnlineReturnReasonCategoryInfo
         where
        toJSON
          ReturnPolicyOnlineReturnReasonCategoryInfo'{..}
          = object
              (catMaybes
                 [("returnReasonCategory" .=) <$>
                    _rporrciReturnReasonCategory,
                  ("returnShippingFee" .=) <$>
                    _rporrciReturnShippingFee,
                  ("returnLabelSource" .=) <$>
                    _rporrciReturnLabelSource])

--
-- /See:/ 'settlementTransactionTransaction' smart constructor.
data SettlementTransactionTransaction =
  SettlementTransactionTransaction'
    { _sttPostDate :: !(Maybe Text)
    , _sttType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SettlementTransactionTransaction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sttPostDate'
--
-- * 'sttType'
settlementTransactionTransaction
    :: SettlementTransactionTransaction
settlementTransactionTransaction =
  SettlementTransactionTransaction' {_sttPostDate = Nothing, _sttType = Nothing}


-- | The time on which the event occurred in ISO 8601 format.
sttPostDate :: Lens' SettlementTransactionTransaction (Maybe Text)
sttPostDate
  = lens _sttPostDate (\ s a -> s{_sttPostDate = a})

-- | The type of the transaction that occurred. Acceptable values are: -
-- \"\`order\`\" - \"\`reversal\`\" - \"\`orderRefund\`\" -
-- \"\`reversalRefund\`\" - \"\`issueRelatedRefundAndReplacement\`\" -
-- \"\`returnLabelShippingFeeTransaction\`\" -
-- \"\`reversalIssueRelatedRefundAndReplacement\`\" -
-- \"\`reversalReturnLabelShippingFeeTransaction\`\" -
-- \"\`lumpSumCorrectionTransaction\`\"
sttType :: Lens' SettlementTransactionTransaction (Maybe Text)
sttType = lens _sttType (\ s a -> s{_sttType = a})

instance FromJSON SettlementTransactionTransaction
         where
        parseJSON
          = withObject "SettlementTransactionTransaction"
              (\ o ->
                 SettlementTransactionTransaction' <$>
                   (o .:? "postDate") <*> (o .:? "type"))

instance ToJSON SettlementTransactionTransaction
         where
        toJSON SettlementTransactionTransaction'{..}
          = object
              (catMaybes
                 [("postDate" .=) <$> _sttPostDate,
                  ("type" .=) <$> _sttType])

-- | The status of an account, i.e., information about its products, which is
-- computed offline and not returned immediately at insertion time.
--
-- /See:/ 'accountStatus' smart constructor.
data AccountStatus =
  AccountStatus'
    { _asAccountLevelIssues :: !(Maybe [AccountStatusAccountLevelIssue])
    , _asKind :: !(Maybe Text)
    , _asAccountId :: !(Maybe Text)
    , _asProducts :: !(Maybe [AccountStatusProducts])
    , _asWebsiteClaimed :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asAccountLevelIssues'
--
-- * 'asKind'
--
-- * 'asAccountId'
--
-- * 'asProducts'
--
-- * 'asWebsiteClaimed'
accountStatus
    :: AccountStatus
accountStatus =
  AccountStatus'
    { _asAccountLevelIssues = Nothing
    , _asKind = Nothing
    , _asAccountId = Nothing
    , _asProducts = Nothing
    , _asWebsiteClaimed = Nothing
    }


-- | A list of account level issues.
asAccountLevelIssues :: Lens' AccountStatus [AccountStatusAccountLevelIssue]
asAccountLevelIssues
  = lens _asAccountLevelIssues
      (\ s a -> s{_asAccountLevelIssues = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"\`content#accountStatus\`\"
asKind :: Lens' AccountStatus (Maybe Text)
asKind = lens _asKind (\ s a -> s{_asKind = a})

-- | The ID of the account for which the status is reported.
asAccountId :: Lens' AccountStatus (Maybe Text)
asAccountId
  = lens _asAccountId (\ s a -> s{_asAccountId = a})

-- | List of product-related data by channel, destination, and country. Data
-- in this field may be delayed by up to 30 minutes.
asProducts :: Lens' AccountStatus [AccountStatusProducts]
asProducts
  = lens _asProducts (\ s a -> s{_asProducts = a}) .
      _Default
      . _Coerce

-- | Whether the account\'s website is claimed or not.
asWebsiteClaimed :: Lens' AccountStatus (Maybe Bool)
asWebsiteClaimed
  = lens _asWebsiteClaimed
      (\ s a -> s{_asWebsiteClaimed = a})

instance FromJSON AccountStatus where
        parseJSON
          = withObject "AccountStatus"
              (\ o ->
                 AccountStatus' <$>
                   (o .:? "accountLevelIssues" .!= mempty) <*>
                     (o .:? "kind")
                     <*> (o .:? "accountId")
                     <*> (o .:? "products" .!= mempty)
                     <*> (o .:? "websiteClaimed"))

instance ToJSON AccountStatus where
        toJSON AccountStatus'{..}
          = object
              (catMaybes
                 [("accountLevelIssues" .=) <$> _asAccountLevelIssues,
                  ("kind" .=) <$> _asKind,
                  ("accountId" .=) <$> _asAccountId,
                  ("products" .=) <$> _asProducts,
                  ("websiteClaimed" .=) <$> _asWebsiteClaimed])

-- | A batch entry encoding a single non-batch shippingsettings request.
--
-- /See:/ 'shippingSettingsCustomBatchRequestEntry' smart constructor.
data ShippingSettingsCustomBatchRequestEntry =
  ShippingSettingsCustomBatchRequestEntry'
    { _sscbreMerchantId :: !(Maybe (Textual Word64))
    , _sscbreAccountId :: !(Maybe (Textual Word64))
    , _sscbreMethod :: !(Maybe Text)
    , _sscbreShippingSettings :: !(Maybe ShippingSettings)
    , _sscbreBatchId :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ShippingSettingsCustomBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sscbreMerchantId'
--
-- * 'sscbreAccountId'
--
-- * 'sscbreMethod'
--
-- * 'sscbreShippingSettings'
--
-- * 'sscbreBatchId'
shippingSettingsCustomBatchRequestEntry
    :: ShippingSettingsCustomBatchRequestEntry
shippingSettingsCustomBatchRequestEntry =
  ShippingSettingsCustomBatchRequestEntry'
    { _sscbreMerchantId = Nothing
    , _sscbreAccountId = Nothing
    , _sscbreMethod = Nothing
    , _sscbreShippingSettings = Nothing
    , _sscbreBatchId = Nothing
    }


-- | The ID of the managing account.
sscbreMerchantId :: Lens' ShippingSettingsCustomBatchRequestEntry (Maybe Word64)
sscbreMerchantId
  = lens _sscbreMerchantId
      (\ s a -> s{_sscbreMerchantId = a})
      . mapping _Coerce

-- | The ID of the account for which to get\/update account shipping
-- settings.
sscbreAccountId :: Lens' ShippingSettingsCustomBatchRequestEntry (Maybe Word64)
sscbreAccountId
  = lens _sscbreAccountId
      (\ s a -> s{_sscbreAccountId = a})
      . mapping _Coerce

-- | The method of the batch entry. Acceptable values are: - \"\`get\`\" -
-- \"\`update\`\"
sscbreMethod :: Lens' ShippingSettingsCustomBatchRequestEntry (Maybe Text)
sscbreMethod
  = lens _sscbreMethod (\ s a -> s{_sscbreMethod = a})

-- | The account shipping settings to update. Only defined if the method is
-- \`update\`.
sscbreShippingSettings :: Lens' ShippingSettingsCustomBatchRequestEntry (Maybe ShippingSettings)
sscbreShippingSettings
  = lens _sscbreShippingSettings
      (\ s a -> s{_sscbreShippingSettings = a})

-- | An entry ID, unique within the batch request.
sscbreBatchId :: Lens' ShippingSettingsCustomBatchRequestEntry (Maybe Word32)
sscbreBatchId
  = lens _sscbreBatchId
      (\ s a -> s{_sscbreBatchId = a})
      . mapping _Coerce

instance FromJSON
           ShippingSettingsCustomBatchRequestEntry
         where
        parseJSON
          = withObject
              "ShippingSettingsCustomBatchRequestEntry"
              (\ o ->
                 ShippingSettingsCustomBatchRequestEntry' <$>
                   (o .:? "merchantId") <*> (o .:? "accountId") <*>
                     (o .:? "method")
                     <*> (o .:? "shippingSettings")
                     <*> (o .:? "batchId"))

instance ToJSON
           ShippingSettingsCustomBatchRequestEntry
         where
        toJSON ShippingSettingsCustomBatchRequestEntry'{..}
          = object
              (catMaybes
                 [("merchantId" .=) <$> _sscbreMerchantId,
                  ("accountId" .=) <$> _sscbreAccountId,
                  ("method" .=) <$> _sscbreMethod,
                  ("shippingSettings" .=) <$> _sscbreShippingSettings,
                  ("batchId" .=) <$> _sscbreBatchId])

--
-- /See:/ 'posInventoryResponse' smart constructor.
data PosInventoryResponse =
  PosInventoryResponse'
    { _pirStoreCode :: !(Maybe Text)
    , _pirKind :: !(Maybe Text)
    , _pirItemId :: !(Maybe Text)
    , _pirQuantity :: !(Maybe (Textual Int64))
    , _pirTargetCountry :: !(Maybe Text)
    , _pirGtin :: !(Maybe Text)
    , _pirPrice :: !(Maybe Price)
    , _pirContentLanguage :: !(Maybe Text)
    , _pirTimestamp :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PosInventoryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pirStoreCode'
--
-- * 'pirKind'
--
-- * 'pirItemId'
--
-- * 'pirQuantity'
--
-- * 'pirTargetCountry'
--
-- * 'pirGtin'
--
-- * 'pirPrice'
--
-- * 'pirContentLanguage'
--
-- * 'pirTimestamp'
posInventoryResponse
    :: PosInventoryResponse
posInventoryResponse =
  PosInventoryResponse'
    { _pirStoreCode = Nothing
    , _pirKind = Nothing
    , _pirItemId = Nothing
    , _pirQuantity = Nothing
    , _pirTargetCountry = Nothing
    , _pirGtin = Nothing
    , _pirPrice = Nothing
    , _pirContentLanguage = Nothing
    , _pirTimestamp = Nothing
    }


-- | Required. The identifier of the merchant\'s store. Either a
-- \`storeCode\` inserted via the API or the code of the store in Google My
-- Business.
pirStoreCode :: Lens' PosInventoryResponse (Maybe Text)
pirStoreCode
  = lens _pirStoreCode (\ s a -> s{_pirStoreCode = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#posInventoryResponse\".
pirKind :: Lens' PosInventoryResponse (Maybe Text)
pirKind = lens _pirKind (\ s a -> s{_pirKind = a})

-- | Required. A unique identifier for the item.
pirItemId :: Lens' PosInventoryResponse (Maybe Text)
pirItemId
  = lens _pirItemId (\ s a -> s{_pirItemId = a})

-- | Required. The available quantity of the item.
pirQuantity :: Lens' PosInventoryResponse (Maybe Int64)
pirQuantity
  = lens _pirQuantity (\ s a -> s{_pirQuantity = a}) .
      mapping _Coerce

-- | Required. The CLDR territory code for the item.
pirTargetCountry :: Lens' PosInventoryResponse (Maybe Text)
pirTargetCountry
  = lens _pirTargetCountry
      (\ s a -> s{_pirTargetCountry = a})

-- | Global Trade Item Number.
pirGtin :: Lens' PosInventoryResponse (Maybe Text)
pirGtin = lens _pirGtin (\ s a -> s{_pirGtin = a})

-- | Required. The current price of the item.
pirPrice :: Lens' PosInventoryResponse (Maybe Price)
pirPrice = lens _pirPrice (\ s a -> s{_pirPrice = a})

-- | Required. The two-letter ISO 639-1 language code for the item.
pirContentLanguage :: Lens' PosInventoryResponse (Maybe Text)
pirContentLanguage
  = lens _pirContentLanguage
      (\ s a -> s{_pirContentLanguage = a})

-- | Required. The inventory timestamp, in ISO 8601 format.
pirTimestamp :: Lens' PosInventoryResponse (Maybe Text)
pirTimestamp
  = lens _pirTimestamp (\ s a -> s{_pirTimestamp = a})

instance FromJSON PosInventoryResponse where
        parseJSON
          = withObject "PosInventoryResponse"
              (\ o ->
                 PosInventoryResponse' <$>
                   (o .:? "storeCode") <*> (o .:? "kind") <*>
                     (o .:? "itemId")
                     <*> (o .:? "quantity")
                     <*> (o .:? "targetCountry")
                     <*> (o .:? "gtin")
                     <*> (o .:? "price")
                     <*> (o .:? "contentLanguage")
                     <*> (o .:? "timestamp"))

instance ToJSON PosInventoryResponse where
        toJSON PosInventoryResponse'{..}
          = object
              (catMaybes
                 [("storeCode" .=) <$> _pirStoreCode,
                  ("kind" .=) <$> _pirKind,
                  ("itemId" .=) <$> _pirItemId,
                  ("quantity" .=) <$> _pirQuantity,
                  ("targetCountry" .=) <$> _pirTargetCountry,
                  ("gtin" .=) <$> _pirGtin, ("price" .=) <$> _pirPrice,
                  ("contentLanguage" .=) <$> _pirContentLanguage,
                  ("timestamp" .=) <$> _pirTimestamp])

--
-- /See:/ 'linkService' smart constructor.
data LinkService =
  LinkService'
    { _lsStatus :: !(Maybe Text)
    , _lsService :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LinkService' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsStatus'
--
-- * 'lsService'
linkService
    :: LinkService
linkService = LinkService' {_lsStatus = Nothing, _lsService = Nothing}


-- | Status of the link Acceptable values are: - \"\`active\`\" -
-- \"\`inactive\`\" - \"\`pending\`\"
lsStatus :: Lens' LinkService (Maybe Text)
lsStatus = lens _lsStatus (\ s a -> s{_lsStatus = a})

-- | Service provided to or by the linked account. Acceptable values are: -
-- \"\`shoppingActionsOrderManagement\`\" -
-- \"\`shoppingActionsProductManagement\`\" -
-- \"\`shoppingAdsProductManagement\`\"
lsService :: Lens' LinkService (Maybe Text)
lsService
  = lens _lsService (\ s a -> s{_lsService = a})

instance FromJSON LinkService where
        parseJSON
          = withObject "LinkService"
              (\ o ->
                 LinkService' <$>
                   (o .:? "status") <*> (o .:? "service"))

instance ToJSON LinkService where
        toJSON LinkService'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _lsStatus,
                  ("service" .=) <$> _lsService])

--
-- /See:/ 'accountstatusesCustomBatchRequest' smart constructor.
newtype AccountstatusesCustomBatchRequest =
  AccountstatusesCustomBatchRequest'
    { _acbrEntries :: Maybe [AccountstatusesCustomBatchRequestEntry]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountstatusesCustomBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acbrEntries'
accountstatusesCustomBatchRequest
    :: AccountstatusesCustomBatchRequest
accountstatusesCustomBatchRequest =
  AccountstatusesCustomBatchRequest' {_acbrEntries = Nothing}


-- | The request entries to be processed in the batch.
acbrEntries :: Lens' AccountstatusesCustomBatchRequest [AccountstatusesCustomBatchRequestEntry]
acbrEntries
  = lens _acbrEntries (\ s a -> s{_acbrEntries = a}) .
      _Default
      . _Coerce

instance FromJSON AccountstatusesCustomBatchRequest
         where
        parseJSON
          = withObject "AccountstatusesCustomBatchRequest"
              (\ o ->
                 AccountstatusesCustomBatchRequest' <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON AccountstatusesCustomBatchRequest
         where
        toJSON AccountstatusesCustomBatchRequest'{..}
          = object
              (catMaybes [("entries" .=) <$> _acbrEntries])

--
-- /See:/ 'accountsUpdateLabelsResponse' smart constructor.
newtype AccountsUpdateLabelsResponse =
  AccountsUpdateLabelsResponse'
    { _aulrKind :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsUpdateLabelsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aulrKind'
accountsUpdateLabelsResponse
    :: AccountsUpdateLabelsResponse
accountsUpdateLabelsResponse =
  AccountsUpdateLabelsResponse' {_aulrKind = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#accountsUpdateLabelsResponse\".
aulrKind :: Lens' AccountsUpdateLabelsResponse (Maybe Text)
aulrKind = lens _aulrKind (\ s a -> s{_aulrKind = a})

instance FromJSON AccountsUpdateLabelsResponse where
        parseJSON
          = withObject "AccountsUpdateLabelsResponse"
              (\ o ->
                 AccountsUpdateLabelsResponse' <$> (o .:? "kind"))

instance ToJSON AccountsUpdateLabelsResponse where
        toJSON AccountsUpdateLabelsResponse'{..}
          = object (catMaybes [("kind" .=) <$> _aulrKind])

--
-- /See:/ 'accounttaxListResponse' smart constructor.
data AccounttaxListResponse =
  AccounttaxListResponse'
    { _alrNextPageToken :: !(Maybe Text)
    , _alrKind :: !(Maybe Text)
    , _alrResources :: !(Maybe [AccountTax])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccounttaxListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alrNextPageToken'
--
-- * 'alrKind'
--
-- * 'alrResources'
accounttaxListResponse
    :: AccounttaxListResponse
accounttaxListResponse =
  AccounttaxListResponse'
    {_alrNextPageToken = Nothing, _alrKind = Nothing, _alrResources = Nothing}


-- | The token for the retrieval of the next page of account tax settings.
alrNextPageToken :: Lens' AccounttaxListResponse (Maybe Text)
alrNextPageToken
  = lens _alrNextPageToken
      (\ s a -> s{_alrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#accounttaxListResponse\".
alrKind :: Lens' AccounttaxListResponse (Maybe Text)
alrKind = lens _alrKind (\ s a -> s{_alrKind = a})

alrResources :: Lens' AccounttaxListResponse [AccountTax]
alrResources
  = lens _alrResources (\ s a -> s{_alrResources = a})
      . _Default
      . _Coerce

instance FromJSON AccounttaxListResponse where
        parseJSON
          = withObject "AccounttaxListResponse"
              (\ o ->
                 AccounttaxListResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "kind") <*>
                     (o .:? "resources" .!= mempty))

instance ToJSON AccounttaxListResponse where
        toJSON AccounttaxListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _alrNextPageToken,
                  ("kind" .=) <$> _alrKind,
                  ("resources" .=) <$> _alrResources])

--
-- /See:/ 'liaSettingsRequestInventoryVerificationResponse' smart constructor.
newtype LiaSettingsRequestInventoryVerificationResponse =
  LiaSettingsRequestInventoryVerificationResponse'
    { _lsrivrKind :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiaSettingsRequestInventoryVerificationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrivrKind'
liaSettingsRequestInventoryVerificationResponse
    :: LiaSettingsRequestInventoryVerificationResponse
liaSettingsRequestInventoryVerificationResponse =
  LiaSettingsRequestInventoryVerificationResponse' {_lsrivrKind = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#liasettingsRequestInventoryVerificationResponse\".
lsrivrKind :: Lens' LiaSettingsRequestInventoryVerificationResponse (Maybe Text)
lsrivrKind
  = lens _lsrivrKind (\ s a -> s{_lsrivrKind = a})

instance FromJSON
           LiaSettingsRequestInventoryVerificationResponse
         where
        parseJSON
          = withObject
              "LiaSettingsRequestInventoryVerificationResponse"
              (\ o ->
                 LiaSettingsRequestInventoryVerificationResponse' <$>
                   (o .:? "kind"))

instance ToJSON
           LiaSettingsRequestInventoryVerificationResponse
         where
        toJSON
          LiaSettingsRequestInventoryVerificationResponse'{..}
          = object (catMaybes [("kind" .=) <$> _lsrivrKind])

--
-- /See:/ 'orderinvoicesCreateChargeInvoiceResponse' smart constructor.
data OrderinvoicesCreateChargeInvoiceResponse =
  OrderinvoicesCreateChargeInvoiceResponse'
    { _occirKind :: !(Maybe Text)
    , _occirExecutionStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderinvoicesCreateChargeInvoiceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'occirKind'
--
-- * 'occirExecutionStatus'
orderinvoicesCreateChargeInvoiceResponse
    :: OrderinvoicesCreateChargeInvoiceResponse
orderinvoicesCreateChargeInvoiceResponse =
  OrderinvoicesCreateChargeInvoiceResponse'
    {_occirKind = Nothing, _occirExecutionStatus = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#orderinvoicesCreateChargeInvoiceResponse\".
occirKind :: Lens' OrderinvoicesCreateChargeInvoiceResponse (Maybe Text)
occirKind
  = lens _occirKind (\ s a -> s{_occirKind = a})

-- | The status of the execution. Acceptable values are: - \"\`duplicate\`\"
-- - \"\`executed\`\"
occirExecutionStatus :: Lens' OrderinvoicesCreateChargeInvoiceResponse (Maybe Text)
occirExecutionStatus
  = lens _occirExecutionStatus
      (\ s a -> s{_occirExecutionStatus = a})

instance FromJSON
           OrderinvoicesCreateChargeInvoiceResponse
         where
        parseJSON
          = withObject
              "OrderinvoicesCreateChargeInvoiceResponse"
              (\ o ->
                 OrderinvoicesCreateChargeInvoiceResponse' <$>
                   (o .:? "kind") <*> (o .:? "executionStatus"))

instance ToJSON
           OrderinvoicesCreateChargeInvoiceResponse
         where
        toJSON OrderinvoicesCreateChargeInvoiceResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _occirKind,
                  ("executionStatus" .=) <$> _occirExecutionStatus])

-- | Matcher that specifies eligible offers. When the USE_FEED_ATTRIBUTE
-- option is selected, only the repricing_rule_id attribute on the product
-- feed is used to specify offer-rule mapping. When the CUSTOM_FILTER
-- option is selected, only the *_matcher fields are used to filter the
-- offers for offer-rule mapping. If the CUSTOM_FILTER option is selected,
-- an offer needs to satisfy each custom filter matcher to be eligible for
-- a rule. Size limit: the sum of the number of entries in all the matchers
-- should not exceed 20. For example, there can be 15 product ids and 5
-- brands, but not 10 product ids and 11 brands.
--
-- /See:/ 'repricingRuleEligibleOfferMatcher' smart constructor.
data RepricingRuleEligibleOfferMatcher =
  RepricingRuleEligibleOfferMatcher'
    { _rreomItemGroupIdMatcher :: !(Maybe RepricingRuleEligibleOfferMatcherStringMatcher)
    , _rreomOfferIdMatcher :: !(Maybe RepricingRuleEligibleOfferMatcherStringMatcher)
    , _rreomBrandMatcher :: !(Maybe RepricingRuleEligibleOfferMatcherStringMatcher)
    , _rreomSkipWhenOnPromotion :: !(Maybe Bool)
    , _rreomMatcherOption :: !(Maybe RepricingRuleEligibleOfferMatcherMatcherOption)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RepricingRuleEligibleOfferMatcher' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rreomItemGroupIdMatcher'
--
-- * 'rreomOfferIdMatcher'
--
-- * 'rreomBrandMatcher'
--
-- * 'rreomSkipWhenOnPromotion'
--
-- * 'rreomMatcherOption'
repricingRuleEligibleOfferMatcher
    :: RepricingRuleEligibleOfferMatcher
repricingRuleEligibleOfferMatcher =
  RepricingRuleEligibleOfferMatcher'
    { _rreomItemGroupIdMatcher = Nothing
    , _rreomOfferIdMatcher = Nothing
    , _rreomBrandMatcher = Nothing
    , _rreomSkipWhenOnPromotion = Nothing
    , _rreomMatcherOption = Nothing
    }


-- | Filter by the item group id.
rreomItemGroupIdMatcher :: Lens' RepricingRuleEligibleOfferMatcher (Maybe RepricingRuleEligibleOfferMatcherStringMatcher)
rreomItemGroupIdMatcher
  = lens _rreomItemGroupIdMatcher
      (\ s a -> s{_rreomItemGroupIdMatcher = a})

-- | Filter by the offer id.
rreomOfferIdMatcher :: Lens' RepricingRuleEligibleOfferMatcher (Maybe RepricingRuleEligibleOfferMatcherStringMatcher)
rreomOfferIdMatcher
  = lens _rreomOfferIdMatcher
      (\ s a -> s{_rreomOfferIdMatcher = a})

-- | Filter by the brand.
rreomBrandMatcher :: Lens' RepricingRuleEligibleOfferMatcher (Maybe RepricingRuleEligibleOfferMatcherStringMatcher)
rreomBrandMatcher
  = lens _rreomBrandMatcher
      (\ s a -> s{_rreomBrandMatcher = a})

-- | When true, the rule won\'t be applied to offers with active promotions.
rreomSkipWhenOnPromotion :: Lens' RepricingRuleEligibleOfferMatcher (Maybe Bool)
rreomSkipWhenOnPromotion
  = lens _rreomSkipWhenOnPromotion
      (\ s a -> s{_rreomSkipWhenOnPromotion = a})

-- | Determines whether to use the custom matchers or the product feed
-- attribute \"repricing_rule_id\" to specify offer-rule mapping.
rreomMatcherOption :: Lens' RepricingRuleEligibleOfferMatcher (Maybe RepricingRuleEligibleOfferMatcherMatcherOption)
rreomMatcherOption
  = lens _rreomMatcherOption
      (\ s a -> s{_rreomMatcherOption = a})

instance FromJSON RepricingRuleEligibleOfferMatcher
         where
        parseJSON
          = withObject "RepricingRuleEligibleOfferMatcher"
              (\ o ->
                 RepricingRuleEligibleOfferMatcher' <$>
                   (o .:? "itemGroupIdMatcher") <*>
                     (o .:? "offerIdMatcher")
                     <*> (o .:? "brandMatcher")
                     <*> (o .:? "skipWhenOnPromotion")
                     <*> (o .:? "matcherOption"))

instance ToJSON RepricingRuleEligibleOfferMatcher
         where
        toJSON RepricingRuleEligibleOfferMatcher'{..}
          = object
              (catMaybes
                 [("itemGroupIdMatcher" .=) <$>
                    _rreomItemGroupIdMatcher,
                  ("offerIdMatcher" .=) <$> _rreomOfferIdMatcher,
                  ("brandMatcher" .=) <$> _rreomBrandMatcher,
                  ("skipWhenOnPromotion" .=) <$>
                    _rreomSkipWhenOnPromotion,
                  ("matcherOption" .=) <$> _rreomMatcherOption])

--
-- /See:/ 'datafeedsFetchNowResponse' smart constructor.
newtype DatafeedsFetchNowResponse =
  DatafeedsFetchNowResponse'
    { _dfnrKind :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatafeedsFetchNowResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfnrKind'
datafeedsFetchNowResponse
    :: DatafeedsFetchNowResponse
datafeedsFetchNowResponse = DatafeedsFetchNowResponse' {_dfnrKind = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#datafeedsFetchNowResponse\".
dfnrKind :: Lens' DatafeedsFetchNowResponse (Maybe Text)
dfnrKind = lens _dfnrKind (\ s a -> s{_dfnrKind = a})

instance FromJSON DatafeedsFetchNowResponse where
        parseJSON
          = withObject "DatafeedsFetchNowResponse"
              (\ o ->
                 DatafeedsFetchNowResponse' <$> (o .:? "kind"))

instance ToJSON DatafeedsFetchNowResponse where
        toJSON DatafeedsFetchNowResponse'{..}
          = object (catMaybes [("kind" .=) <$> _dfnrKind])

--
-- /See:/ 'ordersGetTestOrderTemplateResponse' smart constructor.
data OrdersGetTestOrderTemplateResponse =
  OrdersGetTestOrderTemplateResponse'
    { _ogtotrKind :: !(Maybe Text)
    , _ogtotrTemplate :: !(Maybe TestOrder)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersGetTestOrderTemplateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogtotrKind'
--
-- * 'ogtotrTemplate'
ordersGetTestOrderTemplateResponse
    :: OrdersGetTestOrderTemplateResponse
ordersGetTestOrderTemplateResponse =
  OrdersGetTestOrderTemplateResponse'
    {_ogtotrKind = Nothing, _ogtotrTemplate = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersGetTestOrderTemplateResponse\".
ogtotrKind :: Lens' OrdersGetTestOrderTemplateResponse (Maybe Text)
ogtotrKind
  = lens _ogtotrKind (\ s a -> s{_ogtotrKind = a})

-- | The requested test order template.
ogtotrTemplate :: Lens' OrdersGetTestOrderTemplateResponse (Maybe TestOrder)
ogtotrTemplate
  = lens _ogtotrTemplate
      (\ s a -> s{_ogtotrTemplate = a})

instance FromJSON OrdersGetTestOrderTemplateResponse
         where
        parseJSON
          = withObject "OrdersGetTestOrderTemplateResponse"
              (\ o ->
                 OrdersGetTestOrderTemplateResponse' <$>
                   (o .:? "kind") <*> (o .:? "template"))

instance ToJSON OrdersGetTestOrderTemplateResponse
         where
        toJSON OrdersGetTestOrderTemplateResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _ogtotrKind,
                  ("template" .=) <$> _ogtotrTemplate])

--
-- /See:/ 'returnaddressCustomBatchResponse' smart constructor.
data ReturnaddressCustomBatchResponse =
  ReturnaddressCustomBatchResponse'
    { _retEntries :: !(Maybe [ReturnaddressCustomBatchResponseEntry])
    , _retKind :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReturnaddressCustomBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'retEntries'
--
-- * 'retKind'
returnaddressCustomBatchResponse
    :: ReturnaddressCustomBatchResponse
returnaddressCustomBatchResponse =
  ReturnaddressCustomBatchResponse' {_retEntries = Nothing, _retKind = Nothing}


-- | The result of the execution of the batch requests.
retEntries :: Lens' ReturnaddressCustomBatchResponse [ReturnaddressCustomBatchResponseEntry]
retEntries
  = lens _retEntries (\ s a -> s{_retEntries = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#returnaddressCustomBatchResponse\".
retKind :: Lens' ReturnaddressCustomBatchResponse (Maybe Text)
retKind = lens _retKind (\ s a -> s{_retKind = a})

instance FromJSON ReturnaddressCustomBatchResponse
         where
        parseJSON
          = withObject "ReturnaddressCustomBatchResponse"
              (\ o ->
                 ReturnaddressCustomBatchResponse' <$>
                   (o .:? "entries" .!= mempty) <*> (o .:? "kind"))

instance ToJSON ReturnaddressCustomBatchResponse
         where
        toJSON ReturnaddressCustomBatchResponse'{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _retEntries,
                  ("kind" .=) <$> _retKind])

-- | A batch entry encoding a single non-batch accounts request.
--
-- /See:/ 'accountsCustomBatchRequestEntry' smart constructor.
data AccountsCustomBatchRequestEntry =
  AccountsCustomBatchRequestEntry'
    { _accMerchantId :: !(Maybe (Textual Word64))
    , _accForce :: !(Maybe Bool)
    , _accAccount :: !(Maybe Account)
    , _accAccountId :: !(Maybe (Textual Word64))
    , _accMethod :: !(Maybe Text)
    , _accView :: !(Maybe Text)
    , _accLabelIds :: !(Maybe [Textual Word64])
    , _accOverwrite :: !(Maybe Bool)
    , _accBatchId :: !(Maybe (Textual Word32))
    , _accLinkRequest :: !(Maybe AccountsCustomBatchRequestEntryLinkRequest)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsCustomBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accMerchantId'
--
-- * 'accForce'
--
-- * 'accAccount'
--
-- * 'accAccountId'
--
-- * 'accMethod'
--
-- * 'accView'
--
-- * 'accLabelIds'
--
-- * 'accOverwrite'
--
-- * 'accBatchId'
--
-- * 'accLinkRequest'
accountsCustomBatchRequestEntry
    :: AccountsCustomBatchRequestEntry
accountsCustomBatchRequestEntry =
  AccountsCustomBatchRequestEntry'
    { _accMerchantId = Nothing
    , _accForce = Nothing
    , _accAccount = Nothing
    , _accAccountId = Nothing
    , _accMethod = Nothing
    , _accView = Nothing
    , _accLabelIds = Nothing
    , _accOverwrite = Nothing
    , _accBatchId = Nothing
    , _accLinkRequest = Nothing
    }


-- | The ID of the managing account.
accMerchantId :: Lens' AccountsCustomBatchRequestEntry (Maybe Word64)
accMerchantId
  = lens _accMerchantId
      (\ s a -> s{_accMerchantId = a})
      . mapping _Coerce

-- | Whether the account should be deleted if the account has offers. Only
-- applicable if the method is \`delete\`.
accForce :: Lens' AccountsCustomBatchRequestEntry (Maybe Bool)
accForce = lens _accForce (\ s a -> s{_accForce = a})

-- | The account to create or update. Only defined if the method is
-- \`insert\` or \`update\`.
accAccount :: Lens' AccountsCustomBatchRequestEntry (Maybe Account)
accAccount
  = lens _accAccount (\ s a -> s{_accAccount = a})

-- | The ID of the targeted account. Only defined if the method is not
-- \`insert\`.
accAccountId :: Lens' AccountsCustomBatchRequestEntry (Maybe Word64)
accAccountId
  = lens _accAccountId (\ s a -> s{_accAccountId = a})
      . mapping _Coerce

-- | The method of the batch entry. Acceptable values are: -
-- \"\`claimWebsite\`\" - \"\`delete\`\" - \"\`get\`\" - \"\`insert\`\" -
-- \"\`link\`\" - \"\`update\`\"
accMethod :: Lens' AccountsCustomBatchRequestEntry (Maybe Text)
accMethod
  = lens _accMethod (\ s a -> s{_accMethod = a})

-- | Controls which fields are visible. Only applicable if the method is
-- \'get\'.
accView :: Lens' AccountsCustomBatchRequestEntry (Maybe Text)
accView = lens _accView (\ s a -> s{_accView = a})

-- | Label IDs for the \'updatelabels\' request.
accLabelIds :: Lens' AccountsCustomBatchRequestEntry [Word64]
accLabelIds
  = lens _accLabelIds (\ s a -> s{_accLabelIds = a}) .
      _Default
      . _Coerce

-- | Only applicable if the method is \`claimwebsite\`. Indicates whether or
-- not to take the claim from another account in case there is a conflict.
accOverwrite :: Lens' AccountsCustomBatchRequestEntry (Maybe Bool)
accOverwrite
  = lens _accOverwrite (\ s a -> s{_accOverwrite = a})

-- | An entry ID, unique within the batch request.
accBatchId :: Lens' AccountsCustomBatchRequestEntry (Maybe Word32)
accBatchId
  = lens _accBatchId (\ s a -> s{_accBatchId = a}) .
      mapping _Coerce

-- | Details about the \`link\` request.
accLinkRequest :: Lens' AccountsCustomBatchRequestEntry (Maybe AccountsCustomBatchRequestEntryLinkRequest)
accLinkRequest
  = lens _accLinkRequest
      (\ s a -> s{_accLinkRequest = a})

instance FromJSON AccountsCustomBatchRequestEntry
         where
        parseJSON
          = withObject "AccountsCustomBatchRequestEntry"
              (\ o ->
                 AccountsCustomBatchRequestEntry' <$>
                   (o .:? "merchantId") <*> (o .:? "force") <*>
                     (o .:? "account")
                     <*> (o .:? "accountId")
                     <*> (o .:? "method")
                     <*> (o .:? "view")
                     <*> (o .:? "labelIds" .!= mempty)
                     <*> (o .:? "overwrite")
                     <*> (o .:? "batchId")
                     <*> (o .:? "linkRequest"))

instance ToJSON AccountsCustomBatchRequestEntry where
        toJSON AccountsCustomBatchRequestEntry'{..}
          = object
              (catMaybes
                 [("merchantId" .=) <$> _accMerchantId,
                  ("force" .=) <$> _accForce,
                  ("account" .=) <$> _accAccount,
                  ("accountId" .=) <$> _accAccountId,
                  ("method" .=) <$> _accMethod,
                  ("view" .=) <$> _accView,
                  ("labelIds" .=) <$> _accLabelIds,
                  ("overwrite" .=) <$> _accOverwrite,
                  ("batchId" .=) <$> _accBatchId,
                  ("linkRequest" .=) <$> _accLinkRequest])

--
-- /See:/ 'linkedAccount' smart constructor.
data LinkedAccount =
  LinkedAccount'
    { _laLinkedAccountId :: !(Maybe Text)
    , _laServices :: !(Maybe [LinkService])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LinkedAccount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laLinkedAccountId'
--
-- * 'laServices'
linkedAccount
    :: LinkedAccount
linkedAccount =
  LinkedAccount' {_laLinkedAccountId = Nothing, _laServices = Nothing}


-- | The ID of the linked account.
laLinkedAccountId :: Lens' LinkedAccount (Maybe Text)
laLinkedAccountId
  = lens _laLinkedAccountId
      (\ s a -> s{_laLinkedAccountId = a})

-- | List of provided services.
laServices :: Lens' LinkedAccount [LinkService]
laServices
  = lens _laServices (\ s a -> s{_laServices = a}) .
      _Default
      . _Coerce

instance FromJSON LinkedAccount where
        parseJSON
          = withObject "LinkedAccount"
              (\ o ->
                 LinkedAccount' <$>
                   (o .:? "linkedAccountId") <*>
                     (o .:? "services" .!= mempty))

instance ToJSON LinkedAccount where
        toJSON LinkedAccount'{..}
          = object
              (catMaybes
                 [("linkedAccountId" .=) <$> _laLinkedAccountId,
                  ("services" .=) <$> _laServices])

--
-- /See:/ 'weight' smart constructor.
data Weight =
  Weight'
    { _wValue :: !(Maybe Text)
    , _wUnit :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Weight' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wValue'
--
-- * 'wUnit'
weight
    :: Weight
weight = Weight' {_wValue = Nothing, _wUnit = Nothing}


-- | Required. The weight represented as a number.
wValue :: Lens' Weight (Maybe Text)
wValue = lens _wValue (\ s a -> s{_wValue = a})

-- | Required. The weight unit. Acceptable values are: - \"\`kg\`\" -
-- \"\`lb\`\"
wUnit :: Lens' Weight (Maybe Text)
wUnit = lens _wUnit (\ s a -> s{_wUnit = a})

instance FromJSON Weight where
        parseJSON
          = withObject "Weight"
              (\ o ->
                 Weight' <$> (o .:? "value") <*> (o .:? "unit"))

instance ToJSON Weight where
        toJSON Weight'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _wValue, ("unit" .=) <$> _wUnit])

--
-- /See:/ 'orderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption' smart constructor.
data OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption =
  OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption'
    { _ocbrecriroReason :: !(Maybe Text)
    , _ocbrecriroDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocbrecriroReason'
--
-- * 'ocbrecriroDescription'
orderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
    :: OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
orderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption =
  OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption'
    {_ocbrecriroReason = Nothing, _ocbrecriroDescription = Nothing}


-- | [required] Reason for the refund. Acceptable values are: -
-- \"\`adjustment\`\" - \"\`autoPostInternal\`\" -
-- \"\`autoPostInvalidBillingAddress\`\" - \"\`autoPostNoInventory\`\" -
-- \"\`autoPostPriceError\`\" -
-- \"\`autoPostUndeliverableShippingAddress\`\" - \"\`couponAbuse\`\" -
-- \"\`courtesyAdjustment\`\" - \"\`customerCanceled\`\" -
-- \"\`customerDiscretionaryReturn\`\" -
-- \"\`customerInitiatedMerchantCancel\`\" -
-- \"\`customerSupportRequested\`\" - \"\`deliveredLateByCarrier\`\" -
-- \"\`deliveredTooLate\`\" - \"\`expiredItem\`\" -
-- \"\`failToPushOrderGoogleError\`\" -
-- \"\`failToPushOrderMerchantError\`\" -
-- \"\`failToPushOrderMerchantFulfillmentError\`\" -
-- \"\`failToPushOrderToMerchant\`\" -
-- \"\`failToPushOrderToMerchantOutOfStock\`\" - \"\`feeAdjustment\`\" -
-- \"\`invalidCoupon\`\" - \"\`lateShipmentCredit\`\" -
-- \"\`malformedShippingAddress\`\" - \"\`merchantDidNotShipOnTime\`\" -
-- \"\`noInventory\`\" - \"\`orderTimeout\`\" - \"\`other\`\" -
-- \"\`paymentAbuse\`\" - \"\`paymentDeclined\`\" - \"\`priceAdjustment\`\"
-- - \"\`priceError\`\" - \"\`productArrivedDamaged\`\" -
-- \"\`productNotAsDescribed\`\" - \"\`promoReallocation\`\" -
-- \"\`qualityNotAsExpected\`\" - \"\`returnRefundAbuse\`\" -
-- \"\`shippingCostAdjustment\`\" - \"\`shippingPriceError\`\" -
-- \"\`taxAdjustment\`\" - \"\`taxError\`\" -
-- \"\`undeliverableShippingAddress\`\" - \"\`unsupportedPoBoxAddress\`\" -
-- \"\`wrongProductShipped\`\"
ocbrecriroReason :: Lens' OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption (Maybe Text)
ocbrecriroReason
  = lens _ocbrecriroReason
      (\ s a -> s{_ocbrecriroReason = a})

-- | Optional description of the refund reason.
ocbrecriroDescription :: Lens' OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption (Maybe Text)
ocbrecriroDescription
  = lens _ocbrecriroDescription
      (\ s a -> s{_ocbrecriroDescription = a})

instance FromJSON
           OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
         where
        parseJSON
          = withObject
              "OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption"
              (\ o ->
                 OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption'
                   <$> (o .:? "reason") <*> (o .:? "description"))

instance ToJSON
           OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
         where
        toJSON
          OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption'{..}
          = object
              (catMaybes
                 [("reason" .=) <$> _ocbrecriroReason,
                  ("description" .=) <$> _ocbrecriroDescription])

--
-- /See:/ 'orderPickupDetails' smart constructor.
data OrderPickupDetails =
  OrderPickupDetails'
    { _opdPickupType :: !(Maybe Text)
    , _opdCollectors :: !(Maybe [OrderPickupDetailsCollector])
    , _opdAddress :: !(Maybe OrderAddress)
    , _opdLocationId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderPickupDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'opdPickupType'
--
-- * 'opdCollectors'
--
-- * 'opdAddress'
--
-- * 'opdLocationId'
orderPickupDetails
    :: OrderPickupDetails
orderPickupDetails =
  OrderPickupDetails'
    { _opdPickupType = Nothing
    , _opdCollectors = Nothing
    , _opdAddress = Nothing
    , _opdLocationId = Nothing
    }


-- | The pickup type of this order. Acceptable values are: -
-- \"\`merchantStore\`\" - \"\`merchantStoreCurbside\`\" -
-- \"\`merchantStoreLocker\`\" - \"\`thirdPartyPickupPoint\`\" -
-- \"\`thirdPartyLocker\`\"
opdPickupType :: Lens' OrderPickupDetails (Maybe Text)
opdPickupType
  = lens _opdPickupType
      (\ s a -> s{_opdPickupType = a})

-- | Collectors authorized to pick up shipment from the pickup location.
opdCollectors :: Lens' OrderPickupDetails [OrderPickupDetailsCollector]
opdCollectors
  = lens _opdCollectors
      (\ s a -> s{_opdCollectors = a})
      . _Default
      . _Coerce

-- | Address of the pickup location where the shipment should be sent. Note
-- that \`recipientName\` in the address is the name of the business at the
-- pickup location.
opdAddress :: Lens' OrderPickupDetails (Maybe OrderAddress)
opdAddress
  = lens _opdAddress (\ s a -> s{_opdAddress = a})

-- | ID of the pickup location.
opdLocationId :: Lens' OrderPickupDetails (Maybe Text)
opdLocationId
  = lens _opdLocationId
      (\ s a -> s{_opdLocationId = a})

instance FromJSON OrderPickupDetails where
        parseJSON
          = withObject "OrderPickupDetails"
              (\ o ->
                 OrderPickupDetails' <$>
                   (o .:? "pickupType") <*>
                     (o .:? "collectors" .!= mempty)
                     <*> (o .:? "address")
                     <*> (o .:? "locationId"))

instance ToJSON OrderPickupDetails where
        toJSON OrderPickupDetails'{..}
          = object
              (catMaybes
                 [("pickupType" .=) <$> _opdPickupType,
                  ("collectors" .=) <$> _opdCollectors,
                  ("address" .=) <$> _opdAddress,
                  ("locationId" .=) <$> _opdLocationId])

--
-- /See:/ 'orderreturnsReturnItem' smart constructor.
data OrderreturnsReturnItem =
  OrderreturnsReturnItem'
    { _oriReject :: !(Maybe OrderreturnsRejectOperation)
    , _oriReturnItemId :: !(Maybe Text)
    , _oriRefund :: !(Maybe OrderreturnsRefundOperation)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderreturnsReturnItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oriReject'
--
-- * 'oriReturnItemId'
--
-- * 'oriRefund'
orderreturnsReturnItem
    :: OrderreturnsReturnItem
orderreturnsReturnItem =
  OrderreturnsReturnItem'
    {_oriReject = Nothing, _oriReturnItemId = Nothing, _oriRefund = Nothing}


-- | Rejects the item.
oriReject :: Lens' OrderreturnsReturnItem (Maybe OrderreturnsRejectOperation)
oriReject
  = lens _oriReject (\ s a -> s{_oriReject = a})

-- | Unit level ID for the return item. Different units of the same product
-- will have different IDs.
oriReturnItemId :: Lens' OrderreturnsReturnItem (Maybe Text)
oriReturnItemId
  = lens _oriReturnItemId
      (\ s a -> s{_oriReturnItemId = a})

-- | Refunds the item.
oriRefund :: Lens' OrderreturnsReturnItem (Maybe OrderreturnsRefundOperation)
oriRefund
  = lens _oriRefund (\ s a -> s{_oriRefund = a})

instance FromJSON OrderreturnsReturnItem where
        parseJSON
          = withObject "OrderreturnsReturnItem"
              (\ o ->
                 OrderreturnsReturnItem' <$>
                   (o .:? "reject") <*> (o .:? "returnItemId") <*>
                     (o .:? "refund"))

instance ToJSON OrderreturnsReturnItem where
        toJSON OrderreturnsReturnItem'{..}
          = object
              (catMaybes
                 [("reject" .=) <$> _oriReject,
                  ("returnItemId" .=) <$> _oriReturnItemId,
                  ("refund" .=) <$> _oriRefund])

--
-- /See:/ 'liaSettingsListResponse' smart constructor.
data LiaSettingsListResponse =
  LiaSettingsListResponse'
    { _lslrNextPageToken :: !(Maybe Text)
    , _lslrKind :: !(Maybe Text)
    , _lslrResources :: !(Maybe [LiaSettings])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiaSettingsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lslrNextPageToken'
--
-- * 'lslrKind'
--
-- * 'lslrResources'
liaSettingsListResponse
    :: LiaSettingsListResponse
liaSettingsListResponse =
  LiaSettingsListResponse'
    { _lslrNextPageToken = Nothing
    , _lslrKind = Nothing
    , _lslrResources = Nothing
    }


-- | The token for the retrieval of the next page of LIA settings.
lslrNextPageToken :: Lens' LiaSettingsListResponse (Maybe Text)
lslrNextPageToken
  = lens _lslrNextPageToken
      (\ s a -> s{_lslrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#liasettingsListResponse\".
lslrKind :: Lens' LiaSettingsListResponse (Maybe Text)
lslrKind = lens _lslrKind (\ s a -> s{_lslrKind = a})

lslrResources :: Lens' LiaSettingsListResponse [LiaSettings]
lslrResources
  = lens _lslrResources
      (\ s a -> s{_lslrResources = a})
      . _Default
      . _Coerce

instance FromJSON LiaSettingsListResponse where
        parseJSON
          = withObject "LiaSettingsListResponse"
              (\ o ->
                 LiaSettingsListResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "kind") <*>
                     (o .:? "resources" .!= mempty))

instance ToJSON LiaSettingsListResponse where
        toJSON LiaSettingsListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lslrNextPageToken,
                  ("kind" .=) <$> _lslrKind,
                  ("resources" .=) <$> _lslrResources])

-- | An error returned by the API.
--
-- /See:/ 'error'' smart constructor.
data Error' =
  Error''
    { _eDomain :: !(Maybe Text)
    , _eReason :: !(Maybe Text)
    , _eMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Error' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eDomain'
--
-- * 'eReason'
--
-- * 'eMessage'
error'
    :: Error'
error' = Error'' {_eDomain = Nothing, _eReason = Nothing, _eMessage = Nothing}


-- | The domain of the error.
eDomain :: Lens' Error' (Maybe Text)
eDomain = lens _eDomain (\ s a -> s{_eDomain = a})

-- | The error code.
eReason :: Lens' Error' (Maybe Text)
eReason = lens _eReason (\ s a -> s{_eReason = a})

-- | A description of the error.
eMessage :: Lens' Error' (Maybe Text)
eMessage = lens _eMessage (\ s a -> s{_eMessage = a})

instance FromJSON Error' where
        parseJSON
          = withObject "Error"
              (\ o ->
                 Error'' <$>
                   (o .:? "domain") <*> (o .:? "reason") <*>
                     (o .:? "message"))

instance ToJSON Error' where
        toJSON Error''{..}
          = object
              (catMaybes
                 [("domain" .=) <$> _eDomain,
                  ("reason" .=) <$> _eReason,
                  ("message" .=) <$> _eMessage])

--
-- /See:/ 'productstatusesListResponse' smart constructor.
data ProductstatusesListResponse =
  ProductstatusesListResponse'
    { _plrNextPageToken :: !(Maybe Text)
    , _plrKind :: !(Maybe Text)
    , _plrResources :: !(Maybe [ProductStatus])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductstatusesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrNextPageToken'
--
-- * 'plrKind'
--
-- * 'plrResources'
productstatusesListResponse
    :: ProductstatusesListResponse
productstatusesListResponse =
  ProductstatusesListResponse'
    {_plrNextPageToken = Nothing, _plrKind = Nothing, _plrResources = Nothing}


-- | The token for the retrieval of the next page of products statuses.
plrNextPageToken :: Lens' ProductstatusesListResponse (Maybe Text)
plrNextPageToken
  = lens _plrNextPageToken
      (\ s a -> s{_plrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#productstatusesListResponse\".
plrKind :: Lens' ProductstatusesListResponse (Maybe Text)
plrKind = lens _plrKind (\ s a -> s{_plrKind = a})

plrResources :: Lens' ProductstatusesListResponse [ProductStatus]
plrResources
  = lens _plrResources (\ s a -> s{_plrResources = a})
      . _Default
      . _Coerce

instance FromJSON ProductstatusesListResponse where
        parseJSON
          = withObject "ProductstatusesListResponse"
              (\ o ->
                 ProductstatusesListResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "kind") <*>
                     (o .:? "resources" .!= mempty))

instance ToJSON ProductstatusesListResponse where
        toJSON ProductstatusesListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _plrNextPageToken,
                  ("kind" .=) <$> _plrKind,
                  ("resources" .=) <$> _plrResources])

-- | Request message for the OnboardProgram method.
--
-- /See:/ 'onboardBuyOnGoogleProgramRequest' smart constructor.
newtype OnboardBuyOnGoogleProgramRequest =
  OnboardBuyOnGoogleProgramRequest'
    { _obogprCustomerServiceEmail :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OnboardBuyOnGoogleProgramRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'obogprCustomerServiceEmail'
onboardBuyOnGoogleProgramRequest
    :: OnboardBuyOnGoogleProgramRequest
onboardBuyOnGoogleProgramRequest =
  OnboardBuyOnGoogleProgramRequest' {_obogprCustomerServiceEmail = Nothing}


-- | The customer service email.
obogprCustomerServiceEmail :: Lens' OnboardBuyOnGoogleProgramRequest (Maybe Text)
obogprCustomerServiceEmail
  = lens _obogprCustomerServiceEmail
      (\ s a -> s{_obogprCustomerServiceEmail = a})

instance FromJSON OnboardBuyOnGoogleProgramRequest
         where
        parseJSON
          = withObject "OnboardBuyOnGoogleProgramRequest"
              (\ o ->
                 OnboardBuyOnGoogleProgramRequest' <$>
                   (o .:? "customerServiceEmail"))

instance ToJSON OnboardBuyOnGoogleProgramRequest
         where
        toJSON OnboardBuyOnGoogleProgramRequest'{..}
          = object
              (catMaybes
                 [("customerServiceEmail" .=) <$>
                    _obogprCustomerServiceEmail])

--
-- /See:/ 'orderPromotionItem' smart constructor.
data OrderPromotionItem =
  OrderPromotionItem'
    { _opiQuantity :: !(Maybe (Textual Int32))
    , _opiLineItemId :: !(Maybe Text)
    , _opiOfferId :: !(Maybe Text)
    , _opiProductId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderPromotionItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'opiQuantity'
--
-- * 'opiLineItemId'
--
-- * 'opiOfferId'
--
-- * 'opiProductId'
orderPromotionItem
    :: OrderPromotionItem
orderPromotionItem =
  OrderPromotionItem'
    { _opiQuantity = Nothing
    , _opiLineItemId = Nothing
    , _opiOfferId = Nothing
    , _opiProductId = Nothing
    }


-- | The quantity of the associated product. Do not provide for
-- \`orders.createtestorder\`.
opiQuantity :: Lens' OrderPromotionItem (Maybe Int32)
opiQuantity
  = lens _opiQuantity (\ s a -> s{_opiQuantity = a}) .
      mapping _Coerce

-- | The line item ID of a product. Do not provide for
-- \`orders.createtestorder\`.
opiLineItemId :: Lens' OrderPromotionItem (Maybe Text)
opiLineItemId
  = lens _opiLineItemId
      (\ s a -> s{_opiLineItemId = a})

-- | Required. Offer ID of a product. Only for \`orders.createtestorder\`.
opiOfferId :: Lens' OrderPromotionItem (Maybe Text)
opiOfferId
  = lens _opiOfferId (\ s a -> s{_opiOfferId = a})

-- | \`orders.createtestorder\`.
opiProductId :: Lens' OrderPromotionItem (Maybe Text)
opiProductId
  = lens _opiProductId (\ s a -> s{_opiProductId = a})

instance FromJSON OrderPromotionItem where
        parseJSON
          = withObject "OrderPromotionItem"
              (\ o ->
                 OrderPromotionItem' <$>
                   (o .:? "quantity") <*> (o .:? "lineItemId") <*>
                     (o .:? "offerId")
                     <*> (o .:? "productId"))

instance ToJSON OrderPromotionItem where
        toJSON OrderPromotionItem'{..}
          = object
              (catMaybes
                 [("quantity" .=) <$> _opiQuantity,
                  ("lineItemId" .=) <$> _opiLineItemId,
                  ("offerId" .=) <$> _opiOfferId,
                  ("productId" .=) <$> _opiProductId])

--
-- /See:/ 'posCustomBatchResponse' smart constructor.
data PosCustomBatchResponse =
  PosCustomBatchResponse'
    { _posEntries :: !(Maybe [PosCustomBatchResponseEntry])
    , _posKind :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PosCustomBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'posEntries'
--
-- * 'posKind'
posCustomBatchResponse
    :: PosCustomBatchResponse
posCustomBatchResponse =
  PosCustomBatchResponse' {_posEntries = Nothing, _posKind = Nothing}


-- | The result of the execution of the batch requests.
posEntries :: Lens' PosCustomBatchResponse [PosCustomBatchResponseEntry]
posEntries
  = lens _posEntries (\ s a -> s{_posEntries = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#posCustomBatchResponse\".
posKind :: Lens' PosCustomBatchResponse (Maybe Text)
posKind = lens _posKind (\ s a -> s{_posKind = a})

instance FromJSON PosCustomBatchResponse where
        parseJSON
          = withObject "PosCustomBatchResponse"
              (\ o ->
                 PosCustomBatchResponse' <$>
                   (o .:? "entries" .!= mempty) <*> (o .:? "kind"))

instance ToJSON PosCustomBatchResponse where
        toJSON PosCustomBatchResponse'{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _posEntries,
                  ("kind" .=) <$> _posKind])

--
-- /See:/ 'ordersCreateTestOrderRequest' smart constructor.
data OrdersCreateTestOrderRequest =
  OrdersCreateTestOrderRequest'
    { _octorTemplateName :: !(Maybe Text)
    , _octorCountry :: !(Maybe Text)
    , _octorTestOrder :: !(Maybe TestOrder)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersCreateTestOrderRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'octorTemplateName'
--
-- * 'octorCountry'
--
-- * 'octorTestOrder'
ordersCreateTestOrderRequest
    :: OrdersCreateTestOrderRequest
ordersCreateTestOrderRequest =
  OrdersCreateTestOrderRequest'
    { _octorTemplateName = Nothing
    , _octorCountry = Nothing
    , _octorTestOrder = Nothing
    }


-- | The test order template to use. Specify as an alternative to
-- \`testOrder\` as a shortcut for retrieving a template and then creating
-- an order using that template. Acceptable values are: - \"\`template1\`\"
-- - \"\`template1a\`\" - \"\`template1b\`\" - \"\`template2\`\" -
-- \"\`template3\`\"
octorTemplateName :: Lens' OrdersCreateTestOrderRequest (Maybe Text)
octorTemplateName
  = lens _octorTemplateName
      (\ s a -> s{_octorTemplateName = a})

-- | The CLDR territory code of the country of the test order to create.
-- Affects the currency and addresses of orders created via
-- \`template_name\`, or the addresses of orders created via
-- \`test_order\`. Acceptable values are: - \"\`US\`\" - \"\`FR\`\"
-- Defaults to \`US\`.
octorCountry :: Lens' OrdersCreateTestOrderRequest (Maybe Text)
octorCountry
  = lens _octorCountry (\ s a -> s{_octorCountry = a})

-- | The test order to create.
octorTestOrder :: Lens' OrdersCreateTestOrderRequest (Maybe TestOrder)
octorTestOrder
  = lens _octorTestOrder
      (\ s a -> s{_octorTestOrder = a})

instance FromJSON OrdersCreateTestOrderRequest where
        parseJSON
          = withObject "OrdersCreateTestOrderRequest"
              (\ o ->
                 OrdersCreateTestOrderRequest' <$>
                   (o .:? "templateName") <*> (o .:? "country") <*>
                     (o .:? "testOrder"))

instance ToJSON OrdersCreateTestOrderRequest where
        toJSON OrdersCreateTestOrderRequest'{..}
          = object
              (catMaybes
                 [("templateName" .=) <$> _octorTemplateName,
                  ("country" .=) <$> _octorCountry,
                  ("testOrder" .=) <$> _octorTestOrder])

--
-- /See:/ 'accountUser' smart constructor.
data AccountUser =
  AccountUser'
    { _auAdmin :: !(Maybe Bool)
    , _auPaymentsManager :: !(Maybe Bool)
    , _auOrderManager :: !(Maybe Bool)
    , _auEmailAddress :: !(Maybe Text)
    , _auPaymentsAnalyst :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountUser' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auAdmin'
--
-- * 'auPaymentsManager'
--
-- * 'auOrderManager'
--
-- * 'auEmailAddress'
--
-- * 'auPaymentsAnalyst'
accountUser
    :: AccountUser
accountUser =
  AccountUser'
    { _auAdmin = Nothing
    , _auPaymentsManager = Nothing
    , _auOrderManager = Nothing
    , _auEmailAddress = Nothing
    , _auPaymentsAnalyst = Nothing
    }


-- | Whether user is an admin.
auAdmin :: Lens' AccountUser (Maybe Bool)
auAdmin = lens _auAdmin (\ s a -> s{_auAdmin = a})

-- | Whether user can manage payment settings.
auPaymentsManager :: Lens' AccountUser (Maybe Bool)
auPaymentsManager
  = lens _auPaymentsManager
      (\ s a -> s{_auPaymentsManager = a})

-- | Whether user is an order manager.
auOrderManager :: Lens' AccountUser (Maybe Bool)
auOrderManager
  = lens _auOrderManager
      (\ s a -> s{_auOrderManager = a})

-- | User\'s email address.
auEmailAddress :: Lens' AccountUser (Maybe Text)
auEmailAddress
  = lens _auEmailAddress
      (\ s a -> s{_auEmailAddress = a})

-- | Whether user can access payment statements.
auPaymentsAnalyst :: Lens' AccountUser (Maybe Bool)
auPaymentsAnalyst
  = lens _auPaymentsAnalyst
      (\ s a -> s{_auPaymentsAnalyst = a})

instance FromJSON AccountUser where
        parseJSON
          = withObject "AccountUser"
              (\ o ->
                 AccountUser' <$>
                   (o .:? "admin") <*> (o .:? "paymentsManager") <*>
                     (o .:? "orderManager")
                     <*> (o .:? "emailAddress")
                     <*> (o .:? "paymentsAnalyst"))

instance ToJSON AccountUser where
        toJSON AccountUser'{..}
          = object
              (catMaybes
                 [("admin" .=) <$> _auAdmin,
                  ("paymentsManager" .=) <$> _auPaymentsManager,
                  ("orderManager" .=) <$> _auOrderManager,
                  ("emailAddress" .=) <$> _auEmailAddress,
                  ("paymentsAnalyst" .=) <$> _auPaymentsAnalyst])

--
-- /See:/ 'accountCustomerService' smart constructor.
data AccountCustomerService =
  AccountCustomerService'
    { _acsEmail :: !(Maybe Text)
    , _acsURL :: !(Maybe Text)
    , _acsPhoneNumber :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountCustomerService' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acsEmail'
--
-- * 'acsURL'
--
-- * 'acsPhoneNumber'
accountCustomerService
    :: AccountCustomerService
accountCustomerService =
  AccountCustomerService'
    {_acsEmail = Nothing, _acsURL = Nothing, _acsPhoneNumber = Nothing}


-- | Customer service email.
acsEmail :: Lens' AccountCustomerService (Maybe Text)
acsEmail = lens _acsEmail (\ s a -> s{_acsEmail = a})

-- | Customer service URL.
acsURL :: Lens' AccountCustomerService (Maybe Text)
acsURL = lens _acsURL (\ s a -> s{_acsURL = a})

-- | Customer service phone number.
acsPhoneNumber :: Lens' AccountCustomerService (Maybe Text)
acsPhoneNumber
  = lens _acsPhoneNumber
      (\ s a -> s{_acsPhoneNumber = a})

instance FromJSON AccountCustomerService where
        parseJSON
          = withObject "AccountCustomerService"
              (\ o ->
                 AccountCustomerService' <$>
                   (o .:? "email") <*> (o .:? "url") <*>
                     (o .:? "phoneNumber"))

instance ToJSON AccountCustomerService where
        toJSON AccountCustomerService'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _acsEmail, ("url" .=) <$> _acsURL,
                  ("phoneNumber" .=) <$> _acsPhoneNumber])

--
-- /See:/ 'settlementtransactionsListResponse' smart constructor.
data SettlementtransactionsListResponse =
  SettlementtransactionsListResponse'
    { _slrNextPageToken :: !(Maybe Text)
    , _slrKind :: !(Maybe Text)
    , _slrResources :: !(Maybe [SettlementTransaction])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SettlementtransactionsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slrNextPageToken'
--
-- * 'slrKind'
--
-- * 'slrResources'
settlementtransactionsListResponse
    :: SettlementtransactionsListResponse
settlementtransactionsListResponse =
  SettlementtransactionsListResponse'
    {_slrNextPageToken = Nothing, _slrKind = Nothing, _slrResources = Nothing}


-- | The token for the retrieval of the next page of returns.
slrNextPageToken :: Lens' SettlementtransactionsListResponse (Maybe Text)
slrNextPageToken
  = lens _slrNextPageToken
      (\ s a -> s{_slrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#settlementtransactionsListResponse\".
slrKind :: Lens' SettlementtransactionsListResponse (Maybe Text)
slrKind = lens _slrKind (\ s a -> s{_slrKind = a})

slrResources :: Lens' SettlementtransactionsListResponse [SettlementTransaction]
slrResources
  = lens _slrResources (\ s a -> s{_slrResources = a})
      . _Default
      . _Coerce

instance FromJSON SettlementtransactionsListResponse
         where
        parseJSON
          = withObject "SettlementtransactionsListResponse"
              (\ o ->
                 SettlementtransactionsListResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "kind") <*>
                     (o .:? "resources" .!= mempty))

instance ToJSON SettlementtransactionsListResponse
         where
        toJSON SettlementtransactionsListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _slrNextPageToken,
                  ("kind" .=) <$> _slrKind,
                  ("resources" .=) <$> _slrResources])

--
-- /See:/ 'gmbAccountsGmbAccount' smart constructor.
data GmbAccountsGmbAccount =
  GmbAccountsGmbAccount'
    { _gagaEmail :: !(Maybe Text)
    , _gagaListingCount :: !(Maybe (Textual Word64))
    , _gagaName :: !(Maybe Text)
    , _gagaType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GmbAccountsGmbAccount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gagaEmail'
--
-- * 'gagaListingCount'
--
-- * 'gagaName'
--
-- * 'gagaType'
gmbAccountsGmbAccount
    :: GmbAccountsGmbAccount
gmbAccountsGmbAccount =
  GmbAccountsGmbAccount'
    { _gagaEmail = Nothing
    , _gagaListingCount = Nothing
    , _gagaName = Nothing
    , _gagaType = Nothing
    }


-- | The email which identifies the GMB account.
gagaEmail :: Lens' GmbAccountsGmbAccount (Maybe Text)
gagaEmail
  = lens _gagaEmail (\ s a -> s{_gagaEmail = a})

-- | Number of listings under this account.
gagaListingCount :: Lens' GmbAccountsGmbAccount (Maybe Word64)
gagaListingCount
  = lens _gagaListingCount
      (\ s a -> s{_gagaListingCount = a})
      . mapping _Coerce

-- | The name of the GMB account.
gagaName :: Lens' GmbAccountsGmbAccount (Maybe Text)
gagaName = lens _gagaName (\ s a -> s{_gagaName = a})

-- | The type of the GMB account (User or Business).
gagaType :: Lens' GmbAccountsGmbAccount (Maybe Text)
gagaType = lens _gagaType (\ s a -> s{_gagaType = a})

instance FromJSON GmbAccountsGmbAccount where
        parseJSON
          = withObject "GmbAccountsGmbAccount"
              (\ o ->
                 GmbAccountsGmbAccount' <$>
                   (o .:? "email") <*> (o .:? "listingCount") <*>
                     (o .:? "name")
                     <*> (o .:? "type"))

instance ToJSON GmbAccountsGmbAccount where
        toJSON GmbAccountsGmbAccount'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _gagaEmail,
                  ("listingCount" .=) <$> _gagaListingCount,
                  ("name" .=) <$> _gagaName,
                  ("type" .=) <$> _gagaType])

--
-- /See:/ 'ordersInStoreRefundLineItemResponse' smart constructor.
data OrdersInStoreRefundLineItemResponse =
  OrdersInStoreRefundLineItemResponse'
    { _oisrlirKind :: !(Maybe Text)
    , _oisrlirExecutionStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersInStoreRefundLineItemResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oisrlirKind'
--
-- * 'oisrlirExecutionStatus'
ordersInStoreRefundLineItemResponse
    :: OrdersInStoreRefundLineItemResponse
ordersInStoreRefundLineItemResponse =
  OrdersInStoreRefundLineItemResponse'
    {_oisrlirKind = Nothing, _oisrlirExecutionStatus = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersInStoreRefundLineItemResponse\".
oisrlirKind :: Lens' OrdersInStoreRefundLineItemResponse (Maybe Text)
oisrlirKind
  = lens _oisrlirKind (\ s a -> s{_oisrlirKind = a})

-- | The status of the execution. Acceptable values are: - \"\`duplicate\`\"
-- - \"\`executed\`\"
oisrlirExecutionStatus :: Lens' OrdersInStoreRefundLineItemResponse (Maybe Text)
oisrlirExecutionStatus
  = lens _oisrlirExecutionStatus
      (\ s a -> s{_oisrlirExecutionStatus = a})

instance FromJSON OrdersInStoreRefundLineItemResponse
         where
        parseJSON
          = withObject "OrdersInStoreRefundLineItemResponse"
              (\ o ->
                 OrdersInStoreRefundLineItemResponse' <$>
                   (o .:? "kind") <*> (o .:? "executionStatus"))

instance ToJSON OrdersInStoreRefundLineItemResponse
         where
        toJSON OrdersInStoreRefundLineItemResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _oisrlirKind,
                  ("executionStatus" .=) <$> _oisrlirExecutionStatus])

--
-- /See:/ 'productSubscriptionCost' smart constructor.
data ProductSubscriptionCost =
  ProductSubscriptionCost'
    { _pscAmount :: !(Maybe Price)
    , _pscPeriod :: !(Maybe Text)
    , _pscPeriodLength :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductSubscriptionCost' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pscAmount'
--
-- * 'pscPeriod'
--
-- * 'pscPeriodLength'
productSubscriptionCost
    :: ProductSubscriptionCost
productSubscriptionCost =
  ProductSubscriptionCost'
    {_pscAmount = Nothing, _pscPeriod = Nothing, _pscPeriodLength = Nothing}


-- | The amount the buyer has to pay per subscription period.
pscAmount :: Lens' ProductSubscriptionCost (Maybe Price)
pscAmount
  = lens _pscAmount (\ s a -> s{_pscAmount = a})

-- | The type of subscription period.
pscPeriod :: Lens' ProductSubscriptionCost (Maybe Text)
pscPeriod
  = lens _pscPeriod (\ s a -> s{_pscPeriod = a})

-- | The number of subscription periods the buyer has to pay.
pscPeriodLength :: Lens' ProductSubscriptionCost (Maybe Int64)
pscPeriodLength
  = lens _pscPeriodLength
      (\ s a -> s{_pscPeriodLength = a})
      . mapping _Coerce

instance FromJSON ProductSubscriptionCost where
        parseJSON
          = withObject "ProductSubscriptionCost"
              (\ o ->
                 ProductSubscriptionCost' <$>
                   (o .:? "amount") <*> (o .:? "period") <*>
                     (o .:? "periodLength"))

instance ToJSON ProductSubscriptionCost where
        toJSON ProductSubscriptionCost'{..}
          = object
              (catMaybes
                 [("amount" .=) <$> _pscAmount,
                  ("period" .=) <$> _pscPeriod,
                  ("periodLength" .=) <$> _pscPeriodLength])

-- | A batch entry encoding a single non-batch datafeeds request.
--
-- /See:/ 'datafeedsCustomBatchRequestEntry' smart constructor.
data DatafeedsCustomBatchRequestEntry =
  DatafeedsCustomBatchRequestEntry'
    { _dcbreMerchantId :: !(Maybe (Textual Word64))
    , _dcbreDatafeed :: !(Maybe Datafeed)
    , _dcbreMethod :: !(Maybe Text)
    , _dcbreDatafeedId :: !(Maybe (Textual Word64))
    , _dcbreBatchId :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatafeedsCustomBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcbreMerchantId'
--
-- * 'dcbreDatafeed'
--
-- * 'dcbreMethod'
--
-- * 'dcbreDatafeedId'
--
-- * 'dcbreBatchId'
datafeedsCustomBatchRequestEntry
    :: DatafeedsCustomBatchRequestEntry
datafeedsCustomBatchRequestEntry =
  DatafeedsCustomBatchRequestEntry'
    { _dcbreMerchantId = Nothing
    , _dcbreDatafeed = Nothing
    , _dcbreMethod = Nothing
    , _dcbreDatafeedId = Nothing
    , _dcbreBatchId = Nothing
    }


-- | The ID of the managing account.
dcbreMerchantId :: Lens' DatafeedsCustomBatchRequestEntry (Maybe Word64)
dcbreMerchantId
  = lens _dcbreMerchantId
      (\ s a -> s{_dcbreMerchantId = a})
      . mapping _Coerce

-- | The data feed to insert.
dcbreDatafeed :: Lens' DatafeedsCustomBatchRequestEntry (Maybe Datafeed)
dcbreDatafeed
  = lens _dcbreDatafeed
      (\ s a -> s{_dcbreDatafeed = a})

-- | The method of the batch entry. Acceptable values are: - \"\`delete\`\" -
-- \"\`fetchNow\`\" - \"\`get\`\" - \"\`insert\`\" - \"\`update\`\"
dcbreMethod :: Lens' DatafeedsCustomBatchRequestEntry (Maybe Text)
dcbreMethod
  = lens _dcbreMethod (\ s a -> s{_dcbreMethod = a})

-- | The ID of the data feed to get, delete or fetch.
dcbreDatafeedId :: Lens' DatafeedsCustomBatchRequestEntry (Maybe Word64)
dcbreDatafeedId
  = lens _dcbreDatafeedId
      (\ s a -> s{_dcbreDatafeedId = a})
      . mapping _Coerce

-- | An entry ID, unique within the batch request.
dcbreBatchId :: Lens' DatafeedsCustomBatchRequestEntry (Maybe Word32)
dcbreBatchId
  = lens _dcbreBatchId (\ s a -> s{_dcbreBatchId = a})
      . mapping _Coerce

instance FromJSON DatafeedsCustomBatchRequestEntry
         where
        parseJSON
          = withObject "DatafeedsCustomBatchRequestEntry"
              (\ o ->
                 DatafeedsCustomBatchRequestEntry' <$>
                   (o .:? "merchantId") <*> (o .:? "datafeed") <*>
                     (o .:? "method")
                     <*> (o .:? "datafeedId")
                     <*> (o .:? "batchId"))

instance ToJSON DatafeedsCustomBatchRequestEntry
         where
        toJSON DatafeedsCustomBatchRequestEntry'{..}
          = object
              (catMaybes
                 [("merchantId" .=) <$> _dcbreMerchantId,
                  ("datafeed" .=) <$> _dcbreDatafeed,
                  ("method" .=) <$> _dcbreMethod,
                  ("datafeedId" .=) <$> _dcbreDatafeedId,
                  ("batchId" .=) <$> _dcbreBatchId])

--
-- /See:/ 'orderCustomerMarketingRightsInfo' smart constructor.
data OrderCustomerMarketingRightsInfo =
  OrderCustomerMarketingRightsInfo'
    { _ocmriExplicitMarketingPreference :: !(Maybe Text)
    , _ocmriMarketingEmailAddress :: !(Maybe Text)
    , _ocmriLastUpdatedTimestamp :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderCustomerMarketingRightsInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocmriExplicitMarketingPreference'
--
-- * 'ocmriMarketingEmailAddress'
--
-- * 'ocmriLastUpdatedTimestamp'
orderCustomerMarketingRightsInfo
    :: OrderCustomerMarketingRightsInfo
orderCustomerMarketingRightsInfo =
  OrderCustomerMarketingRightsInfo'
    { _ocmriExplicitMarketingPreference = Nothing
    , _ocmriMarketingEmailAddress = Nothing
    , _ocmriLastUpdatedTimestamp = Nothing
    }


-- | Last known customer selection regarding marketing preferences. In
-- certain cases this selection might not be known, so this field would be
-- empty. If a customer selected \`granted\` in their most recent order,
-- they can be subscribed to marketing emails. Customers who have chosen
-- \`denied\` must not be subscribed, or must be unsubscribed if already
-- opted-in. Acceptable values are: - \"\`denied\`\" - \"\`granted\`\"
ocmriExplicitMarketingPreference :: Lens' OrderCustomerMarketingRightsInfo (Maybe Text)
ocmriExplicitMarketingPreference
  = lens _ocmriExplicitMarketingPreference
      (\ s a -> s{_ocmriExplicitMarketingPreference = a})

-- | Email address that can be used for marketing purposes. The field may be
-- empty even if \`explicitMarketingPreference\` is \'granted\'. This
-- happens when retrieving an old order from the customer who deleted their
-- account.
ocmriMarketingEmailAddress :: Lens' OrderCustomerMarketingRightsInfo (Maybe Text)
ocmriMarketingEmailAddress
  = lens _ocmriMarketingEmailAddress
      (\ s a -> s{_ocmriMarketingEmailAddress = a})

-- | Timestamp when last time marketing preference was updated. Could be
-- empty, if user wasn\'t offered a selection yet.
ocmriLastUpdatedTimestamp :: Lens' OrderCustomerMarketingRightsInfo (Maybe Text)
ocmriLastUpdatedTimestamp
  = lens _ocmriLastUpdatedTimestamp
      (\ s a -> s{_ocmriLastUpdatedTimestamp = a})

instance FromJSON OrderCustomerMarketingRightsInfo
         where
        parseJSON
          = withObject "OrderCustomerMarketingRightsInfo"
              (\ o ->
                 OrderCustomerMarketingRightsInfo' <$>
                   (o .:? "explicitMarketingPreference") <*>
                     (o .:? "marketingEmailAddress")
                     <*> (o .:? "lastUpdatedTimestamp"))

instance ToJSON OrderCustomerMarketingRightsInfo
         where
        toJSON OrderCustomerMarketingRightsInfo'{..}
          = object
              (catMaybes
                 [("explicitMarketingPreference" .=) <$>
                    _ocmriExplicitMarketingPreference,
                  ("marketingEmailAddress" .=) <$>
                    _ocmriMarketingEmailAddress,
                  ("lastUpdatedTimestamp" .=) <$>
                    _ocmriLastUpdatedTimestamp])

--
-- /See:/ 'merchantOrderReturnItem' smart constructor.
data MerchantOrderReturnItem =
  MerchantOrderReturnItem'
    { _moriReturnShipmentIds :: !(Maybe [Text])
    , _moriMerchantReturnReason :: !(Maybe RefundReason)
    , _moriState :: !(Maybe Text)
    , _moriReturnItemId :: !(Maybe Text)
    , _moriShipmentGroupId :: !(Maybe Text)
    , _moriCustomerReturnReason :: !(Maybe CustomerReturnReason)
    , _moriItemId :: !(Maybe Text)
    , _moriRefundableAmount :: !(Maybe MonetaryAmount)
    , _moriShipmentUnitId :: !(Maybe Text)
    , _moriProduct :: !(Maybe OrderLineItemProduct)
    , _moriMerchantRejectionReason :: !(Maybe MerchantRejectionReason)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MerchantOrderReturnItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'moriReturnShipmentIds'
--
-- * 'moriMerchantReturnReason'
--
-- * 'moriState'
--
-- * 'moriReturnItemId'
--
-- * 'moriShipmentGroupId'
--
-- * 'moriCustomerReturnReason'
--
-- * 'moriItemId'
--
-- * 'moriRefundableAmount'
--
-- * 'moriShipmentUnitId'
--
-- * 'moriProduct'
--
-- * 'moriMerchantRejectionReason'
merchantOrderReturnItem
    :: MerchantOrderReturnItem
merchantOrderReturnItem =
  MerchantOrderReturnItem'
    { _moriReturnShipmentIds = Nothing
    , _moriMerchantReturnReason = Nothing
    , _moriState = Nothing
    , _moriReturnItemId = Nothing
    , _moriShipmentGroupId = Nothing
    , _moriCustomerReturnReason = Nothing
    , _moriItemId = Nothing
    , _moriRefundableAmount = Nothing
    , _moriShipmentUnitId = Nothing
    , _moriProduct = Nothing
    , _moriMerchantRejectionReason = Nothing
    }


-- | IDs of the return shipments that this return item belongs to.
moriReturnShipmentIds :: Lens' MerchantOrderReturnItem [Text]
moriReturnShipmentIds
  = lens _moriReturnShipmentIds
      (\ s a -> s{_moriReturnShipmentIds = a})
      . _Default
      . _Coerce

-- | The reason that merchant chooses to accept a return item.
moriMerchantReturnReason :: Lens' MerchantOrderReturnItem (Maybe RefundReason)
moriMerchantReturnReason
  = lens _moriMerchantReturnReason
      (\ s a -> s{_moriMerchantReturnReason = a})

-- | State of the item. Acceptable values are: - \"\`canceled\`\" -
-- \"\`new\`\" - \"\`received\`\" - \"\`refunded\`\" - \"\`rejected\`\"
moriState :: Lens' MerchantOrderReturnItem (Maybe Text)
moriState
  = lens _moriState (\ s a -> s{_moriState = a})

-- | Unit level ID for the return item. Different units of the same product
-- will have different IDs.
moriReturnItemId :: Lens' MerchantOrderReturnItem (Maybe Text)
moriReturnItemId
  = lens _moriReturnItemId
      (\ s a -> s{_moriReturnItemId = a})

-- | ID of the original shipment group. Provided for shipments with invoice
-- support.
moriShipmentGroupId :: Lens' MerchantOrderReturnItem (Maybe Text)
moriShipmentGroupId
  = lens _moriShipmentGroupId
      (\ s a -> s{_moriShipmentGroupId = a})

-- | The reason that the customer chooses to return an item.
moriCustomerReturnReason :: Lens' MerchantOrderReturnItem (Maybe CustomerReturnReason)
moriCustomerReturnReason
  = lens _moriCustomerReturnReason
      (\ s a -> s{_moriCustomerReturnReason = a})

-- | Product level item ID. If the returned items are of the same product,
-- they will have the same ID.
moriItemId :: Lens' MerchantOrderReturnItem (Maybe Text)
moriItemId
  = lens _moriItemId (\ s a -> s{_moriItemId = a})

-- | Maximum amount that can be refunded for this return item.
moriRefundableAmount :: Lens' MerchantOrderReturnItem (Maybe MonetaryAmount)
moriRefundableAmount
  = lens _moriRefundableAmount
      (\ s a -> s{_moriRefundableAmount = a})

-- | ID of the shipment unit assigned by the merchant. Provided for shipments
-- with invoice support.
moriShipmentUnitId :: Lens' MerchantOrderReturnItem (Maybe Text)
moriShipmentUnitId
  = lens _moriShipmentUnitId
      (\ s a -> s{_moriShipmentUnitId = a})

-- | Product data from the time of the order placement.
moriProduct :: Lens' MerchantOrderReturnItem (Maybe OrderLineItemProduct)
moriProduct
  = lens _moriProduct (\ s a -> s{_moriProduct = a})

-- | The reason that the merchant chose to reject an item return.
moriMerchantRejectionReason :: Lens' MerchantOrderReturnItem (Maybe MerchantRejectionReason)
moriMerchantRejectionReason
  = lens _moriMerchantRejectionReason
      (\ s a -> s{_moriMerchantRejectionReason = a})

instance FromJSON MerchantOrderReturnItem where
        parseJSON
          = withObject "MerchantOrderReturnItem"
              (\ o ->
                 MerchantOrderReturnItem' <$>
                   (o .:? "returnShipmentIds" .!= mempty) <*>
                     (o .:? "merchantReturnReason")
                     <*> (o .:? "state")
                     <*> (o .:? "returnItemId")
                     <*> (o .:? "shipmentGroupId")
                     <*> (o .:? "customerReturnReason")
                     <*> (o .:? "itemId")
                     <*> (o .:? "refundableAmount")
                     <*> (o .:? "shipmentUnitId")
                     <*> (o .:? "product")
                     <*> (o .:? "merchantRejectionReason"))

instance ToJSON MerchantOrderReturnItem where
        toJSON MerchantOrderReturnItem'{..}
          = object
              (catMaybes
                 [("returnShipmentIds" .=) <$> _moriReturnShipmentIds,
                  ("merchantReturnReason" .=) <$>
                    _moriMerchantReturnReason,
                  ("state" .=) <$> _moriState,
                  ("returnItemId" .=) <$> _moriReturnItemId,
                  ("shipmentGroupId" .=) <$> _moriShipmentGroupId,
                  ("customerReturnReason" .=) <$>
                    _moriCustomerReturnReason,
                  ("itemId" .=) <$> _moriItemId,
                  ("refundableAmount" .=) <$> _moriRefundableAmount,
                  ("shipmentUnitId" .=) <$> _moriShipmentUnitId,
                  ("product" .=) <$> _moriProduct,
                  ("merchantRejectionReason" .=) <$>
                    _moriMerchantRejectionReason])

-- | Settings for Pub\/Sub notifications, all methods require that the caller
-- is a direct user of the merchant center account.
--
-- /See:/ 'pubsubNotificationSettings' smart constructor.
data PubsubNotificationSettings =
  PubsubNotificationSettings'
    { _pnsRegisteredEvents :: !(Maybe [Text])
    , _pnsKind :: !(Maybe Text)
    , _pnsCloudTopicName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PubsubNotificationSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pnsRegisteredEvents'
--
-- * 'pnsKind'
--
-- * 'pnsCloudTopicName'
pubsubNotificationSettings
    :: PubsubNotificationSettings
pubsubNotificationSettings =
  PubsubNotificationSettings'
    { _pnsRegisteredEvents = Nothing
    , _pnsKind = Nothing
    , _pnsCloudTopicName = Nothing
    }


-- | List of event types. Acceptable values are: -
-- \"\`orderPendingShipment\`\"
pnsRegisteredEvents :: Lens' PubsubNotificationSettings [Text]
pnsRegisteredEvents
  = lens _pnsRegisteredEvents
      (\ s a -> s{_pnsRegisteredEvents = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"\`content#pubsubNotificationSettings\`\"
pnsKind :: Lens' PubsubNotificationSettings (Maybe Text)
pnsKind = lens _pnsKind (\ s a -> s{_pnsKind = a})

-- | Cloud pub\/sub topic to which notifications are sent (read-only).
pnsCloudTopicName :: Lens' PubsubNotificationSettings (Maybe Text)
pnsCloudTopicName
  = lens _pnsCloudTopicName
      (\ s a -> s{_pnsCloudTopicName = a})

instance FromJSON PubsubNotificationSettings where
        parseJSON
          = withObject "PubsubNotificationSettings"
              (\ o ->
                 PubsubNotificationSettings' <$>
                   (o .:? "registeredEvents" .!= mempty) <*>
                     (o .:? "kind")
                     <*> (o .:? "cloudTopicName"))

instance ToJSON PubsubNotificationSettings where
        toJSON PubsubNotificationSettings'{..}
          = object
              (catMaybes
                 [("registeredEvents" .=) <$> _pnsRegisteredEvents,
                  ("kind" .=) <$> _pnsKind,
                  ("cloudTopicName" .=) <$> _pnsCloudTopicName])

--
-- /See:/ 'accountStatusAccountLevelIssue' smart constructor.
data AccountStatusAccountLevelIssue =
  AccountStatusAccountLevelIssue'
    { _asaliDestination :: !(Maybe Text)
    , _asaliCountry :: !(Maybe Text)
    , _asaliSeverity :: !(Maybe Text)
    , _asaliDocumentation :: !(Maybe Text)
    , _asaliId :: !(Maybe Text)
    , _asaliTitle :: !(Maybe Text)
    , _asaliDetail :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountStatusAccountLevelIssue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asaliDestination'
--
-- * 'asaliCountry'
--
-- * 'asaliSeverity'
--
-- * 'asaliDocumentation'
--
-- * 'asaliId'
--
-- * 'asaliTitle'
--
-- * 'asaliDetail'
accountStatusAccountLevelIssue
    :: AccountStatusAccountLevelIssue
accountStatusAccountLevelIssue =
  AccountStatusAccountLevelIssue'
    { _asaliDestination = Nothing
    , _asaliCountry = Nothing
    , _asaliSeverity = Nothing
    , _asaliDocumentation = Nothing
    , _asaliId = Nothing
    , _asaliTitle = Nothing
    , _asaliDetail = Nothing
    }


-- | The destination the issue applies to. If this field is empty then the
-- issue applies to all available destinations.
asaliDestination :: Lens' AccountStatusAccountLevelIssue (Maybe Text)
asaliDestination
  = lens _asaliDestination
      (\ s a -> s{_asaliDestination = a})

-- | Country for which this issue is reported.
asaliCountry :: Lens' AccountStatusAccountLevelIssue (Maybe Text)
asaliCountry
  = lens _asaliCountry (\ s a -> s{_asaliCountry = a})

-- | Severity of the issue. Acceptable values are: - \"\`critical\`\" -
-- \"\`error\`\" - \"\`suggestion\`\"
asaliSeverity :: Lens' AccountStatusAccountLevelIssue (Maybe Text)
asaliSeverity
  = lens _asaliSeverity
      (\ s a -> s{_asaliSeverity = a})

-- | The URL of a web page to help resolving this issue.
asaliDocumentation :: Lens' AccountStatusAccountLevelIssue (Maybe Text)
asaliDocumentation
  = lens _asaliDocumentation
      (\ s a -> s{_asaliDocumentation = a})

-- | Issue identifier.
asaliId :: Lens' AccountStatusAccountLevelIssue (Maybe Text)
asaliId = lens _asaliId (\ s a -> s{_asaliId = a})

-- | Short description of the issue.
asaliTitle :: Lens' AccountStatusAccountLevelIssue (Maybe Text)
asaliTitle
  = lens _asaliTitle (\ s a -> s{_asaliTitle = a})

-- | Additional details about the issue.
asaliDetail :: Lens' AccountStatusAccountLevelIssue (Maybe Text)
asaliDetail
  = lens _asaliDetail (\ s a -> s{_asaliDetail = a})

instance FromJSON AccountStatusAccountLevelIssue
         where
        parseJSON
          = withObject "AccountStatusAccountLevelIssue"
              (\ o ->
                 AccountStatusAccountLevelIssue' <$>
                   (o .:? "destination") <*> (o .:? "country") <*>
                     (o .:? "severity")
                     <*> (o .:? "documentation")
                     <*> (o .:? "id")
                     <*> (o .:? "title")
                     <*> (o .:? "detail"))

instance ToJSON AccountStatusAccountLevelIssue where
        toJSON AccountStatusAccountLevelIssue'{..}
          = object
              (catMaybes
                 [("destination" .=) <$> _asaliDestination,
                  ("country" .=) <$> _asaliCountry,
                  ("severity" .=) <$> _asaliSeverity,
                  ("documentation" .=) <$> _asaliDocumentation,
                  ("id" .=) <$> _asaliId, ("title" .=) <$> _asaliTitle,
                  ("detail" .=) <$> _asaliDetail])

-- | Response message for the \`ListRepricingRules\` method.
--
-- /See:/ 'listRepricingRulesResponse' smart constructor.
data ListRepricingRulesResponse =
  ListRepricingRulesResponse'
    { _lrrrNextPageToken :: !(Maybe Text)
    , _lrrrRepricingRules :: !(Maybe [RepricingRule])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListRepricingRulesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrrrNextPageToken'
--
-- * 'lrrrRepricingRules'
listRepricingRulesResponse
    :: ListRepricingRulesResponse
listRepricingRulesResponse =
  ListRepricingRulesResponse'
    {_lrrrNextPageToken = Nothing, _lrrrRepricingRules = Nothing}


-- | A token, which can be sent as \`page_token\` to retrieve the next page.
-- If this field is omitted, there are no subsequent pages.
lrrrNextPageToken :: Lens' ListRepricingRulesResponse (Maybe Text)
lrrrNextPageToken
  = lens _lrrrNextPageToken
      (\ s a -> s{_lrrrNextPageToken = a})

-- | The rules from the specified merchant.
lrrrRepricingRules :: Lens' ListRepricingRulesResponse [RepricingRule]
lrrrRepricingRules
  = lens _lrrrRepricingRules
      (\ s a -> s{_lrrrRepricingRules = a})
      . _Default
      . _Coerce

instance FromJSON ListRepricingRulesResponse where
        parseJSON
          = withObject "ListRepricingRulesResponse"
              (\ o ->
                 ListRepricingRulesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "repricingRules" .!= mempty))

instance ToJSON ListRepricingRulesResponse where
        toJSON ListRepricingRulesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lrrrNextPageToken,
                  ("repricingRules" .=) <$> _lrrrRepricingRules])

-- | The single value of a rate group or the value of a rate group table\'s
-- cell. Exactly one of \`noShipping\`, \`flatRate\`, \`pricePercentage\`,
-- \`carrierRateName\`, \`subtableName\` must be set.
--
-- /See:/ 'value' smart constructor.
data Value =
  Value'
    { _vPricePercentage :: !(Maybe Text)
    , _vCarrierRateName :: !(Maybe Text)
    , _vFlatRate :: !(Maybe Price)
    , _vSubtableName :: !(Maybe Text)
    , _vNoShipping :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Value' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vPricePercentage'
--
-- * 'vCarrierRateName'
--
-- * 'vFlatRate'
--
-- * 'vSubtableName'
--
-- * 'vNoShipping'
value
    :: Value
value =
  Value'
    { _vPricePercentage = Nothing
    , _vCarrierRateName = Nothing
    , _vFlatRate = Nothing
    , _vSubtableName = Nothing
    , _vNoShipping = Nothing
    }


-- | A percentage of the price represented as a number in decimal notation
-- (e.g., \`\"5.4\"\`). Can only be set if all other fields are not set.
vPricePercentage :: Lens' Value (Maybe Text)
vPricePercentage
  = lens _vPricePercentage
      (\ s a -> s{_vPricePercentage = a})

-- | The name of a carrier rate referring to a carrier rate defined in the
-- same rate group. Can only be set if all other fields are not set.
vCarrierRateName :: Lens' Value (Maybe Text)
vCarrierRateName
  = lens _vCarrierRateName
      (\ s a -> s{_vCarrierRateName = a})

-- | A flat rate. Can only be set if all other fields are not set.
vFlatRate :: Lens' Value (Maybe Price)
vFlatRate
  = lens _vFlatRate (\ s a -> s{_vFlatRate = a})

-- | The name of a subtable. Can only be set in table cells (i.e., not for
-- single values), and only if all other fields are not set.
vSubtableName :: Lens' Value (Maybe Text)
vSubtableName
  = lens _vSubtableName
      (\ s a -> s{_vSubtableName = a})

-- | If true, then the product can\'t ship. Must be true when set, can only
-- be set if all other fields are not set.
vNoShipping :: Lens' Value (Maybe Bool)
vNoShipping
  = lens _vNoShipping (\ s a -> s{_vNoShipping = a})

instance FromJSON Value where
        parseJSON
          = withObject "Value"
              (\ o ->
                 Value' <$>
                   (o .:? "pricePercentage") <*>
                     (o .:? "carrierRateName")
                     <*> (o .:? "flatRate")
                     <*> (o .:? "subtableName")
                     <*> (o .:? "noShipping"))

instance ToJSON Value where
        toJSON Value'{..}
          = object
              (catMaybes
                 [("pricePercentage" .=) <$> _vPricePercentage,
                  ("carrierRateName" .=) <$> _vCarrierRateName,
                  ("flatRate" .=) <$> _vFlatRate,
                  ("subtableName" .=) <$> _vSubtableName,
                  ("noShipping" .=) <$> _vNoShipping])

--
-- /See:/ 'installment' smart constructor.
data Installment =
  Installment'
    { _iAmount :: !(Maybe Price)
    , _iMonths :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Installment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iAmount'
--
-- * 'iMonths'
installment
    :: Installment
installment = Installment' {_iAmount = Nothing, _iMonths = Nothing}


-- | The amount the buyer has to pay per month.
iAmount :: Lens' Installment (Maybe Price)
iAmount = lens _iAmount (\ s a -> s{_iAmount = a})

-- | The number of installments the buyer has to pay.
iMonths :: Lens' Installment (Maybe Int64)
iMonths
  = lens _iMonths (\ s a -> s{_iMonths = a}) .
      mapping _Coerce

instance FromJSON Installment where
        parseJSON
          = withObject "Installment"
              (\ o ->
                 Installment' <$>
                   (o .:? "amount") <*> (o .:? "months"))

instance ToJSON Installment where
        toJSON Installment'{..}
          = object
              (catMaybes
                 [("amount" .=) <$> _iAmount,
                  ("months" .=) <$> _iMonths])

--
-- /See:/ 'pickupServicesPickupService' smart constructor.
data PickupServicesPickupService =
  PickupServicesPickupService'
    { _pspsCountry :: !(Maybe Text)
    , _pspsServiceName :: !(Maybe Text)
    , _pspsCarrierName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PickupServicesPickupService' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pspsCountry'
--
-- * 'pspsServiceName'
--
-- * 'pspsCarrierName'
pickupServicesPickupService
    :: PickupServicesPickupService
pickupServicesPickupService =
  PickupServicesPickupService'
    { _pspsCountry = Nothing
    , _pspsServiceName = Nothing
    , _pspsCarrierName = Nothing
    }


-- | The CLDR country code of the carrier (e.g., \"US\"). Always present.
pspsCountry :: Lens' PickupServicesPickupService (Maybe Text)
pspsCountry
  = lens _pspsCountry (\ s a -> s{_pspsCountry = a})

-- | The name of the pickup service (e.g., \`\"Access point\"\`). Always
-- present.
pspsServiceName :: Lens' PickupServicesPickupService (Maybe Text)
pspsServiceName
  = lens _pspsServiceName
      (\ s a -> s{_pspsServiceName = a})

-- | The name of the carrier (e.g., \`\"UPS\"\`). Always present.
pspsCarrierName :: Lens' PickupServicesPickupService (Maybe Text)
pspsCarrierName
  = lens _pspsCarrierName
      (\ s a -> s{_pspsCarrierName = a})

instance FromJSON PickupServicesPickupService where
        parseJSON
          = withObject "PickupServicesPickupService"
              (\ o ->
                 PickupServicesPickupService' <$>
                   (o .:? "country") <*> (o .:? "serviceName") <*>
                     (o .:? "carrierName"))

instance ToJSON PickupServicesPickupService where
        toJSON PickupServicesPickupService'{..}
          = object
              (catMaybes
                 [("country" .=) <$> _pspsCountry,
                  ("serviceName" .=) <$> _pspsServiceName,
                  ("carrierName" .=) <$> _pspsCarrierName])

-- | The shipping information for the order.
--
-- /See:/ 'orderTrackingSignalShippingInfo' smart constructor.
data OrderTrackingSignalShippingInfo =
  OrderTrackingSignalShippingInfo'
    { _otssiOriginPostalCode :: !(Maybe Text)
    , _otssiTrackingId :: !(Maybe Text)
    , _otssiShipmentId :: !(Maybe Text)
    , _otssiShippingStatus :: !(Maybe OrderTrackingSignalShippingInfoShippingStatus)
    , _otssiCarrierServiceName :: !(Maybe Text)
    , _otssiOriginRegionCode :: !(Maybe Text)
    , _otssiEarliestDeliveryPromiseTime :: !(Maybe DateTime)
    , _otssiActualDeliveryTime :: !(Maybe DateTime)
    , _otssiLatestDeliveryPromiseTime :: !(Maybe DateTime)
    , _otssiCarrierName :: !(Maybe Text)
    , _otssiShippedTime :: !(Maybe DateTime)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderTrackingSignalShippingInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'otssiOriginPostalCode'
--
-- * 'otssiTrackingId'
--
-- * 'otssiShipmentId'
--
-- * 'otssiShippingStatus'
--
-- * 'otssiCarrierServiceName'
--
-- * 'otssiOriginRegionCode'
--
-- * 'otssiEarliestDeliveryPromiseTime'
--
-- * 'otssiActualDeliveryTime'
--
-- * 'otssiLatestDeliveryPromiseTime'
--
-- * 'otssiCarrierName'
--
-- * 'otssiShippedTime'
orderTrackingSignalShippingInfo
    :: OrderTrackingSignalShippingInfo
orderTrackingSignalShippingInfo =
  OrderTrackingSignalShippingInfo'
    { _otssiOriginPostalCode = Nothing
    , _otssiTrackingId = Nothing
    , _otssiShipmentId = Nothing
    , _otssiShippingStatus = Nothing
    , _otssiCarrierServiceName = Nothing
    , _otssiOriginRegionCode = Nothing
    , _otssiEarliestDeliveryPromiseTime = Nothing
    , _otssiActualDeliveryTime = Nothing
    , _otssiLatestDeliveryPromiseTime = Nothing
    , _otssiCarrierName = Nothing
    , _otssiShippedTime = Nothing
    }


-- | The origin postal code, as a continuous string without spaces or dashes,
-- e.g. \"95016\".
otssiOriginPostalCode :: Lens' OrderTrackingSignalShippingInfo (Maybe Text)
otssiOriginPostalCode
  = lens _otssiOriginPostalCode
      (\ s a -> s{_otssiOriginPostalCode = a})

-- | The tracking ID of the shipment. This field is required if one of the
-- following fields is absent: earliest_delivery_promise_time,
-- latest_delivery_promise_time, and actual_delivery_time.
otssiTrackingId :: Lens' OrderTrackingSignalShippingInfo (Maybe Text)
otssiTrackingId
  = lens _otssiTrackingId
      (\ s a -> s{_otssiTrackingId = a})

-- | Required. The shipment ID.
otssiShipmentId :: Lens' OrderTrackingSignalShippingInfo (Maybe Text)
otssiShipmentId
  = lens _otssiShipmentId
      (\ s a -> s{_otssiShipmentId = a})

-- | The status of the shipment.
otssiShippingStatus :: Lens' OrderTrackingSignalShippingInfo (Maybe OrderTrackingSignalShippingInfoShippingStatus)
otssiShippingStatus
  = lens _otssiShippingStatus
      (\ s a -> s{_otssiShippingStatus = a})

-- | The service type for fulfillment, e.g., GROUND, FIRST_CLASS, etc.
otssiCarrierServiceName :: Lens' OrderTrackingSignalShippingInfo (Maybe Text)
otssiCarrierServiceName
  = lens _otssiCarrierServiceName
      (\ s a -> s{_otssiCarrierServiceName = a})

-- | The [CLDR territory code]
-- (http:\/\/www.unicode.org\/repos\/cldr\/tags\/latest\/common\/main\/en.xml)
-- for the shipping origin.
otssiOriginRegionCode :: Lens' OrderTrackingSignalShippingInfo (Maybe Text)
otssiOriginRegionCode
  = lens _otssiOriginRegionCode
      (\ s a -> s{_otssiOriginRegionCode = a})

-- | The earliest delivery promised time. Include the year and timezone
-- string, if available. This field is required, if one of the following
-- fields is absent: tracking_id or carrier_name.
otssiEarliestDeliveryPromiseTime :: Lens' OrderTrackingSignalShippingInfo (Maybe DateTime)
otssiEarliestDeliveryPromiseTime
  = lens _otssiEarliestDeliveryPromiseTime
      (\ s a -> s{_otssiEarliestDeliveryPromiseTime = a})

-- | The time when the shipment was actually delivered. Include the year and
-- timezone string, if available. This field is required, if one of the
-- following fields is absent: tracking_id or carrier_name.
otssiActualDeliveryTime :: Lens' OrderTrackingSignalShippingInfo (Maybe DateTime)
otssiActualDeliveryTime
  = lens _otssiActualDeliveryTime
      (\ s a -> s{_otssiActualDeliveryTime = a})

-- | The latest delivery promised time. Include the year and timezone string,
-- if available. This field is required, if one of the following fields is
-- absent: tracking_id or carrier_name.
otssiLatestDeliveryPromiseTime :: Lens' OrderTrackingSignalShippingInfo (Maybe DateTime)
otssiLatestDeliveryPromiseTime
  = lens _otssiLatestDeliveryPromiseTime
      (\ s a -> s{_otssiLatestDeliveryPromiseTime = a})

-- | The name of the shipping carrier for the delivery. This field is
-- required if one of the following fields is absent:
-- earliest_delivery_promise_time, latest_delivery_promise_time, and
-- actual_delivery_time.
otssiCarrierName :: Lens' OrderTrackingSignalShippingInfo (Maybe Text)
otssiCarrierName
  = lens _otssiCarrierName
      (\ s a -> s{_otssiCarrierName = a})

-- | The time when the shipment was shipped. Include the year and timezone
-- string, if available.
otssiShippedTime :: Lens' OrderTrackingSignalShippingInfo (Maybe DateTime)
otssiShippedTime
  = lens _otssiShippedTime
      (\ s a -> s{_otssiShippedTime = a})

instance FromJSON OrderTrackingSignalShippingInfo
         where
        parseJSON
          = withObject "OrderTrackingSignalShippingInfo"
              (\ o ->
                 OrderTrackingSignalShippingInfo' <$>
                   (o .:? "originPostalCode") <*> (o .:? "trackingId")
                     <*> (o .:? "shipmentId")
                     <*> (o .:? "shippingStatus")
                     <*> (o .:? "carrierServiceName")
                     <*> (o .:? "originRegionCode")
                     <*> (o .:? "earliestDeliveryPromiseTime")
                     <*> (o .:? "actualDeliveryTime")
                     <*> (o .:? "latestDeliveryPromiseTime")
                     <*> (o .:? "carrierName")
                     <*> (o .:? "shippedTime"))

instance ToJSON OrderTrackingSignalShippingInfo where
        toJSON OrderTrackingSignalShippingInfo'{..}
          = object
              (catMaybes
                 [("originPostalCode" .=) <$> _otssiOriginPostalCode,
                  ("trackingId" .=) <$> _otssiTrackingId,
                  ("shipmentId" .=) <$> _otssiShipmentId,
                  ("shippingStatus" .=) <$> _otssiShippingStatus,
                  ("carrierServiceName" .=) <$>
                    _otssiCarrierServiceName,
                  ("originRegionCode" .=) <$> _otssiOriginRegionCode,
                  ("earliestDeliveryPromiseTime" .=) <$>
                    _otssiEarliestDeliveryPromiseTime,
                  ("actualDeliveryTime" .=) <$>
                    _otssiActualDeliveryTime,
                  ("latestDeliveryPromiseTime" .=) <$>
                    _otssiLatestDeliveryPromiseTime,
                  ("carrierName" .=) <$> _otssiCarrierName,
                  ("shippedTime" .=) <$> _otssiShippedTime])

-- | The required fields vary based on the frequency of fetching. For a
-- monthly fetch schedule, day_of_month and hour are required. For a weekly
-- fetch schedule, weekday and hour are required. For a daily fetch
-- schedule, only hour is required.
--
-- /See:/ 'datafeedFetchSchedule' smart constructor.
data DatafeedFetchSchedule =
  DatafeedFetchSchedule'
    { _dfsFetchURL :: !(Maybe Text)
    , _dfsUsername :: !(Maybe Text)
    , _dfsMinuteOfHour :: !(Maybe (Textual Word32))
    , _dfsPassword :: !(Maybe Text)
    , _dfsDayOfMonth :: !(Maybe (Textual Word32))
    , _dfsHour :: !(Maybe (Textual Word32))
    , _dfsWeekday :: !(Maybe Text)
    , _dfsTimeZone :: !(Maybe Text)
    , _dfsPaused :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatafeedFetchSchedule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfsFetchURL'
--
-- * 'dfsUsername'
--
-- * 'dfsMinuteOfHour'
--
-- * 'dfsPassword'
--
-- * 'dfsDayOfMonth'
--
-- * 'dfsHour'
--
-- * 'dfsWeekday'
--
-- * 'dfsTimeZone'
--
-- * 'dfsPaused'
datafeedFetchSchedule
    :: DatafeedFetchSchedule
datafeedFetchSchedule =
  DatafeedFetchSchedule'
    { _dfsFetchURL = Nothing
    , _dfsUsername = Nothing
    , _dfsMinuteOfHour = Nothing
    , _dfsPassword = Nothing
    , _dfsDayOfMonth = Nothing
    , _dfsHour = Nothing
    , _dfsWeekday = Nothing
    , _dfsTimeZone = Nothing
    , _dfsPaused = Nothing
    }


-- | The URL where the feed file can be fetched. Google Merchant Center will
-- support automatic scheduled uploads using the HTTP, HTTPS, FTP, or SFTP
-- protocols, so the value will need to be a valid link using one of those
-- four protocols.
dfsFetchURL :: Lens' DatafeedFetchSchedule (Maybe Text)
dfsFetchURL
  = lens _dfsFetchURL (\ s a -> s{_dfsFetchURL = a})

-- | An optional user name for fetch_url.
dfsUsername :: Lens' DatafeedFetchSchedule (Maybe Text)
dfsUsername
  = lens _dfsUsername (\ s a -> s{_dfsUsername = a})

-- | The minute of the hour the feed file should be fetched (0-59).
-- Read-only.
dfsMinuteOfHour :: Lens' DatafeedFetchSchedule (Maybe Word32)
dfsMinuteOfHour
  = lens _dfsMinuteOfHour
      (\ s a -> s{_dfsMinuteOfHour = a})
      . mapping _Coerce

-- | An optional password for fetch_url.
dfsPassword :: Lens' DatafeedFetchSchedule (Maybe Text)
dfsPassword
  = lens _dfsPassword (\ s a -> s{_dfsPassword = a})

-- | The day of the month the feed file should be fetched (1-31).
dfsDayOfMonth :: Lens' DatafeedFetchSchedule (Maybe Word32)
dfsDayOfMonth
  = lens _dfsDayOfMonth
      (\ s a -> s{_dfsDayOfMonth = a})
      . mapping _Coerce

-- | The hour of the day the feed file should be fetched (0-23).
dfsHour :: Lens' DatafeedFetchSchedule (Maybe Word32)
dfsHour
  = lens _dfsHour (\ s a -> s{_dfsHour = a}) .
      mapping _Coerce

-- | The day of the week the feed file should be fetched. Acceptable values
-- are: - \"\`monday\`\" - \"\`tuesday\`\" - \"\`wednesday\`\" -
-- \"\`thursday\`\" - \"\`friday\`\" - \"\`saturday\`\" - \"\`sunday\`\"
dfsWeekday :: Lens' DatafeedFetchSchedule (Maybe Text)
dfsWeekday
  = lens _dfsWeekday (\ s a -> s{_dfsWeekday = a})

-- | Time zone used for schedule. UTC by default. E.g.,
-- \"America\/Los_Angeles\".
dfsTimeZone :: Lens' DatafeedFetchSchedule (Maybe Text)
dfsTimeZone
  = lens _dfsTimeZone (\ s a -> s{_dfsTimeZone = a})

-- | Whether the scheduled fetch is paused or not.
dfsPaused :: Lens' DatafeedFetchSchedule (Maybe Bool)
dfsPaused
  = lens _dfsPaused (\ s a -> s{_dfsPaused = a})

instance FromJSON DatafeedFetchSchedule where
        parseJSON
          = withObject "DatafeedFetchSchedule"
              (\ o ->
                 DatafeedFetchSchedule' <$>
                   (o .:? "fetchUrl") <*> (o .:? "username") <*>
                     (o .:? "minuteOfHour")
                     <*> (o .:? "password")
                     <*> (o .:? "dayOfMonth")
                     <*> (o .:? "hour")
                     <*> (o .:? "weekday")
                     <*> (o .:? "timeZone")
                     <*> (o .:? "paused"))

instance ToJSON DatafeedFetchSchedule where
        toJSON DatafeedFetchSchedule'{..}
          = object
              (catMaybes
                 [("fetchUrl" .=) <$> _dfsFetchURL,
                  ("username" .=) <$> _dfsUsername,
                  ("minuteOfHour" .=) <$> _dfsMinuteOfHour,
                  ("password" .=) <$> _dfsPassword,
                  ("dayOfMonth" .=) <$> _dfsDayOfMonth,
                  ("hour" .=) <$> _dfsHour,
                  ("weekday" .=) <$> _dfsWeekday,
                  ("timeZone" .=) <$> _dfsTimeZone,
                  ("paused" .=) <$> _dfsPaused])

--
-- /See:/ 'regionalinventoryCustomBatchResponse' smart constructor.
data RegionalinventoryCustomBatchResponse =
  RegionalinventoryCustomBatchResponse'
    { _regEntries :: !(Maybe [RegionalinventoryCustomBatchResponseEntry])
    , _regKind :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionalinventoryCustomBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'regEntries'
--
-- * 'regKind'
regionalinventoryCustomBatchResponse
    :: RegionalinventoryCustomBatchResponse
regionalinventoryCustomBatchResponse =
  RegionalinventoryCustomBatchResponse'
    {_regEntries = Nothing, _regKind = Nothing}


-- | The result of the execution of the batch requests.
regEntries :: Lens' RegionalinventoryCustomBatchResponse [RegionalinventoryCustomBatchResponseEntry]
regEntries
  = lens _regEntries (\ s a -> s{_regEntries = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#regionalinventoryCustomBatchResponse\".
regKind :: Lens' RegionalinventoryCustomBatchResponse (Maybe Text)
regKind = lens _regKind (\ s a -> s{_regKind = a})

instance FromJSON
           RegionalinventoryCustomBatchResponse
         where
        parseJSON
          = withObject "RegionalinventoryCustomBatchResponse"
              (\ o ->
                 RegionalinventoryCustomBatchResponse' <$>
                   (o .:? "entries" .!= mempty) <*> (o .:? "kind"))

instance ToJSON RegionalinventoryCustomBatchResponse
         where
        toJSON RegionalinventoryCustomBatchResponse'{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _regEntries,
                  ("kind" .=) <$> _regKind])

-- | The return shipping fee. This can either be a fixed fee or a boolean to
-- indicate that the customer pays the actual shipping cost.
--
-- /See:/ 'returnPolicyOnlineReturnShippingFee' smart constructor.
data ReturnPolicyOnlineReturnShippingFee =
  ReturnPolicyOnlineReturnShippingFee'
    { _rporsfFixedFee :: !(Maybe PriceAmount)
    , _rporsfType :: !(Maybe ReturnPolicyOnlineReturnShippingFeeType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReturnPolicyOnlineReturnShippingFee' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rporsfFixedFee'
--
-- * 'rporsfType'
returnPolicyOnlineReturnShippingFee
    :: ReturnPolicyOnlineReturnShippingFee
returnPolicyOnlineReturnShippingFee =
  ReturnPolicyOnlineReturnShippingFee'
    {_rporsfFixedFee = Nothing, _rporsfType = Nothing}


-- | Fixed return shipping fee amount. This value is only applicable when
-- type is FIXED. We will treat the return shipping fee as free if type is
-- FIXED and this value is not set.
rporsfFixedFee :: Lens' ReturnPolicyOnlineReturnShippingFee (Maybe PriceAmount)
rporsfFixedFee
  = lens _rporsfFixedFee
      (\ s a -> s{_rporsfFixedFee = a})

-- | Type of return shipping fee.
rporsfType :: Lens' ReturnPolicyOnlineReturnShippingFee (Maybe ReturnPolicyOnlineReturnShippingFeeType)
rporsfType
  = lens _rporsfType (\ s a -> s{_rporsfType = a})

instance FromJSON ReturnPolicyOnlineReturnShippingFee
         where
        parseJSON
          = withObject "ReturnPolicyOnlineReturnShippingFee"
              (\ o ->
                 ReturnPolicyOnlineReturnShippingFee' <$>
                   (o .:? "fixedFee") <*> (o .:? "type"))

instance ToJSON ReturnPolicyOnlineReturnShippingFee
         where
        toJSON ReturnPolicyOnlineReturnShippingFee'{..}
          = object
              (catMaybes
                 [("fixedFee" .=) <$> _rporsfFixedFee,
                  ("type" .=) <$> _rporsfType])

-- | Store resource.
--
-- /See:/ 'posStore' smart constructor.
data PosStore =
  PosStore'
    { _pssStoreCode :: !(Maybe Text)
    , _pssKind :: !(Maybe Text)
    , _pssStoreAddress :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PosStore' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pssStoreCode'
--
-- * 'pssKind'
--
-- * 'pssStoreAddress'
posStore
    :: PosStore
posStore =
  PosStore'
    {_pssStoreCode = Nothing, _pssKind = Nothing, _pssStoreAddress = Nothing}


-- | Required. A store identifier that is unique for the given merchant.
pssStoreCode :: Lens' PosStore (Maybe Text)
pssStoreCode
  = lens _pssStoreCode (\ s a -> s{_pssStoreCode = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"\`content#posStore\`\"
pssKind :: Lens' PosStore (Maybe Text)
pssKind = lens _pssKind (\ s a -> s{_pssKind = a})

-- | Required. The street address of the store.
pssStoreAddress :: Lens' PosStore (Maybe Text)
pssStoreAddress
  = lens _pssStoreAddress
      (\ s a -> s{_pssStoreAddress = a})

instance FromJSON PosStore where
        parseJSON
          = withObject "PosStore"
              (\ o ->
                 PosStore' <$>
                   (o .:? "storeCode") <*> (o .:? "kind") <*>
                     (o .:? "storeAddress"))

instance ToJSON PosStore where
        toJSON PosStore'{..}
          = object
              (catMaybes
                 [("storeCode" .=) <$> _pssStoreCode,
                  ("kind" .=) <$> _pssKind,
                  ("storeAddress" .=) <$> _pssStoreAddress])

--
-- /See:/ 'liaSettingsSetInventoryVerificationContactResponse' smart constructor.
newtype LiaSettingsSetInventoryVerificationContactResponse =
  LiaSettingsSetInventoryVerificationContactResponse'
    { _lssivcrKind :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiaSettingsSetInventoryVerificationContactResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lssivcrKind'
liaSettingsSetInventoryVerificationContactResponse
    :: LiaSettingsSetInventoryVerificationContactResponse
liaSettingsSetInventoryVerificationContactResponse =
  LiaSettingsSetInventoryVerificationContactResponse' {_lssivcrKind = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#liasettingsSetInventoryVerificationContactResponse\".
lssivcrKind :: Lens' LiaSettingsSetInventoryVerificationContactResponse (Maybe Text)
lssivcrKind
  = lens _lssivcrKind (\ s a -> s{_lssivcrKind = a})

instance FromJSON
           LiaSettingsSetInventoryVerificationContactResponse
         where
        parseJSON
          = withObject
              "LiaSettingsSetInventoryVerificationContactResponse"
              (\ o ->
                 LiaSettingsSetInventoryVerificationContactResponse'
                   <$> (o .:? "kind"))

instance ToJSON
           LiaSettingsSetInventoryVerificationContactResponse
         where
        toJSON
          LiaSettingsSetInventoryVerificationContactResponse'{..}
          = object (catMaybes [("kind" .=) <$> _lssivcrKind])

--
-- /See:/ 'shippingSettingsGetSupportedCarriersResponse' smart constructor.
data ShippingSettingsGetSupportedCarriersResponse =
  ShippingSettingsGetSupportedCarriersResponse'
    { _ssgscrKind :: !(Maybe Text)
    , _ssgscrCarriers :: !(Maybe [CarriersCarrier])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ShippingSettingsGetSupportedCarriersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssgscrKind'
--
-- * 'ssgscrCarriers'
shippingSettingsGetSupportedCarriersResponse
    :: ShippingSettingsGetSupportedCarriersResponse
shippingSettingsGetSupportedCarriersResponse =
  ShippingSettingsGetSupportedCarriersResponse'
    {_ssgscrKind = Nothing, _ssgscrCarriers = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#shippingsettingsGetSupportedCarriersResponse\".
ssgscrKind :: Lens' ShippingSettingsGetSupportedCarriersResponse (Maybe Text)
ssgscrKind
  = lens _ssgscrKind (\ s a -> s{_ssgscrKind = a})

-- | A list of supported carriers. May be empty.
ssgscrCarriers :: Lens' ShippingSettingsGetSupportedCarriersResponse [CarriersCarrier]
ssgscrCarriers
  = lens _ssgscrCarriers
      (\ s a -> s{_ssgscrCarriers = a})
      . _Default
      . _Coerce

instance FromJSON
           ShippingSettingsGetSupportedCarriersResponse
         where
        parseJSON
          = withObject
              "ShippingSettingsGetSupportedCarriersResponse"
              (\ o ->
                 ShippingSettingsGetSupportedCarriersResponse' <$>
                   (o .:? "kind") <*> (o .:? "carriers" .!= mempty))

instance ToJSON
           ShippingSettingsGetSupportedCarriersResponse
         where
        toJSON
          ShippingSettingsGetSupportedCarriersResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _ssgscrKind,
                  ("carriers" .=) <$> _ssgscrCarriers])

--
-- /See:/ 'posDataProvidersPosDataProvider' smart constructor.
data PosDataProvidersPosDataProvider =
  PosDataProvidersPosDataProvider'
    { _pdppdpProviderId :: !(Maybe (Textual Word64))
    , _pdppdpFullName :: !(Maybe Text)
    , _pdppdpDisplayName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PosDataProvidersPosDataProvider' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdppdpProviderId'
--
-- * 'pdppdpFullName'
--
-- * 'pdppdpDisplayName'
posDataProvidersPosDataProvider
    :: PosDataProvidersPosDataProvider
posDataProvidersPosDataProvider =
  PosDataProvidersPosDataProvider'
    { _pdppdpProviderId = Nothing
    , _pdppdpFullName = Nothing
    , _pdppdpDisplayName = Nothing
    }


-- | The ID of the account.
pdppdpProviderId :: Lens' PosDataProvidersPosDataProvider (Maybe Word64)
pdppdpProviderId
  = lens _pdppdpProviderId
      (\ s a -> s{_pdppdpProviderId = a})
      . mapping _Coerce

-- | The full name of this POS data Provider.
pdppdpFullName :: Lens' PosDataProvidersPosDataProvider (Maybe Text)
pdppdpFullName
  = lens _pdppdpFullName
      (\ s a -> s{_pdppdpFullName = a})

-- | The display name of Pos data Provider.
pdppdpDisplayName :: Lens' PosDataProvidersPosDataProvider (Maybe Text)
pdppdpDisplayName
  = lens _pdppdpDisplayName
      (\ s a -> s{_pdppdpDisplayName = a})

instance FromJSON PosDataProvidersPosDataProvider
         where
        parseJSON
          = withObject "PosDataProvidersPosDataProvider"
              (\ o ->
                 PosDataProvidersPosDataProvider' <$>
                   (o .:? "providerId") <*> (o .:? "fullName") <*>
                     (o .:? "displayName"))

instance ToJSON PosDataProvidersPosDataProvider where
        toJSON PosDataProvidersPosDataProvider'{..}
          = object
              (catMaybes
                 [("providerId" .=) <$> _pdppdpProviderId,
                  ("fullName" .=) <$> _pdppdpFullName,
                  ("displayName" .=) <$> _pdppdpDisplayName])

--
-- /See:/ 'localinventoryCustomBatchResponse' smart constructor.
data LocalinventoryCustomBatchResponse =
  LocalinventoryCustomBatchResponse'
    { _lcbrEntries :: !(Maybe [LocalinventoryCustomBatchResponseEntry])
    , _lcbrKind :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocalinventoryCustomBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcbrEntries'
--
-- * 'lcbrKind'
localinventoryCustomBatchResponse
    :: LocalinventoryCustomBatchResponse
localinventoryCustomBatchResponse =
  LocalinventoryCustomBatchResponse'
    {_lcbrEntries = Nothing, _lcbrKind = Nothing}


-- | The result of the execution of the batch requests.
lcbrEntries :: Lens' LocalinventoryCustomBatchResponse [LocalinventoryCustomBatchResponseEntry]
lcbrEntries
  = lens _lcbrEntries (\ s a -> s{_lcbrEntries = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#localinventoryCustomBatchResponse\".
lcbrKind :: Lens' LocalinventoryCustomBatchResponse (Maybe Text)
lcbrKind = lens _lcbrKind (\ s a -> s{_lcbrKind = a})

instance FromJSON LocalinventoryCustomBatchResponse
         where
        parseJSON
          = withObject "LocalinventoryCustomBatchResponse"
              (\ o ->
                 LocalinventoryCustomBatchResponse' <$>
                   (o .:? "entries" .!= mempty) <*> (o .:? "kind"))

instance ToJSON LocalinventoryCustomBatchResponse
         where
        toJSON LocalinventoryCustomBatchResponse'{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _lcbrEntries,
                  ("kind" .=) <$> _lcbrKind])

--
-- /See:/ 'holidaysHoliday' smart constructor.
data HolidaysHoliday =
  HolidaysHoliday'
    { _hhDeliveryGuaranteeHour :: !(Maybe (Textual Word64))
    , _hhDate :: !(Maybe Text)
    , _hhDeliveryGuaranteeDate :: !(Maybe Text)
    , _hhCountryCode :: !(Maybe Text)
    , _hhId :: !(Maybe Text)
    , _hhType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HolidaysHoliday' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hhDeliveryGuaranteeHour'
--
-- * 'hhDate'
--
-- * 'hhDeliveryGuaranteeDate'
--
-- * 'hhCountryCode'
--
-- * 'hhId'
--
-- * 'hhType'
holidaysHoliday
    :: HolidaysHoliday
holidaysHoliday =
  HolidaysHoliday'
    { _hhDeliveryGuaranteeHour = Nothing
    , _hhDate = Nothing
    , _hhDeliveryGuaranteeDate = Nothing
    , _hhCountryCode = Nothing
    , _hhId = Nothing
    , _hhType = Nothing
    }


-- | Hour of the day in the delivery location\'s timezone on the guaranteed
-- delivery date by which the order has to arrive at the customer\'s.
-- Possible values are: 0 (midnight), 1, ..., 12 (noon), 13, ..., 23.
-- Always present.
hhDeliveryGuaranteeHour :: Lens' HolidaysHoliday (Maybe Word64)
hhDeliveryGuaranteeHour
  = lens _hhDeliveryGuaranteeHour
      (\ s a -> s{_hhDeliveryGuaranteeHour = a})
      . mapping _Coerce

-- | Date of the holiday, in ISO 8601 format. E.g. \"2016-12-25\" for
-- Christmas 2016. Always present.
hhDate :: Lens' HolidaysHoliday (Maybe Text)
hhDate = lens _hhDate (\ s a -> s{_hhDate = a})

-- | Date on which the order has to arrive at the customer\'s, in ISO 8601
-- format. E.g. \"2016-12-24\" for 24th December 2016. Always present.
hhDeliveryGuaranteeDate :: Lens' HolidaysHoliday (Maybe Text)
hhDeliveryGuaranteeDate
  = lens _hhDeliveryGuaranteeDate
      (\ s a -> s{_hhDeliveryGuaranteeDate = a})

-- | The CLDR territory code of the country in which the holiday is
-- available. E.g. \"US\", \"DE\", \"GB\". A holiday cutoff can only be
-- configured in a shipping settings service with matching delivery
-- country. Always present.
hhCountryCode :: Lens' HolidaysHoliday (Maybe Text)
hhCountryCode
  = lens _hhCountryCode
      (\ s a -> s{_hhCountryCode = a})

-- | Unique identifier for the holiday to be used when configuring holiday
-- cutoffs. Always present.
hhId :: Lens' HolidaysHoliday (Maybe Text)
hhId = lens _hhId (\ s a -> s{_hhId = a})

-- | The holiday type. Always present. Acceptable values are: -
-- \"\`Christmas\`\" - \"\`Easter\`\" - \"\`Father\'s Day\`\" -
-- \"\`Halloween\`\" - \"\`Independence Day (USA)\`\" - \"\`Mother\'s
-- Day\`\" - \"\`Thanksgiving\`\" - \"\`Valentine\'s Day\`\"
hhType :: Lens' HolidaysHoliday (Maybe Text)
hhType = lens _hhType (\ s a -> s{_hhType = a})

instance FromJSON HolidaysHoliday where
        parseJSON
          = withObject "HolidaysHoliday"
              (\ o ->
                 HolidaysHoliday' <$>
                   (o .:? "deliveryGuaranteeHour") <*> (o .:? "date")
                     <*> (o .:? "deliveryGuaranteeDate")
                     <*> (o .:? "countryCode")
                     <*> (o .:? "id")
                     <*> (o .:? "type"))

instance ToJSON HolidaysHoliday where
        toJSON HolidaysHoliday'{..}
          = object
              (catMaybes
                 [("deliveryGuaranteeHour" .=) <$>
                    _hhDeliveryGuaranteeHour,
                  ("date" .=) <$> _hhDate,
                  ("deliveryGuaranteeDate" .=) <$>
                    _hhDeliveryGuaranteeDate,
                  ("countryCode" .=) <$> _hhCountryCode,
                  ("id" .=) <$> _hhId, ("type" .=) <$> _hhType])

-- | Information about CSS domain.
--
-- /See:/ 'css' smart constructor.
data Css =
  Css'
    { _cFullName :: !(Maybe Text)
    , _cCssDomainId :: !(Maybe (Textual Int64))
    , _cCssGroupId :: !(Maybe (Textual Int64))
    , _cHomepageURI :: !(Maybe Text)
    , _cDisplayName :: !(Maybe Text)
    , _cLabelIds :: !(Maybe [Textual Int64])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Css' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cFullName'
--
-- * 'cCssDomainId'
--
-- * 'cCssGroupId'
--
-- * 'cHomepageURI'
--
-- * 'cDisplayName'
--
-- * 'cLabelIds'
css
    :: Css
css =
  Css'
    { _cFullName = Nothing
    , _cCssDomainId = Nothing
    , _cCssGroupId = Nothing
    , _cHomepageURI = Nothing
    , _cDisplayName = Nothing
    , _cLabelIds = Nothing
    }


-- | Output only. Immutable. The CSS domain\'s full name.
cFullName :: Lens' Css (Maybe Text)
cFullName
  = lens _cFullName (\ s a -> s{_cFullName = a})

-- | Output only. Immutable. The CSS domain ID.
cCssDomainId :: Lens' Css (Maybe Int64)
cCssDomainId
  = lens _cCssDomainId (\ s a -> s{_cCssDomainId = a})
      . mapping _Coerce

-- | Output only. Immutable. The ID of the CSS group this CSS domain is
-- affiliated with. Only populated for CSS group users.
cCssGroupId :: Lens' Css (Maybe Int64)
cCssGroupId
  = lens _cCssGroupId (\ s a -> s{_cCssGroupId = a}) .
      mapping _Coerce

-- | Output only. Immutable. The CSS domain\'s homepage.
cHomepageURI :: Lens' Css (Maybe Text)
cHomepageURI
  = lens _cHomepageURI (\ s a -> s{_cHomepageURI = a})

-- | Output only. Immutable. The CSS domain\'s display name, used when space
-- is constrained.
cDisplayName :: Lens' Css (Maybe Text)
cDisplayName
  = lens _cDisplayName (\ s a -> s{_cDisplayName = a})

-- | A list of label IDs that are assigned to this CSS domain by its CSS
-- group. Only populated for CSS group users.
cLabelIds :: Lens' Css [Int64]
cLabelIds
  = lens _cLabelIds (\ s a -> s{_cLabelIds = a}) .
      _Default
      . _Coerce

instance FromJSON Css where
        parseJSON
          = withObject "Css"
              (\ o ->
                 Css' <$>
                   (o .:? "fullName") <*> (o .:? "cssDomainId") <*>
                     (o .:? "cssGroupId")
                     <*> (o .:? "homepageUri")
                     <*> (o .:? "displayName")
                     <*> (o .:? "labelIds" .!= mempty))

instance ToJSON Css where
        toJSON Css'{..}
          = object
              (catMaybes
                 [("fullName" .=) <$> _cFullName,
                  ("cssDomainId" .=) <$> _cCssDomainId,
                  ("cssGroupId" .=) <$> _cCssGroupId,
                  ("homepageUri" .=) <$> _cHomepageURI,
                  ("displayName" .=) <$> _cDisplayName,
                  ("labelIds" .=) <$> _cLabelIds])

--
-- /See:/ 'accountsListResponse' smart constructor.
data AccountsListResponse =
  AccountsListResponse'
    { _accNextPageToken :: !(Maybe Text)
    , _accKind :: !(Maybe Text)
    , _accResources :: !(Maybe [Account])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accNextPageToken'
--
-- * 'accKind'
--
-- * 'accResources'
accountsListResponse
    :: AccountsListResponse
accountsListResponse =
  AccountsListResponse'
    {_accNextPageToken = Nothing, _accKind = Nothing, _accResources = Nothing}


-- | The token for the retrieval of the next page of accounts.
accNextPageToken :: Lens' AccountsListResponse (Maybe Text)
accNextPageToken
  = lens _accNextPageToken
      (\ s a -> s{_accNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#accountsListResponse\".
accKind :: Lens' AccountsListResponse (Maybe Text)
accKind = lens _accKind (\ s a -> s{_accKind = a})

accResources :: Lens' AccountsListResponse [Account]
accResources
  = lens _accResources (\ s a -> s{_accResources = a})
      . _Default
      . _Coerce

instance FromJSON AccountsListResponse where
        parseJSON
          = withObject "AccountsListResponse"
              (\ o ->
                 AccountsListResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "kind") <*>
                     (o .:? "resources" .!= mempty))

instance ToJSON AccountsListResponse where
        toJSON AccountsListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _accNextPageToken,
                  ("kind" .=) <$> _accKind,
                  ("resources" .=) <$> _accResources])

--
-- /See:/ 'orderPickupDetailsCollector' smart constructor.
data OrderPickupDetailsCollector =
  OrderPickupDetailsCollector'
    { _opdcName :: !(Maybe Text)
    , _opdcPhoneNumber :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderPickupDetailsCollector' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'opdcName'
--
-- * 'opdcPhoneNumber'
orderPickupDetailsCollector
    :: OrderPickupDetailsCollector
orderPickupDetailsCollector =
  OrderPickupDetailsCollector' {_opdcName = Nothing, _opdcPhoneNumber = Nothing}


-- | Name of the person picking up the shipment.
opdcName :: Lens' OrderPickupDetailsCollector (Maybe Text)
opdcName = lens _opdcName (\ s a -> s{_opdcName = a})

-- | Phone number of the person picking up the shipment.
opdcPhoneNumber :: Lens' OrderPickupDetailsCollector (Maybe Text)
opdcPhoneNumber
  = lens _opdcPhoneNumber
      (\ s a -> s{_opdcPhoneNumber = a})

instance FromJSON OrderPickupDetailsCollector where
        parseJSON
          = withObject "OrderPickupDetailsCollector"
              (\ o ->
                 OrderPickupDetailsCollector' <$>
                   (o .:? "name") <*> (o .:? "phoneNumber"))

instance ToJSON OrderPickupDetailsCollector where
        toJSON OrderPickupDetailsCollector'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _opdcName,
                  ("phoneNumber" .=) <$> _opdcPhoneNumber])

--
-- /See:/ 'accountBusinessInformation' smart constructor.
data AccountBusinessInformation =
  AccountBusinessInformation'
    { _abiAddress :: !(Maybe AccountAddress)
    , _abiPhoneNumber :: !(Maybe Text)
    , _abiCustomerService :: !(Maybe AccountCustomerService)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountBusinessInformation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'abiAddress'
--
-- * 'abiPhoneNumber'
--
-- * 'abiCustomerService'
accountBusinessInformation
    :: AccountBusinessInformation
accountBusinessInformation =
  AccountBusinessInformation'
    { _abiAddress = Nothing
    , _abiPhoneNumber = Nothing
    , _abiCustomerService = Nothing
    }


-- | The address of the business.
abiAddress :: Lens' AccountBusinessInformation (Maybe AccountAddress)
abiAddress
  = lens _abiAddress (\ s a -> s{_abiAddress = a})

-- | The phone number of the business.
abiPhoneNumber :: Lens' AccountBusinessInformation (Maybe Text)
abiPhoneNumber
  = lens _abiPhoneNumber
      (\ s a -> s{_abiPhoneNumber = a})

-- | The customer service information of the business.
abiCustomerService :: Lens' AccountBusinessInformation (Maybe AccountCustomerService)
abiCustomerService
  = lens _abiCustomerService
      (\ s a -> s{_abiCustomerService = a})

instance FromJSON AccountBusinessInformation where
        parseJSON
          = withObject "AccountBusinessInformation"
              (\ o ->
                 AccountBusinessInformation' <$>
                   (o .:? "address") <*> (o .:? "phoneNumber") <*>
                     (o .:? "customerService"))

instance ToJSON AccountBusinessInformation where
        toJSON AccountBusinessInformation'{..}
          = object
              (catMaybes
                 [("address" .=) <$> _abiAddress,
                  ("phoneNumber" .=) <$> _abiPhoneNumber,
                  ("customerService" .=) <$> _abiCustomerService])

--
-- /See:/ 'carriersCarrier' smart constructor.
data CarriersCarrier =
  CarriersCarrier'
    { _ccCountry :: !(Maybe Text)
    , _ccName :: !(Maybe Text)
    , _ccServices :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CarriersCarrier' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccCountry'
--
-- * 'ccName'
--
-- * 'ccServices'
carriersCarrier
    :: CarriersCarrier
carriersCarrier =
  CarriersCarrier'
    {_ccCountry = Nothing, _ccName = Nothing, _ccServices = Nothing}


-- | The CLDR country code of the carrier (e.g., \"US\"). Always present.
ccCountry :: Lens' CarriersCarrier (Maybe Text)
ccCountry
  = lens _ccCountry (\ s a -> s{_ccCountry = a})

-- | The name of the carrier (e.g., \`\"UPS\"\`). Always present.
ccName :: Lens' CarriersCarrier (Maybe Text)
ccName = lens _ccName (\ s a -> s{_ccName = a})

-- | A list of supported services (e.g., \`\"ground\"\`) for that carrier.
-- Contains at least one service.
ccServices :: Lens' CarriersCarrier [Text]
ccServices
  = lens _ccServices (\ s a -> s{_ccServices = a}) .
      _Default
      . _Coerce

instance FromJSON CarriersCarrier where
        parseJSON
          = withObject "CarriersCarrier"
              (\ o ->
                 CarriersCarrier' <$>
                   (o .:? "country") <*> (o .:? "name") <*>
                     (o .:? "services" .!= mempty))

instance ToJSON CarriersCarrier where
        toJSON CarriersCarrier'{..}
          = object
              (catMaybes
                 [("country" .=) <$> _ccCountry,
                  ("name" .=) <$> _ccName,
                  ("services" .=) <$> _ccServices])

--
-- /See:/ 'carrierRate' smart constructor.
data CarrierRate =
  CarrierRate'
    { _crOriginPostalCode :: !(Maybe Text)
    , _crFlatAdjustment :: !(Maybe Price)
    , _crCarrierService :: !(Maybe Text)
    , _crName :: !(Maybe Text)
    , _crPercentageAdjustment :: !(Maybe Text)
    , _crCarrierName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CarrierRate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crOriginPostalCode'
--
-- * 'crFlatAdjustment'
--
-- * 'crCarrierService'
--
-- * 'crName'
--
-- * 'crPercentageAdjustment'
--
-- * 'crCarrierName'
carrierRate
    :: CarrierRate
carrierRate =
  CarrierRate'
    { _crOriginPostalCode = Nothing
    , _crFlatAdjustment = Nothing
    , _crCarrierService = Nothing
    , _crName = Nothing
    , _crPercentageAdjustment = Nothing
    , _crCarrierName = Nothing
    }


-- | Shipping origin for this carrier rate. Required.
crOriginPostalCode :: Lens' CarrierRate (Maybe Text)
crOriginPostalCode
  = lens _crOriginPostalCode
      (\ s a -> s{_crOriginPostalCode = a})

-- | Additive shipping rate modifier. Can be negative. For example \`{
-- \"value\": \"1\", \"currency\" : \"USD\" }\` adds $1 to the rate, \`{
-- \"value\": \"-3\", \"currency\" : \"USD\" }\` removes $3 from the rate.
-- Optional.
crFlatAdjustment :: Lens' CarrierRate (Maybe Price)
crFlatAdjustment
  = lens _crFlatAdjustment
      (\ s a -> s{_crFlatAdjustment = a})

-- | Carrier service, such as \`\"ground\"\` or \`\"2 days\"\`. The list of
-- supported services for a carrier can be retrieved via the
-- \`getSupportedCarriers\` method. Required.
crCarrierService :: Lens' CarrierRate (Maybe Text)
crCarrierService
  = lens _crCarrierService
      (\ s a -> s{_crCarrierService = a})

-- | Name of the carrier rate. Must be unique per rate group. Required.
crName :: Lens' CarrierRate (Maybe Text)
crName = lens _crName (\ s a -> s{_crName = a})

-- | Multiplicative shipping rate modifier as a number in decimal notation.
-- Can be negative. For example \`\"5.4\"\` increases the rate by 5.4%,
-- \`\"-3\"\` decreases the rate by 3%. Optional.
crPercentageAdjustment :: Lens' CarrierRate (Maybe Text)
crPercentageAdjustment
  = lens _crPercentageAdjustment
      (\ s a -> s{_crPercentageAdjustment = a})

-- | Carrier service, such as \`\"UPS\"\` or \`\"Fedex\"\`. The list of
-- supported carriers can be retrieved via the \`getSupportedCarriers\`
-- method. Required.
crCarrierName :: Lens' CarrierRate (Maybe Text)
crCarrierName
  = lens _crCarrierName
      (\ s a -> s{_crCarrierName = a})

instance FromJSON CarrierRate where
        parseJSON
          = withObject "CarrierRate"
              (\ o ->
                 CarrierRate' <$>
                   (o .:? "originPostalCode") <*>
                     (o .:? "flatAdjustment")
                     <*> (o .:? "carrierService")
                     <*> (o .:? "name")
                     <*> (o .:? "percentageAdjustment")
                     <*> (o .:? "carrierName"))

instance ToJSON CarrierRate where
        toJSON CarrierRate'{..}
          = object
              (catMaybes
                 [("originPostalCode" .=) <$> _crOriginPostalCode,
                  ("flatAdjustment" .=) <$> _crFlatAdjustment,
                  ("carrierService" .=) <$> _crCarrierService,
                  ("name" .=) <$> _crName,
                  ("percentageAdjustment" .=) <$>
                    _crPercentageAdjustment,
                  ("carrierName" .=) <$> _crCarrierName])

--
-- /See:/ 'orderreturnsCreateOrderReturnRequest' smart constructor.
data OrderreturnsCreateOrderReturnRequest =
  OrderreturnsCreateOrderReturnRequest'
    { _ocorrReturnMethodType :: !(Maybe Text)
    , _ocorrLineItems :: !(Maybe [OrderreturnsLineItem])
    , _ocorrOperationId :: !(Maybe Text)
    , _ocorrOrderId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderreturnsCreateOrderReturnRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocorrReturnMethodType'
--
-- * 'ocorrLineItems'
--
-- * 'ocorrOperationId'
--
-- * 'ocorrOrderId'
orderreturnsCreateOrderReturnRequest
    :: OrderreturnsCreateOrderReturnRequest
orderreturnsCreateOrderReturnRequest =
  OrderreturnsCreateOrderReturnRequest'
    { _ocorrReturnMethodType = Nothing
    , _ocorrLineItems = Nothing
    , _ocorrOperationId = Nothing
    , _ocorrOrderId = Nothing
    }


-- | The way of the package being returned.
ocorrReturnMethodType :: Lens' OrderreturnsCreateOrderReturnRequest (Maybe Text)
ocorrReturnMethodType
  = lens _ocorrReturnMethodType
      (\ s a -> s{_ocorrReturnMethodType = a})

-- | The list of line items to return.
ocorrLineItems :: Lens' OrderreturnsCreateOrderReturnRequest [OrderreturnsLineItem]
ocorrLineItems
  = lens _ocorrLineItems
      (\ s a -> s{_ocorrLineItems = a})
      . _Default
      . _Coerce

-- | The ID of the operation. Unique across all operations for a given order.
ocorrOperationId :: Lens' OrderreturnsCreateOrderReturnRequest (Maybe Text)
ocorrOperationId
  = lens _ocorrOperationId
      (\ s a -> s{_ocorrOperationId = a})

-- | The ID of the order.
ocorrOrderId :: Lens' OrderreturnsCreateOrderReturnRequest (Maybe Text)
ocorrOrderId
  = lens _ocorrOrderId (\ s a -> s{_ocorrOrderId = a})

instance FromJSON
           OrderreturnsCreateOrderReturnRequest
         where
        parseJSON
          = withObject "OrderreturnsCreateOrderReturnRequest"
              (\ o ->
                 OrderreturnsCreateOrderReturnRequest' <$>
                   (o .:? "returnMethodType") <*>
                     (o .:? "lineItems" .!= mempty)
                     <*> (o .:? "operationId")
                     <*> (o .:? "orderId"))

instance ToJSON OrderreturnsCreateOrderReturnRequest
         where
        toJSON OrderreturnsCreateOrderReturnRequest'{..}
          = object
              (catMaybes
                 [("returnMethodType" .=) <$> _ocorrReturnMethodType,
                  ("lineItems" .=) <$> _ocorrLineItems,
                  ("operationId" .=) <$> _ocorrOperationId,
                  ("orderId" .=) <$> _ocorrOrderId])

--
-- /See:/ 'shippingSettingsListResponse' smart constructor.
data ShippingSettingsListResponse =
  ShippingSettingsListResponse'
    { _sslrNextPageToken :: !(Maybe Text)
    , _sslrKind :: !(Maybe Text)
    , _sslrResources :: !(Maybe [ShippingSettings])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ShippingSettingsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sslrNextPageToken'
--
-- * 'sslrKind'
--
-- * 'sslrResources'
shippingSettingsListResponse
    :: ShippingSettingsListResponse
shippingSettingsListResponse =
  ShippingSettingsListResponse'
    { _sslrNextPageToken = Nothing
    , _sslrKind = Nothing
    , _sslrResources = Nothing
    }


-- | The token for the retrieval of the next page of shipping settings.
sslrNextPageToken :: Lens' ShippingSettingsListResponse (Maybe Text)
sslrNextPageToken
  = lens _sslrNextPageToken
      (\ s a -> s{_sslrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#shippingsettingsListResponse\".
sslrKind :: Lens' ShippingSettingsListResponse (Maybe Text)
sslrKind = lens _sslrKind (\ s a -> s{_sslrKind = a})

sslrResources :: Lens' ShippingSettingsListResponse [ShippingSettings]
sslrResources
  = lens _sslrResources
      (\ s a -> s{_sslrResources = a})
      . _Default
      . _Coerce

instance FromJSON ShippingSettingsListResponse where
        parseJSON
          = withObject "ShippingSettingsListResponse"
              (\ o ->
                 ShippingSettingsListResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "kind") <*>
                     (o .:? "resources" .!= mempty))

instance ToJSON ShippingSettingsListResponse where
        toJSON ShippingSettingsListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _sslrNextPageToken,
                  ("kind" .=) <$> _sslrKind,
                  ("resources" .=) <$> _sslrResources])

-- | Response message for the GetProgramStatus method.
--
-- /See:/ 'buyOnGoogleProgramStatus' smart constructor.
data BuyOnGoogleProgramStatus =
  BuyOnGoogleProgramStatus'
    { _bogpsCustomerServicePendingEmail :: !(Maybe Text)
    , _bogpsParticipationStage :: !(Maybe BuyOnGoogleProgramStatusParticipationStage)
    , _bogpsCustomerServiceVerifiedEmail :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BuyOnGoogleProgramStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bogpsCustomerServicePendingEmail'
--
-- * 'bogpsParticipationStage'
--
-- * 'bogpsCustomerServiceVerifiedEmail'
buyOnGoogleProgramStatus
    :: BuyOnGoogleProgramStatus
buyOnGoogleProgramStatus =
  BuyOnGoogleProgramStatus'
    { _bogpsCustomerServicePendingEmail = Nothing
    , _bogpsParticipationStage = Nothing
    , _bogpsCustomerServiceVerifiedEmail = Nothing
    }


-- | The customer service pending email.
bogpsCustomerServicePendingEmail :: Lens' BuyOnGoogleProgramStatus (Maybe Text)
bogpsCustomerServicePendingEmail
  = lens _bogpsCustomerServicePendingEmail
      (\ s a -> s{_bogpsCustomerServicePendingEmail = a})

-- | The current participation stage for the program.
bogpsParticipationStage :: Lens' BuyOnGoogleProgramStatus (Maybe BuyOnGoogleProgramStatusParticipationStage)
bogpsParticipationStage
  = lens _bogpsParticipationStage
      (\ s a -> s{_bogpsParticipationStage = a})

-- | The customer service verified email.
bogpsCustomerServiceVerifiedEmail :: Lens' BuyOnGoogleProgramStatus (Maybe Text)
bogpsCustomerServiceVerifiedEmail
  = lens _bogpsCustomerServiceVerifiedEmail
      (\ s a -> s{_bogpsCustomerServiceVerifiedEmail = a})

instance FromJSON BuyOnGoogleProgramStatus where
        parseJSON
          = withObject "BuyOnGoogleProgramStatus"
              (\ o ->
                 BuyOnGoogleProgramStatus' <$>
                   (o .:? "customerServicePendingEmail") <*>
                     (o .:? "participationStage")
                     <*> (o .:? "customerServiceVerifiedEmail"))

instance ToJSON BuyOnGoogleProgramStatus where
        toJSON BuyOnGoogleProgramStatus'{..}
          = object
              (catMaybes
                 [("customerServicePendingEmail" .=) <$>
                    _bogpsCustomerServicePendingEmail,
                  ("participationStage" .=) <$>
                    _bogpsParticipationStage,
                  ("customerServiceVerifiedEmail" .=) <$>
                    _bogpsCustomerServiceVerifiedEmail])

--
-- /See:/ 'ordersCreateTestReturnResponse' smart constructor.
data OrdersCreateTestReturnResponse =
  OrdersCreateTestReturnResponse'
    { _octrrKind :: !(Maybe Text)
    , _octrrReturnId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersCreateTestReturnResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'octrrKind'
--
-- * 'octrrReturnId'
ordersCreateTestReturnResponse
    :: OrdersCreateTestReturnResponse
ordersCreateTestReturnResponse =
  OrdersCreateTestReturnResponse'
    {_octrrKind = Nothing, _octrrReturnId = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersCreateTestReturnResponse\".
octrrKind :: Lens' OrdersCreateTestReturnResponse (Maybe Text)
octrrKind
  = lens _octrrKind (\ s a -> s{_octrrKind = a})

-- | The ID of the newly created test order return.
octrrReturnId :: Lens' OrdersCreateTestReturnResponse (Maybe Text)
octrrReturnId
  = lens _octrrReturnId
      (\ s a -> s{_octrrReturnId = a})

instance FromJSON OrdersCreateTestReturnResponse
         where
        parseJSON
          = withObject "OrdersCreateTestReturnResponse"
              (\ o ->
                 OrdersCreateTestReturnResponse' <$>
                   (o .:? "kind") <*> (o .:? "returnId"))

instance ToJSON OrdersCreateTestReturnResponse where
        toJSON OrdersCreateTestReturnResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _octrrKind,
                  ("returnId" .=) <$> _octrrReturnId])

--
-- /See:/ 'returnaddressCustomBatchRequestEntry' smart constructor.
data ReturnaddressCustomBatchRequestEntry =
  ReturnaddressCustomBatchRequestEntry'
    { _rcbrecMerchantId :: !(Maybe (Textual Word64))
    , _rcbrecReturnAddressId :: !(Maybe Text)
    , _rcbrecReturnAddress :: !(Maybe ReturnAddress)
    , _rcbrecMethod :: !(Maybe Text)
    , _rcbrecBatchId :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReturnaddressCustomBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcbrecMerchantId'
--
-- * 'rcbrecReturnAddressId'
--
-- * 'rcbrecReturnAddress'
--
-- * 'rcbrecMethod'
--
-- * 'rcbrecBatchId'
returnaddressCustomBatchRequestEntry
    :: ReturnaddressCustomBatchRequestEntry
returnaddressCustomBatchRequestEntry =
  ReturnaddressCustomBatchRequestEntry'
    { _rcbrecMerchantId = Nothing
    , _rcbrecReturnAddressId = Nothing
    , _rcbrecReturnAddress = Nothing
    , _rcbrecMethod = Nothing
    , _rcbrecBatchId = Nothing
    }


-- | The Merchant Center account ID.
rcbrecMerchantId :: Lens' ReturnaddressCustomBatchRequestEntry (Maybe Word64)
rcbrecMerchantId
  = lens _rcbrecMerchantId
      (\ s a -> s{_rcbrecMerchantId = a})
      . mapping _Coerce

-- | The return address ID. This should be set only if the method is
-- \`delete\` or \`get\`.
rcbrecReturnAddressId :: Lens' ReturnaddressCustomBatchRequestEntry (Maybe Text)
rcbrecReturnAddressId
  = lens _rcbrecReturnAddressId
      (\ s a -> s{_rcbrecReturnAddressId = a})

-- | The return address to submit. This should be set only if the method is
-- \`insert\`.
rcbrecReturnAddress :: Lens' ReturnaddressCustomBatchRequestEntry (Maybe ReturnAddress)
rcbrecReturnAddress
  = lens _rcbrecReturnAddress
      (\ s a -> s{_rcbrecReturnAddress = a})

-- | Method of the batch request entry. Acceptable values are: -
-- \"\`delete\`\" - \"\`get\`\" - \"\`insert\`\"
rcbrecMethod :: Lens' ReturnaddressCustomBatchRequestEntry (Maybe Text)
rcbrecMethod
  = lens _rcbrecMethod (\ s a -> s{_rcbrecMethod = a})

-- | An entry ID, unique within the batch request.
rcbrecBatchId :: Lens' ReturnaddressCustomBatchRequestEntry (Maybe Word32)
rcbrecBatchId
  = lens _rcbrecBatchId
      (\ s a -> s{_rcbrecBatchId = a})
      . mapping _Coerce

instance FromJSON
           ReturnaddressCustomBatchRequestEntry
         where
        parseJSON
          = withObject "ReturnaddressCustomBatchRequestEntry"
              (\ o ->
                 ReturnaddressCustomBatchRequestEntry' <$>
                   (o .:? "merchantId") <*> (o .:? "returnAddressId")
                     <*> (o .:? "returnAddress")
                     <*> (o .:? "method")
                     <*> (o .:? "batchId"))

instance ToJSON ReturnaddressCustomBatchRequestEntry
         where
        toJSON ReturnaddressCustomBatchRequestEntry'{..}
          = object
              (catMaybes
                 [("merchantId" .=) <$> _rcbrecMerchantId,
                  ("returnAddressId" .=) <$> _rcbrecReturnAddressId,
                  ("returnAddress" .=) <$> _rcbrecReturnAddress,
                  ("method" .=) <$> _rcbrecMethod,
                  ("batchId" .=) <$> _rcbrecBatchId])

--
-- /See:/ 'ordersShipLineItemsRequest' smart constructor.
data OrdersShipLineItemsRequest =
  OrdersShipLineItemsRequest'
    { _oslirShipmentGroupId :: !(Maybe Text)
    , _oslirShipmentInfos :: !(Maybe [OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo])
    , _oslirLineItems :: !(Maybe [OrderShipmentLineItemShipment])
    , _oslirOperationId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersShipLineItemsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oslirShipmentGroupId'
--
-- * 'oslirShipmentInfos'
--
-- * 'oslirLineItems'
--
-- * 'oslirOperationId'
ordersShipLineItemsRequest
    :: OrdersShipLineItemsRequest
ordersShipLineItemsRequest =
  OrdersShipLineItemsRequest'
    { _oslirShipmentGroupId = Nothing
    , _oslirShipmentInfos = Nothing
    , _oslirLineItems = Nothing
    , _oslirOperationId = Nothing
    }


-- | ID of the shipment group. Required for orders that use the orderinvoices
-- service.
oslirShipmentGroupId :: Lens' OrdersShipLineItemsRequest (Maybe Text)
oslirShipmentGroupId
  = lens _oslirShipmentGroupId
      (\ s a -> s{_oslirShipmentGroupId = a})

-- | Shipment information. This field is repeated because a single line item
-- can be shipped in several packages (and have several tracking IDs).
oslirShipmentInfos :: Lens' OrdersShipLineItemsRequest [OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo]
oslirShipmentInfos
  = lens _oslirShipmentInfos
      (\ s a -> s{_oslirShipmentInfos = a})
      . _Default
      . _Coerce

-- | Line items to ship.
oslirLineItems :: Lens' OrdersShipLineItemsRequest [OrderShipmentLineItemShipment]
oslirLineItems
  = lens _oslirLineItems
      (\ s a -> s{_oslirLineItems = a})
      . _Default
      . _Coerce

-- | The ID of the operation. Unique across all operations for a given order.
oslirOperationId :: Lens' OrdersShipLineItemsRequest (Maybe Text)
oslirOperationId
  = lens _oslirOperationId
      (\ s a -> s{_oslirOperationId = a})

instance FromJSON OrdersShipLineItemsRequest where
        parseJSON
          = withObject "OrdersShipLineItemsRequest"
              (\ o ->
                 OrdersShipLineItemsRequest' <$>
                   (o .:? "shipmentGroupId") <*>
                     (o .:? "shipmentInfos" .!= mempty)
                     <*> (o .:? "lineItems" .!= mempty)
                     <*> (o .:? "operationId"))

instance ToJSON OrdersShipLineItemsRequest where
        toJSON OrdersShipLineItemsRequest'{..}
          = object
              (catMaybes
                 [("shipmentGroupId" .=) <$> _oslirShipmentGroupId,
                  ("shipmentInfos" .=) <$> _oslirShipmentInfos,
                  ("lineItems" .=) <$> _oslirLineItems,
                  ("operationId" .=) <$> _oslirOperationId])

--
-- /See:/ 'orderCustomerLoyaltyInfo' smart constructor.
data OrderCustomerLoyaltyInfo =
  OrderCustomerLoyaltyInfo'
    { _ocliName :: !(Maybe Text)
    , _ocliLoyaltyNumber :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderCustomerLoyaltyInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocliName'
--
-- * 'ocliLoyaltyNumber'
orderCustomerLoyaltyInfo
    :: OrderCustomerLoyaltyInfo
orderCustomerLoyaltyInfo =
  OrderCustomerLoyaltyInfo' {_ocliName = Nothing, _ocliLoyaltyNumber = Nothing}


-- | Name of card\/membership holder, this field will be populated when
ocliName :: Lens' OrderCustomerLoyaltyInfo (Maybe Text)
ocliName = lens _ocliName (\ s a -> s{_ocliName = a})

-- | The loyalty card\/membership number.
ocliLoyaltyNumber :: Lens' OrderCustomerLoyaltyInfo (Maybe Text)
ocliLoyaltyNumber
  = lens _ocliLoyaltyNumber
      (\ s a -> s{_ocliLoyaltyNumber = a})

instance FromJSON OrderCustomerLoyaltyInfo where
        parseJSON
          = withObject "OrderCustomerLoyaltyInfo"
              (\ o ->
                 OrderCustomerLoyaltyInfo' <$>
                   (o .:? "name") <*> (o .:? "loyaltyNumber"))

instance ToJSON OrderCustomerLoyaltyInfo where
        toJSON OrderCustomerLoyaltyInfo'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _ocliName,
                  ("loyaltyNumber" .=) <$> _ocliLoyaltyNumber])

--
-- /See:/ 'ordersRefundOrderResponse' smart constructor.
data OrdersRefundOrderResponse =
  OrdersRefundOrderResponse'
    { _ororKind :: !(Maybe Text)
    , _ororExecutionStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersRefundOrderResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ororKind'
--
-- * 'ororExecutionStatus'
ordersRefundOrderResponse
    :: OrdersRefundOrderResponse
ordersRefundOrderResponse =
  OrdersRefundOrderResponse'
    {_ororKind = Nothing, _ororExecutionStatus = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersRefundOrderResponse\".
ororKind :: Lens' OrdersRefundOrderResponse (Maybe Text)
ororKind = lens _ororKind (\ s a -> s{_ororKind = a})

-- | The status of the execution. Acceptable values are: - \"\`duplicate\`\"
-- - \"\`executed\`\"
ororExecutionStatus :: Lens' OrdersRefundOrderResponse (Maybe Text)
ororExecutionStatus
  = lens _ororExecutionStatus
      (\ s a -> s{_ororExecutionStatus = a})

instance FromJSON OrdersRefundOrderResponse where
        parseJSON
          = withObject "OrdersRefundOrderResponse"
              (\ o ->
                 OrdersRefundOrderResponse' <$>
                   (o .:? "kind") <*> (o .:? "executionStatus"))

instance ToJSON OrdersRefundOrderResponse where
        toJSON OrdersRefundOrderResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _ororKind,
                  ("executionStatus" .=) <$> _ororExecutionStatus])

-- | Response for listing account return carriers.
--
-- /See:/ 'listAccountReturnCarrierResponse' smart constructor.
newtype ListAccountReturnCarrierResponse =
  ListAccountReturnCarrierResponse'
    { _larcrAccountReturnCarriers :: Maybe [AccountReturnCarrier]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListAccountReturnCarrierResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larcrAccountReturnCarriers'
listAccountReturnCarrierResponse
    :: ListAccountReturnCarrierResponse
listAccountReturnCarrierResponse =
  ListAccountReturnCarrierResponse' {_larcrAccountReturnCarriers = Nothing}


-- | List of all available account return carriers for the merchant.
larcrAccountReturnCarriers :: Lens' ListAccountReturnCarrierResponse [AccountReturnCarrier]
larcrAccountReturnCarriers
  = lens _larcrAccountReturnCarriers
      (\ s a -> s{_larcrAccountReturnCarriers = a})
      . _Default
      . _Coerce

instance FromJSON ListAccountReturnCarrierResponse
         where
        parseJSON
          = withObject "ListAccountReturnCarrierResponse"
              (\ o ->
                 ListAccountReturnCarrierResponse' <$>
                   (o .:? "accountReturnCarriers" .!= mempty))

instance ToJSON ListAccountReturnCarrierResponse
         where
        toJSON ListAccountReturnCarrierResponse'{..}
          = object
              (catMaybes
                 [("accountReturnCarriers" .=) <$>
                    _larcrAccountReturnCarriers])

--
-- /See:/ 'orderreturnsListResponse' smart constructor.
data OrderreturnsListResponse =
  OrderreturnsListResponse'
    { _olrNextPageToken :: !(Maybe Text)
    , _olrKind :: !(Maybe Text)
    , _olrResources :: !(Maybe [MerchantOrderReturn])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderreturnsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olrNextPageToken'
--
-- * 'olrKind'
--
-- * 'olrResources'
orderreturnsListResponse
    :: OrderreturnsListResponse
orderreturnsListResponse =
  OrderreturnsListResponse'
    {_olrNextPageToken = Nothing, _olrKind = Nothing, _olrResources = Nothing}


-- | The token for the retrieval of the next page of returns.
olrNextPageToken :: Lens' OrderreturnsListResponse (Maybe Text)
olrNextPageToken
  = lens _olrNextPageToken
      (\ s a -> s{_olrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#orderreturnsListResponse\".
olrKind :: Lens' OrderreturnsListResponse (Maybe Text)
olrKind = lens _olrKind (\ s a -> s{_olrKind = a})

olrResources :: Lens' OrderreturnsListResponse [MerchantOrderReturn]
olrResources
  = lens _olrResources (\ s a -> s{_olrResources = a})
      . _Default
      . _Coerce

instance FromJSON OrderreturnsListResponse where
        parseJSON
          = withObject "OrderreturnsListResponse"
              (\ o ->
                 OrderreturnsListResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "kind") <*>
                     (o .:? "resources" .!= mempty))

instance ToJSON OrderreturnsListResponse where
        toJSON OrderreturnsListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _olrNextPageToken,
                  ("kind" .=) <$> _olrKind,
                  ("resources" .=) <$> _olrResources])

--
-- /See:/ 'ordersCustomBatchRequestEntryRefundItemShipping' smart constructor.
data OrdersCustomBatchRequestEntryRefundItemShipping =
  OrdersCustomBatchRequestEntryRefundItemShipping'
    { _ocbrerisAmount :: !(Maybe Price)
    , _ocbrerisFullRefund :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersCustomBatchRequestEntryRefundItemShipping' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocbrerisAmount'
--
-- * 'ocbrerisFullRefund'
ordersCustomBatchRequestEntryRefundItemShipping
    :: OrdersCustomBatchRequestEntryRefundItemShipping
ordersCustomBatchRequestEntryRefundItemShipping =
  OrdersCustomBatchRequestEntryRefundItemShipping'
    {_ocbrerisAmount = Nothing, _ocbrerisFullRefund = Nothing}


-- | The amount that is refunded. If this is not the first refund for the
-- shipment, this should be the newly refunded amount.
ocbrerisAmount :: Lens' OrdersCustomBatchRequestEntryRefundItemShipping (Maybe Price)
ocbrerisAmount
  = lens _ocbrerisAmount
      (\ s a -> s{_ocbrerisAmount = a})

-- | If set to true, all shipping costs for the order will be refunded. If
-- this is true, amount should not be provided and will be ignored. If set
-- to false, submit the amount of the partial shipping refund, excluding
-- the shipping tax. The shipping tax is calculated and handled on
-- Google\'s side.
ocbrerisFullRefund :: Lens' OrdersCustomBatchRequestEntryRefundItemShipping (Maybe Bool)
ocbrerisFullRefund
  = lens _ocbrerisFullRefund
      (\ s a -> s{_ocbrerisFullRefund = a})

instance FromJSON
           OrdersCustomBatchRequestEntryRefundItemShipping
         where
        parseJSON
          = withObject
              "OrdersCustomBatchRequestEntryRefundItemShipping"
              (\ o ->
                 OrdersCustomBatchRequestEntryRefundItemShipping' <$>
                   (o .:? "amount") <*> (o .:? "fullRefund"))

instance ToJSON
           OrdersCustomBatchRequestEntryRefundItemShipping
         where
        toJSON
          OrdersCustomBatchRequestEntryRefundItemShipping'{..}
          = object
              (catMaybes
                 [("amount" .=) <$> _ocbrerisAmount,
                  ("fullRefund" .=) <$> _ocbrerisFullRefund])

--
-- /See:/ 'accountsCustomBatchResponse' smart constructor.
data AccountsCustomBatchResponse =
  AccountsCustomBatchResponse'
    { _acbrcEntries :: !(Maybe [AccountsCustomBatchResponseEntry])
    , _acbrcKind :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsCustomBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acbrcEntries'
--
-- * 'acbrcKind'
accountsCustomBatchResponse
    :: AccountsCustomBatchResponse
accountsCustomBatchResponse =
  AccountsCustomBatchResponse' {_acbrcEntries = Nothing, _acbrcKind = Nothing}


-- | The result of the execution of the batch requests.
acbrcEntries :: Lens' AccountsCustomBatchResponse [AccountsCustomBatchResponseEntry]
acbrcEntries
  = lens _acbrcEntries (\ s a -> s{_acbrcEntries = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#accountsCustomBatchResponse\".
acbrcKind :: Lens' AccountsCustomBatchResponse (Maybe Text)
acbrcKind
  = lens _acbrcKind (\ s a -> s{_acbrcKind = a})

instance FromJSON AccountsCustomBatchResponse where
        parseJSON
          = withObject "AccountsCustomBatchResponse"
              (\ o ->
                 AccountsCustomBatchResponse' <$>
                   (o .:? "entries" .!= mempty) <*> (o .:? "kind"))

instance ToJSON AccountsCustomBatchResponse where
        toJSON AccountsCustomBatchResponse'{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _acbrcEntries,
                  ("kind" .=) <$> _acbrcKind])

--
-- /See:/ 'returnPolicySeasonalOverride' smart constructor.
data ReturnPolicySeasonalOverride =
  ReturnPolicySeasonalOverride'
    { _rpsoEndDate :: !(Maybe Text)
    , _rpsoStartDate :: !(Maybe Text)
    , _rpsoName :: !(Maybe Text)
    , _rpsoPolicy :: !(Maybe ReturnPolicyPolicy)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReturnPolicySeasonalOverride' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpsoEndDate'
--
-- * 'rpsoStartDate'
--
-- * 'rpsoName'
--
-- * 'rpsoPolicy'
returnPolicySeasonalOverride
    :: ReturnPolicySeasonalOverride
returnPolicySeasonalOverride =
  ReturnPolicySeasonalOverride'
    { _rpsoEndDate = Nothing
    , _rpsoStartDate = Nothing
    , _rpsoName = Nothing
    , _rpsoPolicy = Nothing
    }


-- | Required. Last day on which the override applies. In ISO 8601 format.
rpsoEndDate :: Lens' ReturnPolicySeasonalOverride (Maybe Text)
rpsoEndDate
  = lens _rpsoEndDate (\ s a -> s{_rpsoEndDate = a})

-- | Required. First day on which the override applies. In ISO 8601 format.
rpsoStartDate :: Lens' ReturnPolicySeasonalOverride (Maybe Text)
rpsoStartDate
  = lens _rpsoStartDate
      (\ s a -> s{_rpsoStartDate = a})

-- | Required. The name of the seasonal override as shown in Merchant Center.
rpsoName :: Lens' ReturnPolicySeasonalOverride (Maybe Text)
rpsoName = lens _rpsoName (\ s a -> s{_rpsoName = a})

-- | Required. The policy which is in effect during that time.
rpsoPolicy :: Lens' ReturnPolicySeasonalOverride (Maybe ReturnPolicyPolicy)
rpsoPolicy
  = lens _rpsoPolicy (\ s a -> s{_rpsoPolicy = a})

instance FromJSON ReturnPolicySeasonalOverride where
        parseJSON
          = withObject "ReturnPolicySeasonalOverride"
              (\ o ->
                 ReturnPolicySeasonalOverride' <$>
                   (o .:? "endDate") <*> (o .:? "startDate") <*>
                     (o .:? "name")
                     <*> (o .:? "policy"))

instance ToJSON ReturnPolicySeasonalOverride where
        toJSON ReturnPolicySeasonalOverride'{..}
          = object
              (catMaybes
                 [("endDate" .=) <$> _rpsoEndDate,
                  ("startDate" .=) <$> _rpsoStartDate,
                  ("name" .=) <$> _rpsoName,
                  ("policy" .=) <$> _rpsoPolicy])

--
-- /See:/ 'ordersUpdateLineItemShippingDetailsRequest' smart constructor.
data OrdersUpdateLineItemShippingDetailsRequest =
  OrdersUpdateLineItemShippingDetailsRequest'
    { _oulisdrShipByDate :: !(Maybe Text)
    , _oulisdrLineItemId :: !(Maybe Text)
    , _oulisdrDeliverByDate :: !(Maybe Text)
    , _oulisdrOperationId :: !(Maybe Text)
    , _oulisdrProductId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersUpdateLineItemShippingDetailsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oulisdrShipByDate'
--
-- * 'oulisdrLineItemId'
--
-- * 'oulisdrDeliverByDate'
--
-- * 'oulisdrOperationId'
--
-- * 'oulisdrProductId'
ordersUpdateLineItemShippingDetailsRequest
    :: OrdersUpdateLineItemShippingDetailsRequest
ordersUpdateLineItemShippingDetailsRequest =
  OrdersUpdateLineItemShippingDetailsRequest'
    { _oulisdrShipByDate = Nothing
    , _oulisdrLineItemId = Nothing
    , _oulisdrDeliverByDate = Nothing
    , _oulisdrOperationId = Nothing
    , _oulisdrProductId = Nothing
    }


-- | Updated ship by date, in ISO 8601 format. If not specified only deliver
-- by date is updated. Provided date should be within 1 year timeframe and
-- can not be a date in the past.
oulisdrShipByDate :: Lens' OrdersUpdateLineItemShippingDetailsRequest (Maybe Text)
oulisdrShipByDate
  = lens _oulisdrShipByDate
      (\ s a -> s{_oulisdrShipByDate = a})

-- | The ID of the line item to set metadata. Either lineItemId or productId
-- is required.
oulisdrLineItemId :: Lens' OrdersUpdateLineItemShippingDetailsRequest (Maybe Text)
oulisdrLineItemId
  = lens _oulisdrLineItemId
      (\ s a -> s{_oulisdrLineItemId = a})

-- | Updated delivery by date, in ISO 8601 format. If not specified only ship
-- by date is updated. Provided date should be within 1 year timeframe and
-- can not be a date in the past.
oulisdrDeliverByDate :: Lens' OrdersUpdateLineItemShippingDetailsRequest (Maybe Text)
oulisdrDeliverByDate
  = lens _oulisdrDeliverByDate
      (\ s a -> s{_oulisdrDeliverByDate = a})

-- | The ID of the operation. Unique across all operations for a given order.
oulisdrOperationId :: Lens' OrdersUpdateLineItemShippingDetailsRequest (Maybe Text)
oulisdrOperationId
  = lens _oulisdrOperationId
      (\ s a -> s{_oulisdrOperationId = a})

-- | The ID of the product to set metadata. This is the REST ID used in the
-- products service. Either lineItemId or productId is required.
oulisdrProductId :: Lens' OrdersUpdateLineItemShippingDetailsRequest (Maybe Text)
oulisdrProductId
  = lens _oulisdrProductId
      (\ s a -> s{_oulisdrProductId = a})

instance FromJSON
           OrdersUpdateLineItemShippingDetailsRequest
         where
        parseJSON
          = withObject
              "OrdersUpdateLineItemShippingDetailsRequest"
              (\ o ->
                 OrdersUpdateLineItemShippingDetailsRequest' <$>
                   (o .:? "shipByDate") <*> (o .:? "lineItemId") <*>
                     (o .:? "deliverByDate")
                     <*> (o .:? "operationId")
                     <*> (o .:? "productId"))

instance ToJSON
           OrdersUpdateLineItemShippingDetailsRequest
         where
        toJSON
          OrdersUpdateLineItemShippingDetailsRequest'{..}
          = object
              (catMaybes
                 [("shipByDate" .=) <$> _oulisdrShipByDate,
                  ("lineItemId" .=) <$> _oulisdrLineItemId,
                  ("deliverByDate" .=) <$> _oulisdrDeliverByDate,
                  ("operationId" .=) <$> _oulisdrOperationId,
                  ("productId" .=) <$> _oulisdrProductId])

-- | The collection message.
--
-- /See:/ 'collection' smart constructor.
data Collection =
  Collection'
    { _cCustomLabel1 :: !(Maybe Text)
    , _cImageLink :: !(Maybe [Text])
    , _cCustomLabel0 :: !(Maybe Text)
    , _cLink :: !(Maybe Text)
    , _cFeaturedProduct :: !(Maybe [CollectionFeaturedProduct])
    , _cProductCountry :: !(Maybe Text)
    , _cCustomLabel3 :: !(Maybe Text)
    , _cHeadline :: !(Maybe [Text])
    , _cCustomLabel2 :: !(Maybe Text)
    , _cLanguage :: !(Maybe Text)
    , _cId :: !(Maybe Text)
    , _cMobileLink :: !(Maybe Text)
    , _cCustomLabel4 :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Collection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cCustomLabel1'
--
-- * 'cImageLink'
--
-- * 'cCustomLabel0'
--
-- * 'cLink'
--
-- * 'cFeaturedProduct'
--
-- * 'cProductCountry'
--
-- * 'cCustomLabel3'
--
-- * 'cHeadline'
--
-- * 'cCustomLabel2'
--
-- * 'cLanguage'
--
-- * 'cId'
--
-- * 'cMobileLink'
--
-- * 'cCustomLabel4'
collection
    :: Collection
collection =
  Collection'
    { _cCustomLabel1 = Nothing
    , _cImageLink = Nothing
    , _cCustomLabel0 = Nothing
    , _cLink = Nothing
    , _cFeaturedProduct = Nothing
    , _cProductCountry = Nothing
    , _cCustomLabel3 = Nothing
    , _cHeadline = Nothing
    , _cCustomLabel2 = Nothing
    , _cLanguage = Nothing
    , _cId = Nothing
    , _cMobileLink = Nothing
    , _cCustomLabel4 = Nothing
    }


-- | Label that you assign to a collection to help organize bidding and
-- reporting in Shopping campaigns.
cCustomLabel1 :: Lens' Collection (Maybe Text)
cCustomLabel1
  = lens _cCustomLabel1
      (\ s a -> s{_cCustomLabel1 = a})

-- | The URL of a collection’s image. [image_link
-- attribute](https:\/\/support.google.com\/merchants\/answer\/9703236)
cImageLink :: Lens' Collection [Text]
cImageLink
  = lens _cImageLink (\ s a -> s{_cImageLink = a}) .
      _Default
      . _Coerce

-- | Label that you assign to a collection to help organize bidding and
-- reporting in Shopping campaigns. [Custom
-- label](https:\/\/support.google.com\/merchants\/answer\/9674217)
cCustomLabel0 :: Lens' Collection (Maybe Text)
cCustomLabel0
  = lens _cCustomLabel0
      (\ s a -> s{_cCustomLabel0 = a})

-- | A collection’s landing page. URL directly linking to your collection\'s
-- page on your website. [link
-- attribute](https:\/\/support.google.com\/merchants\/answer\/9673983)
cLink :: Lens' Collection (Maybe Text)
cLink = lens _cLink (\ s a -> s{_cLink = a})

-- | This identifies one or more products associated with the collection.
-- Used as a lookup to the corresponding product ID in your product feeds.
-- Provide a maximum of 100 featuredProduct (for collections). Provide up
-- to 10 featuredProduct (for Shoppable Images only) with ID and X and Y
-- coordinates. [featured_product
-- attribute](https:\/\/support.google.com\/merchants\/answer\/9703736)
cFeaturedProduct :: Lens' Collection [CollectionFeaturedProduct]
cFeaturedProduct
  = lens _cFeaturedProduct
      (\ s a -> s{_cFeaturedProduct = a})
      . _Default
      . _Coerce

-- | [product_country
-- attribute](https:\/\/support.google.com\/merchants\/answer\/9674155)
cProductCountry :: Lens' Collection (Maybe Text)
cProductCountry
  = lens _cProductCountry
      (\ s a -> s{_cProductCountry = a})

-- | Label that you assign to a collection to help organize bidding and
-- reporting in Shopping campaigns.
cCustomLabel3 :: Lens' Collection (Maybe Text)
cCustomLabel3
  = lens _cCustomLabel3
      (\ s a -> s{_cCustomLabel3 = a})

-- | Your collection\'s name. [headline
-- attribute](https:\/\/support.google.com\/merchants\/answer\/9673580)
cHeadline :: Lens' Collection [Text]
cHeadline
  = lens _cHeadline (\ s a -> s{_cHeadline = a}) .
      _Default
      . _Coerce

-- | Label that you assign to a collection to help organize bidding and
-- reporting in Shopping campaigns.
cCustomLabel2 :: Lens' Collection (Maybe Text)
cCustomLabel2
  = lens _cCustomLabel2
      (\ s a -> s{_cCustomLabel2 = a})

-- | The language of a collection and the language of any featured products
-- linked to the collection. [language
-- attribute](https:\/\/support.google.com\/merchants\/answer\/9673781)
cLanguage :: Lens' Collection (Maybe Text)
cLanguage
  = lens _cLanguage (\ s a -> s{_cLanguage = a})

-- | Required. The REST ID of the collection. Content API methods that
-- operate on collections take this as their collectionId parameter. The
-- REST ID for a collection is of the form collectionId. [id
-- attribute](https:\/\/support.google.com\/merchants\/answer\/9649290)
cId :: Lens' Collection (Maybe Text)
cId = lens _cId (\ s a -> s{_cId = a})

-- | A collection’s mobile-optimized landing page when you have a different
-- URL for mobile and desktop traffic. [mobile_link
-- attribute](https:\/\/support.google.com\/merchants\/answer\/9646123)
cMobileLink :: Lens' Collection (Maybe Text)
cMobileLink
  = lens _cMobileLink (\ s a -> s{_cMobileLink = a})

-- | Label that you assign to a collection to help organize bidding and
-- reporting in Shopping campaigns.
cCustomLabel4 :: Lens' Collection (Maybe Text)
cCustomLabel4
  = lens _cCustomLabel4
      (\ s a -> s{_cCustomLabel4 = a})

instance FromJSON Collection where
        parseJSON
          = withObject "Collection"
              (\ o ->
                 Collection' <$>
                   (o .:? "customLabel1") <*>
                     (o .:? "imageLink" .!= mempty)
                     <*> (o .:? "customLabel0")
                     <*> (o .:? "link")
                     <*> (o .:? "featuredProduct" .!= mempty)
                     <*> (o .:? "productCountry")
                     <*> (o .:? "customLabel3")
                     <*> (o .:? "headline" .!= mempty)
                     <*> (o .:? "customLabel2")
                     <*> (o .:? "language")
                     <*> (o .:? "id")
                     <*> (o .:? "mobileLink")
                     <*> (o .:? "customLabel4"))

instance ToJSON Collection where
        toJSON Collection'{..}
          = object
              (catMaybes
                 [("customLabel1" .=) <$> _cCustomLabel1,
                  ("imageLink" .=) <$> _cImageLink,
                  ("customLabel0" .=) <$> _cCustomLabel0,
                  ("link" .=) <$> _cLink,
                  ("featuredProduct" .=) <$> _cFeaturedProduct,
                  ("productCountry" .=) <$> _cProductCountry,
                  ("customLabel3" .=) <$> _cCustomLabel3,
                  ("headline" .=) <$> _cHeadline,
                  ("customLabel2" .=) <$> _cCustomLabel2,
                  ("language" .=) <$> _cLanguage, ("id" .=) <$> _cId,
                  ("mobileLink" .=) <$> _cMobileLink,
                  ("customLabel4" .=) <$> _cCustomLabel4])

-- | Order return. Production access (all methods) requires the order manager
-- role. Sandbox access does not.
--
-- /See:/ 'merchantOrderReturn' smart constructor.
data MerchantOrderReturn =
  MerchantOrderReturn'
    { _morReturnPricingInfo :: !(Maybe ReturnPricingInfo)
    , _morReturnShipments :: !(Maybe [ReturnShipment])
    , _morMerchantOrderId :: !(Maybe Text)
    , _morReturnItems :: !(Maybe [MerchantOrderReturnItem])
    , _morCreationDate :: !(Maybe Text)
    , _morOrderId :: !(Maybe Text)
    , _morOrderReturnId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MerchantOrderReturn' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'morReturnPricingInfo'
--
-- * 'morReturnShipments'
--
-- * 'morMerchantOrderId'
--
-- * 'morReturnItems'
--
-- * 'morCreationDate'
--
-- * 'morOrderId'
--
-- * 'morOrderReturnId'
merchantOrderReturn
    :: MerchantOrderReturn
merchantOrderReturn =
  MerchantOrderReturn'
    { _morReturnPricingInfo = Nothing
    , _morReturnShipments = Nothing
    , _morMerchantOrderId = Nothing
    , _morReturnItems = Nothing
    , _morCreationDate = Nothing
    , _morOrderId = Nothing
    , _morOrderReturnId = Nothing
    }


-- | Information about shipping costs.
morReturnPricingInfo :: Lens' MerchantOrderReturn (Maybe ReturnPricingInfo)
morReturnPricingInfo
  = lens _morReturnPricingInfo
      (\ s a -> s{_morReturnPricingInfo = a})

-- | Shipments of the return.
morReturnShipments :: Lens' MerchantOrderReturn [ReturnShipment]
morReturnShipments
  = lens _morReturnShipments
      (\ s a -> s{_morReturnShipments = a})
      . _Default
      . _Coerce

-- | Merchant defined order ID.
morMerchantOrderId :: Lens' MerchantOrderReturn (Maybe Text)
morMerchantOrderId
  = lens _morMerchantOrderId
      (\ s a -> s{_morMerchantOrderId = a})

-- | Items of the return.
morReturnItems :: Lens' MerchantOrderReturn [MerchantOrderReturnItem]
morReturnItems
  = lens _morReturnItems
      (\ s a -> s{_morReturnItems = a})
      . _Default
      . _Coerce

-- | The date of creation of the return, in ISO 8601 format.
morCreationDate :: Lens' MerchantOrderReturn (Maybe Text)
morCreationDate
  = lens _morCreationDate
      (\ s a -> s{_morCreationDate = a})

-- | Google order ID.
morOrderId :: Lens' MerchantOrderReturn (Maybe Text)
morOrderId
  = lens _morOrderId (\ s a -> s{_morOrderId = a})

-- | Order return ID generated by Google.
morOrderReturnId :: Lens' MerchantOrderReturn (Maybe Text)
morOrderReturnId
  = lens _morOrderReturnId
      (\ s a -> s{_morOrderReturnId = a})

instance FromJSON MerchantOrderReturn where
        parseJSON
          = withObject "MerchantOrderReturn"
              (\ o ->
                 MerchantOrderReturn' <$>
                   (o .:? "returnPricingInfo") <*>
                     (o .:? "returnShipments" .!= mempty)
                     <*> (o .:? "merchantOrderId")
                     <*> (o .:? "returnItems" .!= mempty)
                     <*> (o .:? "creationDate")
                     <*> (o .:? "orderId")
                     <*> (o .:? "orderReturnId"))

instance ToJSON MerchantOrderReturn where
        toJSON MerchantOrderReturn'{..}
          = object
              (catMaybes
                 [("returnPricingInfo" .=) <$> _morReturnPricingInfo,
                  ("returnShipments" .=) <$> _morReturnShipments,
                  ("merchantOrderId" .=) <$> _morMerchantOrderId,
                  ("returnItems" .=) <$> _morReturnItems,
                  ("creationDate" .=) <$> _morCreationDate,
                  ("orderId" .=) <$> _morOrderId,
                  ("orderReturnId" .=) <$> _morOrderReturnId])

--
-- /See:/ 'productTax' smart constructor.
data ProductTax =
  ProductTax'
    { _ptTaxShip :: !(Maybe Bool)
    , _ptCountry :: !(Maybe Text)
    , _ptPostalCode :: !(Maybe Text)
    , _ptRate :: !(Maybe (Textual Double))
    , _ptRegion :: !(Maybe Text)
    , _ptLocationId :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductTax' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptTaxShip'
--
-- * 'ptCountry'
--
-- * 'ptPostalCode'
--
-- * 'ptRate'
--
-- * 'ptRegion'
--
-- * 'ptLocationId'
productTax
    :: ProductTax
productTax =
  ProductTax'
    { _ptTaxShip = Nothing
    , _ptCountry = Nothing
    , _ptPostalCode = Nothing
    , _ptRate = Nothing
    , _ptRegion = Nothing
    , _ptLocationId = Nothing
    }


-- | Should be set to true if tax is charged on shipping.
ptTaxShip :: Lens' ProductTax (Maybe Bool)
ptTaxShip
  = lens _ptTaxShip (\ s a -> s{_ptTaxShip = a})

-- | The country within which the item is taxed, specified as a CLDR
-- territory code.
ptCountry :: Lens' ProductTax (Maybe Text)
ptCountry
  = lens _ptCountry (\ s a -> s{_ptCountry = a})

-- | The postal code range that the tax rate applies to, represented by a ZIP
-- code, a ZIP code prefix using * wildcard, a range between two ZIP codes
-- or two ZIP code prefixes of equal length. Examples: 94114, 94*,
-- 94002-95460, 94*-95*.
ptPostalCode :: Lens' ProductTax (Maybe Text)
ptPostalCode
  = lens _ptPostalCode (\ s a -> s{_ptPostalCode = a})

-- | The percentage of tax rate that applies to the item price.
ptRate :: Lens' ProductTax (Maybe Double)
ptRate
  = lens _ptRate (\ s a -> s{_ptRate = a}) .
      mapping _Coerce

-- | The geographic region to which the tax rate applies.
ptRegion :: Lens' ProductTax (Maybe Text)
ptRegion = lens _ptRegion (\ s a -> s{_ptRegion = a})

-- | The numeric ID of a location that the tax rate applies to as defined in
-- the AdWords API.
ptLocationId :: Lens' ProductTax (Maybe Int64)
ptLocationId
  = lens _ptLocationId (\ s a -> s{_ptLocationId = a})
      . mapping _Coerce

instance FromJSON ProductTax where
        parseJSON
          = withObject "ProductTax"
              (\ o ->
                 ProductTax' <$>
                   (o .:? "taxShip") <*> (o .:? "country") <*>
                     (o .:? "postalCode")
                     <*> (o .:? "rate")
                     <*> (o .:? "region")
                     <*> (o .:? "locationId"))

instance ToJSON ProductTax where
        toJSON ProductTax'{..}
          = object
              (catMaybes
                 [("taxShip" .=) <$> _ptTaxShip,
                  ("country" .=) <$> _ptCountry,
                  ("postalCode" .=) <$> _ptPostalCode,
                  ("rate" .=) <$> _ptRate, ("region" .=) <$> _ptRegion,
                  ("locationId" .=) <$> _ptLocationId])

--
-- /See:/ 'posCustomBatchRequestEntry' smart constructor.
data PosCustomBatchRequestEntry =
  PosCustomBatchRequestEntry'
    { _pcbreMerchantId :: !(Maybe (Textual Word64))
    , _pcbreStoreCode :: !(Maybe Text)
    , _pcbreTargetMerchantId :: !(Maybe (Textual Word64))
    , _pcbreMethod :: !(Maybe Text)
    , _pcbreStore :: !(Maybe PosStore)
    , _pcbreInventory :: !(Maybe PosInventory)
    , _pcbreSale :: !(Maybe PosSale)
    , _pcbreBatchId :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PosCustomBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcbreMerchantId'
--
-- * 'pcbreStoreCode'
--
-- * 'pcbreTargetMerchantId'
--
-- * 'pcbreMethod'
--
-- * 'pcbreStore'
--
-- * 'pcbreInventory'
--
-- * 'pcbreSale'
--
-- * 'pcbreBatchId'
posCustomBatchRequestEntry
    :: PosCustomBatchRequestEntry
posCustomBatchRequestEntry =
  PosCustomBatchRequestEntry'
    { _pcbreMerchantId = Nothing
    , _pcbreStoreCode = Nothing
    , _pcbreTargetMerchantId = Nothing
    , _pcbreMethod = Nothing
    , _pcbreStore = Nothing
    , _pcbreInventory = Nothing
    , _pcbreSale = Nothing
    , _pcbreBatchId = Nothing
    }


-- | The ID of the POS data provider.
pcbreMerchantId :: Lens' PosCustomBatchRequestEntry (Maybe Word64)
pcbreMerchantId
  = lens _pcbreMerchantId
      (\ s a -> s{_pcbreMerchantId = a})
      . mapping _Coerce

-- | The store code. This should be set only if the method is \`delete\` or
-- \`get\`.
pcbreStoreCode :: Lens' PosCustomBatchRequestEntry (Maybe Text)
pcbreStoreCode
  = lens _pcbreStoreCode
      (\ s a -> s{_pcbreStoreCode = a})

-- | The ID of the account for which to get\/submit data.
pcbreTargetMerchantId :: Lens' PosCustomBatchRequestEntry (Maybe Word64)
pcbreTargetMerchantId
  = lens _pcbreTargetMerchantId
      (\ s a -> s{_pcbreTargetMerchantId = a})
      . mapping _Coerce

-- | The method of the batch entry. Acceptable values are: - \"\`delete\`\" -
-- \"\`get\`\" - \"\`insert\`\" - \"\`inventory\`\" - \"\`sale\`\"
pcbreMethod :: Lens' PosCustomBatchRequestEntry (Maybe Text)
pcbreMethod
  = lens _pcbreMethod (\ s a -> s{_pcbreMethod = a})

-- | The store information to submit. This should be set only if the method
-- is \`insert\`.
pcbreStore :: Lens' PosCustomBatchRequestEntry (Maybe PosStore)
pcbreStore
  = lens _pcbreStore (\ s a -> s{_pcbreStore = a})

-- | The inventory to submit. This should be set only if the method is
-- \`inventory\`.
pcbreInventory :: Lens' PosCustomBatchRequestEntry (Maybe PosInventory)
pcbreInventory
  = lens _pcbreInventory
      (\ s a -> s{_pcbreInventory = a})

-- | The sale information to submit. This should be set only if the method is
-- \`sale\`.
pcbreSale :: Lens' PosCustomBatchRequestEntry (Maybe PosSale)
pcbreSale
  = lens _pcbreSale (\ s a -> s{_pcbreSale = a})

-- | An entry ID, unique within the batch request.
pcbreBatchId :: Lens' PosCustomBatchRequestEntry (Maybe Word32)
pcbreBatchId
  = lens _pcbreBatchId (\ s a -> s{_pcbreBatchId = a})
      . mapping _Coerce

instance FromJSON PosCustomBatchRequestEntry where
        parseJSON
          = withObject "PosCustomBatchRequestEntry"
              (\ o ->
                 PosCustomBatchRequestEntry' <$>
                   (o .:? "merchantId") <*> (o .:? "storeCode") <*>
                     (o .:? "targetMerchantId")
                     <*> (o .:? "method")
                     <*> (o .:? "store")
                     <*> (o .:? "inventory")
                     <*> (o .:? "sale")
                     <*> (o .:? "batchId"))

instance ToJSON PosCustomBatchRequestEntry where
        toJSON PosCustomBatchRequestEntry'{..}
          = object
              (catMaybes
                 [("merchantId" .=) <$> _pcbreMerchantId,
                  ("storeCode" .=) <$> _pcbreStoreCode,
                  ("targetMerchantId" .=) <$> _pcbreTargetMerchantId,
                  ("method" .=) <$> _pcbreMethod,
                  ("store" .=) <$> _pcbreStore,
                  ("inventory" .=) <$> _pcbreInventory,
                  ("sale" .=) <$> _pcbreSale,
                  ("batchId" .=) <$> _pcbreBatchId])

--
-- /See:/ 'testOrderPickupDetails' smart constructor.
data TestOrderPickupDetails =
  TestOrderPickupDetails'
    { _topdPickupLocationType :: !(Maybe Text)
    , _topdPickupLocationAddress :: !(Maybe TestOrderAddress)
    , _topdPickupPersons :: !(Maybe [TestOrderPickupDetailsPickupPerson])
    , _topdLocationCode :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestOrderPickupDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'topdPickupLocationType'
--
-- * 'topdPickupLocationAddress'
--
-- * 'topdPickupPersons'
--
-- * 'topdLocationCode'
testOrderPickupDetails
    :: TestOrderPickupDetails
testOrderPickupDetails =
  TestOrderPickupDetails'
    { _topdPickupLocationType = Nothing
    , _topdPickupLocationAddress = Nothing
    , _topdPickupPersons = Nothing
    , _topdLocationCode = Nothing
    }


-- | Pickup location type. Acceptable values are: - \"\`locker\`\" -
-- \"\`store\`\" - \"\`curbside\`\"
topdPickupLocationType :: Lens' TestOrderPickupDetails (Maybe Text)
topdPickupLocationType
  = lens _topdPickupLocationType
      (\ s a -> s{_topdPickupLocationType = a})

-- | Required. Pickup location address.
topdPickupLocationAddress :: Lens' TestOrderPickupDetails (Maybe TestOrderAddress)
topdPickupLocationAddress
  = lens _topdPickupLocationAddress
      (\ s a -> s{_topdPickupLocationAddress = a})

-- | Required. all pickup persons set by users.
topdPickupPersons :: Lens' TestOrderPickupDetails [TestOrderPickupDetailsPickupPerson]
topdPickupPersons
  = lens _topdPickupPersons
      (\ s a -> s{_topdPickupPersons = a})
      . _Default
      . _Coerce

-- | Required. Code of the location defined by provider or merchant.
topdLocationCode :: Lens' TestOrderPickupDetails (Maybe Text)
topdLocationCode
  = lens _topdLocationCode
      (\ s a -> s{_topdLocationCode = a})

instance FromJSON TestOrderPickupDetails where
        parseJSON
          = withObject "TestOrderPickupDetails"
              (\ o ->
                 TestOrderPickupDetails' <$>
                   (o .:? "pickupLocationType") <*>
                     (o .:? "pickupLocationAddress")
                     <*> (o .:? "pickupPersons" .!= mempty)
                     <*> (o .:? "locationCode"))

instance ToJSON TestOrderPickupDetails where
        toJSON TestOrderPickupDetails'{..}
          = object
              (catMaybes
                 [("pickupLocationType" .=) <$>
                    _topdPickupLocationType,
                  ("pickupLocationAddress" .=) <$>
                    _topdPickupLocationAddress,
                  ("pickupPersons" .=) <$> _topdPickupPersons,
                  ("locationCode" .=) <$> _topdLocationCode])

--
-- /See:/ 'orderShipment' smart constructor.
data OrderShipment =
  OrderShipment'
    { _osCarrier :: !(Maybe Text)
    , _osStatus :: !(Maybe Text)
    , _osScheduledDeliveryDetails :: !(Maybe OrderShipmentScheduledDeliveryDetails)
    , _osShipmentGroupId :: !(Maybe Text)
    , _osTrackingId :: !(Maybe Text)
    , _osLineItems :: !(Maybe [OrderShipmentLineItemShipment])
    , _osId :: !(Maybe Text)
    , _osCreationDate :: !(Maybe Text)
    , _osDeliveryDate :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderShipment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osCarrier'
--
-- * 'osStatus'
--
-- * 'osScheduledDeliveryDetails'
--
-- * 'osShipmentGroupId'
--
-- * 'osTrackingId'
--
-- * 'osLineItems'
--
-- * 'osId'
--
-- * 'osCreationDate'
--
-- * 'osDeliveryDate'
orderShipment
    :: OrderShipment
orderShipment =
  OrderShipment'
    { _osCarrier = Nothing
    , _osStatus = Nothing
    , _osScheduledDeliveryDetails = Nothing
    , _osShipmentGroupId = Nothing
    , _osTrackingId = Nothing
    , _osLineItems = Nothing
    , _osId = Nothing
    , _osCreationDate = Nothing
    , _osDeliveryDate = Nothing
    }


-- | The carrier handling the shipment. For supported carriers, Google
-- includes the carrier name and tracking URL in emails to customers. For
-- select supported carriers, Google also automatically updates the
-- shipment status based on the provided shipment ID. *Note:* You can also
-- use unsupported carriers, but emails to customers will not include the
-- carrier name or tracking URL, and there will be no automatic order
-- status updates. Supported carriers for US are: - \"\`ups\`\" (United
-- Parcel Service) *automatic status updates* - \"\`usps\`\" (United States
-- Postal Service) *automatic status updates* - \"\`fedex\`\" (FedEx)
-- *automatic status updates * - \"\`dhl\`\" (DHL eCommerce) *automatic
-- status updates* (US only) - \"\`ontrac\`\" (OnTrac) *automatic status
-- updates * - \"\`dhl express\`\" (DHL Express) - \"\`deliv\`\" (Deliv) -
-- \"\`dynamex\`\" (TForce) - \"\`lasership\`\" (LaserShip) - \"\`mpx\`\"
-- (Military Parcel Xpress) - \"\`uds\`\" (United Delivery Service) -
-- \"\`efw\`\" (Estes Forwarding Worldwide) - \"\`jd logistics\`\" (JD
-- Logistics) - \"\`yunexpress\`\" (YunExpress) - \"\`china post\`\" (China
-- Post) - \"\`china ems\`\" (China Post Express Mail Service) -
-- \"\`singapore post\`\" (Singapore Post) - \"\`pos malaysia\`\" (Pos
-- Malaysia) - \"\`postnl\`\" (PostNL) - \"\`ptt\`\" (PTT Turkish Post) -
-- \"\`eub\`\" (ePacket) - \"\`chukou1\`\" (Chukou1 Logistics) -
-- \"\`bestex\`\" (Best Express) - \"\`canada post\`\" (Canada Post) -
-- \"\`purolator\`\" (Purolator) - \"\`canpar\`\" (Canpar) - \"\`india
-- post\`\" (India Post) - \"\`blue dart\`\" (Blue Dart) -
-- \"\`delhivery\`\" (Delhivery) - \"\`dtdc\`\" (DTDC) - \"\`tpc india\`\"
-- (TPC India) Supported carriers for FR are: - \"\`la poste\`\" (La Poste)
-- *automatic status updates * - \"\`colissimo\`\" (Colissimo by La Poste)
-- *automatic status updates* - \"\`ups\`\" (United Parcel Service)
-- *automatic status updates * - \"\`chronopost\`\" (Chronopost by La
-- Poste) - \"\`gls\`\" (General Logistics Systems France) - \"\`dpd\`\"
-- (DPD Group by GeoPost) - \"\`bpost\`\" (Belgian Post Group) - \"\`colis
-- prive\`\" (Colis Privé) - \"\`boxtal\`\" (Boxtal) - \"\`geodis\`\"
-- (GEODIS) - \"\`tnt\`\" (TNT) - \"\`db schenker\`\" (DB Schenker) -
-- \"\`aramex\`\" (Aramex)
osCarrier :: Lens' OrderShipment (Maybe Text)
osCarrier
  = lens _osCarrier (\ s a -> s{_osCarrier = a})

-- | The status of the shipment. Acceptable values are: - \"\`delivered\`\" -
-- \"\`readyForPickup\`\" - \"\`shipped\`\" - \"\`undeliverable\`\"
osStatus :: Lens' OrderShipment (Maybe Text)
osStatus = lens _osStatus (\ s a -> s{_osStatus = a})

-- | Delivery details of the shipment if scheduling is needed.
osScheduledDeliveryDetails :: Lens' OrderShipment (Maybe OrderShipmentScheduledDeliveryDetails)
osScheduledDeliveryDetails
  = lens _osScheduledDeliveryDetails
      (\ s a -> s{_osScheduledDeliveryDetails = a})

-- | The shipment group ID of the shipment. This is set in shiplineitems
-- request.
osShipmentGroupId :: Lens' OrderShipment (Maybe Text)
osShipmentGroupId
  = lens _osShipmentGroupId
      (\ s a -> s{_osShipmentGroupId = a})

-- | The tracking ID for the shipment.
osTrackingId :: Lens' OrderShipment (Maybe Text)
osTrackingId
  = lens _osTrackingId (\ s a -> s{_osTrackingId = a})

-- | The line items that are shipped.
osLineItems :: Lens' OrderShipment [OrderShipmentLineItemShipment]
osLineItems
  = lens _osLineItems (\ s a -> s{_osLineItems = a}) .
      _Default
      . _Coerce

-- | The ID of the shipment.
osId :: Lens' OrderShipment (Maybe Text)
osId = lens _osId (\ s a -> s{_osId = a})

-- | Date on which the shipment has been created, in ISO 8601 format.
osCreationDate :: Lens' OrderShipment (Maybe Text)
osCreationDate
  = lens _osCreationDate
      (\ s a -> s{_osCreationDate = a})

-- | Date on which the shipment has been delivered, in ISO 8601 format.
-- Present only if \`status\` is \`delivered\`
osDeliveryDate :: Lens' OrderShipment (Maybe Text)
osDeliveryDate
  = lens _osDeliveryDate
      (\ s a -> s{_osDeliveryDate = a})

instance FromJSON OrderShipment where
        parseJSON
          = withObject "OrderShipment"
              (\ o ->
                 OrderShipment' <$>
                   (o .:? "carrier") <*> (o .:? "status") <*>
                     (o .:? "scheduledDeliveryDetails")
                     <*> (o .:? "shipmentGroupId")
                     <*> (o .:? "trackingId")
                     <*> (o .:? "lineItems" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "creationDate")
                     <*> (o .:? "deliveryDate"))

instance ToJSON OrderShipment where
        toJSON OrderShipment'{..}
          = object
              (catMaybes
                 [("carrier" .=) <$> _osCarrier,
                  ("status" .=) <$> _osStatus,
                  ("scheduledDeliveryDetails" .=) <$>
                    _osScheduledDeliveryDetails,
                  ("shipmentGroupId" .=) <$> _osShipmentGroupId,
                  ("trackingId" .=) <$> _osTrackingId,
                  ("lineItems" .=) <$> _osLineItems,
                  ("id" .=) <$> _osId,
                  ("creationDate" .=) <$> _osCreationDate,
                  ("deliveryDate" .=) <$> _osDeliveryDate])

--
-- /See:/ 'accountsLinkResponse' smart constructor.
newtype AccountsLinkResponse =
  AccountsLinkResponse'
    { _alrlKind :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsLinkResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alrlKind'
accountsLinkResponse
    :: AccountsLinkResponse
accountsLinkResponse = AccountsLinkResponse' {_alrlKind = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#accountsLinkResponse\".
alrlKind :: Lens' AccountsLinkResponse (Maybe Text)
alrlKind = lens _alrlKind (\ s a -> s{_alrlKind = a})

instance FromJSON AccountsLinkResponse where
        parseJSON
          = withObject "AccountsLinkResponse"
              (\ o -> AccountsLinkResponse' <$> (o .:? "kind"))

instance ToJSON AccountsLinkResponse where
        toJSON AccountsLinkResponse'{..}
          = object (catMaybes [("kind" .=) <$> _alrlKind])

--
-- /See:/ 'orderLineItemReturnInfo' smart constructor.
data OrderLineItemReturnInfo =
  OrderLineItemReturnInfo'
    { _oliriIsReturnable :: !(Maybe Bool)
    , _oliriPolicyURL :: !(Maybe Text)
    , _oliriDaysToReturn :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderLineItemReturnInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oliriIsReturnable'
--
-- * 'oliriPolicyURL'
--
-- * 'oliriDaysToReturn'
orderLineItemReturnInfo
    :: OrderLineItemReturnInfo
orderLineItemReturnInfo =
  OrderLineItemReturnInfo'
    { _oliriIsReturnable = Nothing
    , _oliriPolicyURL = Nothing
    , _oliriDaysToReturn = Nothing
    }


-- | Required. Whether the item is returnable.
oliriIsReturnable :: Lens' OrderLineItemReturnInfo (Maybe Bool)
oliriIsReturnable
  = lens _oliriIsReturnable
      (\ s a -> s{_oliriIsReturnable = a})

-- | Required. URL of the item return policy.
oliriPolicyURL :: Lens' OrderLineItemReturnInfo (Maybe Text)
oliriPolicyURL
  = lens _oliriPolicyURL
      (\ s a -> s{_oliriPolicyURL = a})

-- | Required. How many days later the item can be returned.
oliriDaysToReturn :: Lens' OrderLineItemReturnInfo (Maybe Int32)
oliriDaysToReturn
  = lens _oliriDaysToReturn
      (\ s a -> s{_oliriDaysToReturn = a})
      . mapping _Coerce

instance FromJSON OrderLineItemReturnInfo where
        parseJSON
          = withObject "OrderLineItemReturnInfo"
              (\ o ->
                 OrderLineItemReturnInfo' <$>
                   (o .:? "isReturnable") <*> (o .:? "policyUrl") <*>
                     (o .:? "daysToReturn"))

instance ToJSON OrderLineItemReturnInfo where
        toJSON OrderLineItemReturnInfo'{..}
          = object
              (catMaybes
                 [("isReturnable" .=) <$> _oliriIsReturnable,
                  ("policyUrl" .=) <$> _oliriPolicyURL,
                  ("daysToReturn" .=) <$> _oliriDaysToReturn])

-- | Settlement transactions give a detailed breakdown of the settlement
-- report.
--
-- /See:/ 'settlementTransaction' smart constructor.
data SettlementTransaction =
  SettlementTransaction'
    { _stAmount :: !(Maybe SettlementTransactionAmount)
    , _stKind :: !(Maybe Text)
    , _stIdentifiers :: !(Maybe SettlementTransactionIdentifiers)
    , _stTransaction :: !(Maybe SettlementTransactionTransaction)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SettlementTransaction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stAmount'
--
-- * 'stKind'
--
-- * 'stIdentifiers'
--
-- * 'stTransaction'
settlementTransaction
    :: SettlementTransaction
settlementTransaction =
  SettlementTransaction'
    { _stAmount = Nothing
    , _stKind = Nothing
    , _stIdentifiers = Nothing
    , _stTransaction = Nothing
    }


-- | The amount for the transaction.
stAmount :: Lens' SettlementTransaction (Maybe SettlementTransactionAmount)
stAmount = lens _stAmount (\ s a -> s{_stAmount = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"\`content#settlementTransaction\`\"
stKind :: Lens' SettlementTransaction (Maybe Text)
stKind = lens _stKind (\ s a -> s{_stKind = a})

-- | Identifiers of the transaction.
stIdentifiers :: Lens' SettlementTransaction (Maybe SettlementTransactionIdentifiers)
stIdentifiers
  = lens _stIdentifiers
      (\ s a -> s{_stIdentifiers = a})

-- | Details of the transaction.
stTransaction :: Lens' SettlementTransaction (Maybe SettlementTransactionTransaction)
stTransaction
  = lens _stTransaction
      (\ s a -> s{_stTransaction = a})

instance FromJSON SettlementTransaction where
        parseJSON
          = withObject "SettlementTransaction"
              (\ o ->
                 SettlementTransaction' <$>
                   (o .:? "amount") <*> (o .:? "kind") <*>
                     (o .:? "identifiers")
                     <*> (o .:? "transaction"))

instance ToJSON SettlementTransaction where
        toJSON SettlementTransaction'{..}
          = object
              (catMaybes
                 [("amount" .=) <$> _stAmount,
                  ("kind" .=) <$> _stKind,
                  ("identifiers" .=) <$> _stIdentifiers,
                  ("transaction" .=) <$> _stTransaction])

--
-- /See:/ 'transitTable' smart constructor.
data TransitTable =
  TransitTable'
    { _ttTransitTimeLabels :: !(Maybe [Text])
    , _ttPostalCodeGroupNames :: !(Maybe [Text])
    , _ttRows :: !(Maybe [TransitTableTransitTimeRow])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TransitTable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttTransitTimeLabels'
--
-- * 'ttPostalCodeGroupNames'
--
-- * 'ttRows'
transitTable
    :: TransitTable
transitTable =
  TransitTable'
    { _ttTransitTimeLabels = Nothing
    , _ttPostalCodeGroupNames = Nothing
    , _ttRows = Nothing
    }


-- | A list of transit time labels. The last value can be \`\"all other
-- labels\"\`. Example: \`[\"food\", \"electronics\", \"all other
-- labels\"]\`.
ttTransitTimeLabels :: Lens' TransitTable [Text]
ttTransitTimeLabels
  = lens _ttTransitTimeLabels
      (\ s a -> s{_ttTransitTimeLabels = a})
      . _Default
      . _Coerce

-- | A list of postal group names. The last value can be \`\"all other
-- locations\"\`. Example: \`[\"zone 1\", \"zone 2\", \"all other
-- locations\"]\`. The referred postal code groups must match the delivery
-- country of the service.
ttPostalCodeGroupNames :: Lens' TransitTable [Text]
ttPostalCodeGroupNames
  = lens _ttPostalCodeGroupNames
      (\ s a -> s{_ttPostalCodeGroupNames = a})
      . _Default
      . _Coerce

ttRows :: Lens' TransitTable [TransitTableTransitTimeRow]
ttRows
  = lens _ttRows (\ s a -> s{_ttRows = a}) . _Default .
      _Coerce

instance FromJSON TransitTable where
        parseJSON
          = withObject "TransitTable"
              (\ o ->
                 TransitTable' <$>
                   (o .:? "transitTimeLabels" .!= mempty) <*>
                     (o .:? "postalCodeGroupNames" .!= mempty)
                     <*> (o .:? "rows" .!= mempty))

instance ToJSON TransitTable where
        toJSON TransitTable'{..}
          = object
              (catMaybes
                 [("transitTimeLabels" .=) <$> _ttTransitTimeLabels,
                  ("postalCodeGroupNames" .=) <$>
                    _ttPostalCodeGroupNames,
                  ("rows" .=) <$> _ttRows])

-- | Account data. After the creation of a new account it may take a few
-- minutes before it is fully operational. The methods delete, insert, and
-- update require the admin role.
--
-- /See:/ 'account' smart constructor.
data Account =
  Account'
    { _aaUsers :: !(Maybe [AccountUser])
    , _aaYouTubeChannelLinks :: !(Maybe [AccountYouTubeChannelLink])
    , _aaKind :: !(Maybe Text)
    , _aaCssId :: !(Maybe (Textual Word64))
    , _aaSellerId :: !(Maybe Text)
    , _aaName :: !(Maybe Text)
    , _aaBusinessInformation :: !(Maybe AccountBusinessInformation)
    , _aaAutomaticLabelIds :: !(Maybe [Textual Word64])
    , _aaId :: !(Maybe (Textual Word64))
    , _aaAdsLinks :: !(Maybe [AccountAdsLink])
    , _aaWebsiteURL :: !(Maybe Text)
    , _aaLabelIds :: !(Maybe [Textual Word64])
    , _aaGoogleMyBusinessLink :: !(Maybe AccountGoogleMyBusinessLink)
    , _aaAdultContent :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Account' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaUsers'
--
-- * 'aaYouTubeChannelLinks'
--
-- * 'aaKind'
--
-- * 'aaCssId'
--
-- * 'aaSellerId'
--
-- * 'aaName'
--
-- * 'aaBusinessInformation'
--
-- * 'aaAutomaticLabelIds'
--
-- * 'aaId'
--
-- * 'aaAdsLinks'
--
-- * 'aaWebsiteURL'
--
-- * 'aaLabelIds'
--
-- * 'aaGoogleMyBusinessLink'
--
-- * 'aaAdultContent'
account
    :: Account
account =
  Account'
    { _aaUsers = Nothing
    , _aaYouTubeChannelLinks = Nothing
    , _aaKind = Nothing
    , _aaCssId = Nothing
    , _aaSellerId = Nothing
    , _aaName = Nothing
    , _aaBusinessInformation = Nothing
    , _aaAutomaticLabelIds = Nothing
    , _aaId = Nothing
    , _aaAdsLinks = Nothing
    , _aaWebsiteURL = Nothing
    , _aaLabelIds = Nothing
    , _aaGoogleMyBusinessLink = Nothing
    , _aaAdultContent = Nothing
    }


-- | Users with access to the account. Every account (except for subaccounts)
-- must have at least one admin user.
aaUsers :: Lens' Account [AccountUser]
aaUsers
  = lens _aaUsers (\ s a -> s{_aaUsers = a}) . _Default
      . _Coerce

-- | Linked YouTube channels that are active or pending approval. To create a
-- new link request, add a new link with status \`active\` to the list. It
-- will remain in a \`pending\` state until approved or rejected in the YT
-- Creator Studio interface. To delete an active link, or to cancel a link
-- request, remove it from the list.
aaYouTubeChannelLinks :: Lens' Account [AccountYouTubeChannelLink]
aaYouTubeChannelLinks
  = lens _aaYouTubeChannelLinks
      (\ s a -> s{_aaYouTubeChannelLinks = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"\`content#account\`\"
aaKind :: Lens' Account (Maybe Text)
aaKind = lens _aaKind (\ s a -> s{_aaKind = a})

-- | ID of CSS the account belongs to.
aaCssId :: Lens' Account (Maybe Word64)
aaCssId
  = lens _aaCssId (\ s a -> s{_aaCssId = a}) .
      mapping _Coerce

-- | Client-specific, locally-unique, internal ID for the child account.
aaSellerId :: Lens' Account (Maybe Text)
aaSellerId
  = lens _aaSellerId (\ s a -> s{_aaSellerId = a})

-- | Required. Display name for the account.
aaName :: Lens' Account (Maybe Text)
aaName = lens _aaName (\ s a -> s{_aaName = a})

-- | The business information of the account.
aaBusinessInformation :: Lens' Account (Maybe AccountBusinessInformation)
aaBusinessInformation
  = lens _aaBusinessInformation
      (\ s a -> s{_aaBusinessInformation = a})

-- | Automatically created label IDs that are assigned to the account by CSS
-- Center.
aaAutomaticLabelIds :: Lens' Account [Word64]
aaAutomaticLabelIds
  = lens _aaAutomaticLabelIds
      (\ s a -> s{_aaAutomaticLabelIds = a})
      . _Default
      . _Coerce

-- | Required for update. Merchant Center account ID.
aaId :: Lens' Account (Maybe Word64)
aaId
  = lens _aaId (\ s a -> s{_aaId = a}) .
      mapping _Coerce

-- | Linked Ads accounts that are active or pending approval. To create a new
-- link request, add a new link with status \`active\` to the list. It will
-- remain in a \`pending\` state until approved or rejected either in the
-- Ads interface or through the AdWords API. To delete an active link, or
-- to cancel a link request, remove it from the list.
aaAdsLinks :: Lens' Account [AccountAdsLink]
aaAdsLinks
  = lens _aaAdsLinks (\ s a -> s{_aaAdsLinks = a}) .
      _Default
      . _Coerce

-- | The merchant\'s website.
aaWebsiteURL :: Lens' Account (Maybe Text)
aaWebsiteURL
  = lens _aaWebsiteURL (\ s a -> s{_aaWebsiteURL = a})

-- | Manually created label IDs that are assigned to the account by CSS.
aaLabelIds :: Lens' Account [Word64]
aaLabelIds
  = lens _aaLabelIds (\ s a -> s{_aaLabelIds = a}) .
      _Default
      . _Coerce

-- | The GMB account which is linked or in the process of being linked with
-- the Merchant Center account.
aaGoogleMyBusinessLink :: Lens' Account (Maybe AccountGoogleMyBusinessLink)
aaGoogleMyBusinessLink
  = lens _aaGoogleMyBusinessLink
      (\ s a -> s{_aaGoogleMyBusinessLink = a})

-- | Indicates whether the merchant sells adult content.
aaAdultContent :: Lens' Account (Maybe Bool)
aaAdultContent
  = lens _aaAdultContent
      (\ s a -> s{_aaAdultContent = a})

instance FromJSON Account where
        parseJSON
          = withObject "Account"
              (\ o ->
                 Account' <$>
                   (o .:? "users" .!= mempty) <*>
                     (o .:? "youtubeChannelLinks" .!= mempty)
                     <*> (o .:? "kind")
                     <*> (o .:? "cssId")
                     <*> (o .:? "sellerId")
                     <*> (o .:? "name")
                     <*> (o .:? "businessInformation")
                     <*> (o .:? "automaticLabelIds" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "adsLinks" .!= mempty)
                     <*> (o .:? "websiteUrl")
                     <*> (o .:? "labelIds" .!= mempty)
                     <*> (o .:? "googleMyBusinessLink")
                     <*> (o .:? "adultContent"))

instance ToJSON Account where
        toJSON Account'{..}
          = object
              (catMaybes
                 [("users" .=) <$> _aaUsers,
                  ("youtubeChannelLinks" .=) <$>
                    _aaYouTubeChannelLinks,
                  ("kind" .=) <$> _aaKind, ("cssId" .=) <$> _aaCssId,
                  ("sellerId" .=) <$> _aaSellerId,
                  ("name" .=) <$> _aaName,
                  ("businessInformation" .=) <$>
                    _aaBusinessInformation,
                  ("automaticLabelIds" .=) <$> _aaAutomaticLabelIds,
                  ("id" .=) <$> _aaId, ("adsLinks" .=) <$> _aaAdsLinks,
                  ("websiteUrl" .=) <$> _aaWebsiteURL,
                  ("labelIds" .=) <$> _aaLabelIds,
                  ("googleMyBusinessLink" .=) <$>
                    _aaGoogleMyBusinessLink,
                  ("adultContent" .=) <$> _aaAdultContent])

--
-- /See:/ 'shipmentTrackingInfo' smart constructor.
data ShipmentTrackingInfo =
  ShipmentTrackingInfo'
    { _stiCarrier :: !(Maybe Text)
    , _stiTrackingNumber :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ShipmentTrackingInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stiCarrier'
--
-- * 'stiTrackingNumber'
shipmentTrackingInfo
    :: ShipmentTrackingInfo
shipmentTrackingInfo =
  ShipmentTrackingInfo' {_stiCarrier = Nothing, _stiTrackingNumber = Nothing}


-- | The shipping carrier that handles the package. Acceptable values are: -
-- \"\`boxtal\`\" - \"\`bpost\`\" - \"\`chronopost\`\" - \"\`colisPrive\`\"
-- - \"\`colissimo\`\" - \"\`cxt\`\" - \"\`deliv\`\" - \"\`dhl\`\" -
-- \"\`dpd\`\" - \"\`dynamex\`\" - \"\`eCourier\`\" - \"\`easypost\`\" -
-- \"\`efw\`\" - \"\`fedex\`\" - \"\`fedexSmartpost\`\" - \"\`geodis\`\" -
-- \"\`gls\`\" - \"\`googleCourier\`\" - \"\`gsx\`\" - \"\`jdLogistics\`\"
-- - \"\`laPoste\`\" - \"\`lasership\`\" - \"\`manual\`\" - \"\`mpx\`\" -
-- \"\`onTrac\`\" - \"\`other\`\" - \"\`tnt\`\" - \"\`uds\`\" - \"\`ups\`\"
-- - \"\`usps\`\"
stiCarrier :: Lens' ShipmentTrackingInfo (Maybe Text)
stiCarrier
  = lens _stiCarrier (\ s a -> s{_stiCarrier = a})

-- | The tracking number for the package.
stiTrackingNumber :: Lens' ShipmentTrackingInfo (Maybe Text)
stiTrackingNumber
  = lens _stiTrackingNumber
      (\ s a -> s{_stiTrackingNumber = a})

instance FromJSON ShipmentTrackingInfo where
        parseJSON
          = withObject "ShipmentTrackingInfo"
              (\ o ->
                 ShipmentTrackingInfo' <$>
                   (o .:? "carrier") <*> (o .:? "trackingNumber"))

instance ToJSON ShipmentTrackingInfo where
        toJSON ShipmentTrackingInfo'{..}
          = object
              (catMaybes
                 [("carrier" .=) <$> _stiCarrier,
                  ("trackingNumber" .=) <$> _stiTrackingNumber])

--
-- /See:/ 'ordersCancelLineItemRequest' smart constructor.
data OrdersCancelLineItemRequest =
  OrdersCancelLineItemRequest'
    { _oclirQuantity :: !(Maybe (Textual Word32))
    , _oclirLineItemId :: !(Maybe Text)
    , _oclirReason :: !(Maybe Text)
    , _oclirOperationId :: !(Maybe Text)
    , _oclirProductId :: !(Maybe Text)
    , _oclirReasonText :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersCancelLineItemRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oclirQuantity'
--
-- * 'oclirLineItemId'
--
-- * 'oclirReason'
--
-- * 'oclirOperationId'
--
-- * 'oclirProductId'
--
-- * 'oclirReasonText'
ordersCancelLineItemRequest
    :: OrdersCancelLineItemRequest
ordersCancelLineItemRequest =
  OrdersCancelLineItemRequest'
    { _oclirQuantity = Nothing
    , _oclirLineItemId = Nothing
    , _oclirReason = Nothing
    , _oclirOperationId = Nothing
    , _oclirProductId = Nothing
    , _oclirReasonText = Nothing
    }


-- | The quantity to cancel.
oclirQuantity :: Lens' OrdersCancelLineItemRequest (Maybe Word32)
oclirQuantity
  = lens _oclirQuantity
      (\ s a -> s{_oclirQuantity = a})
      . mapping _Coerce

-- | The ID of the line item to cancel. Either lineItemId or productId is
-- required.
oclirLineItemId :: Lens' OrdersCancelLineItemRequest (Maybe Text)
oclirLineItemId
  = lens _oclirLineItemId
      (\ s a -> s{_oclirLineItemId = a})

-- | The reason for the cancellation. Acceptable values are: -
-- \"\`customerInitiatedCancel\`\" - \"\`invalidCoupon\`\" -
-- \"\`malformedShippingAddress\`\" - \"\`noInventory\`\" - \"\`other\`\" -
-- \"\`priceError\`\" - \"\`shippingPriceError\`\" - \"\`taxError\`\" -
-- \"\`undeliverableShippingAddress\`\" - \"\`unsupportedPoBoxAddress\`\"
oclirReason :: Lens' OrdersCancelLineItemRequest (Maybe Text)
oclirReason
  = lens _oclirReason (\ s a -> s{_oclirReason = a})

-- | The ID of the operation. Unique across all operations for a given order.
oclirOperationId :: Lens' OrdersCancelLineItemRequest (Maybe Text)
oclirOperationId
  = lens _oclirOperationId
      (\ s a -> s{_oclirOperationId = a})

-- | The ID of the product to cancel. This is the REST ID used in the
-- products service. Either lineItemId or productId is required.
oclirProductId :: Lens' OrdersCancelLineItemRequest (Maybe Text)
oclirProductId
  = lens _oclirProductId
      (\ s a -> s{_oclirProductId = a})

-- | The explanation of the reason.
oclirReasonText :: Lens' OrdersCancelLineItemRequest (Maybe Text)
oclirReasonText
  = lens _oclirReasonText
      (\ s a -> s{_oclirReasonText = a})

instance FromJSON OrdersCancelLineItemRequest where
        parseJSON
          = withObject "OrdersCancelLineItemRequest"
              (\ o ->
                 OrdersCancelLineItemRequest' <$>
                   (o .:? "quantity") <*> (o .:? "lineItemId") <*>
                     (o .:? "reason")
                     <*> (o .:? "operationId")
                     <*> (o .:? "productId")
                     <*> (o .:? "reasonText"))

instance ToJSON OrdersCancelLineItemRequest where
        toJSON OrdersCancelLineItemRequest'{..}
          = object
              (catMaybes
                 [("quantity" .=) <$> _oclirQuantity,
                  ("lineItemId" .=) <$> _oclirLineItemId,
                  ("reason" .=) <$> _oclirReason,
                  ("operationId" .=) <$> _oclirOperationId,
                  ("productId" .=) <$> _oclirProductId,
                  ("reasonText" .=) <$> _oclirReasonText])

--
-- /See:/ 'productShippingWeight' smart constructor.
data ProductShippingWeight =
  ProductShippingWeight'
    { _pswValue :: !(Maybe (Textual Double))
    , _pswUnit :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductShippingWeight' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pswValue'
--
-- * 'pswUnit'
productShippingWeight
    :: ProductShippingWeight
productShippingWeight =
  ProductShippingWeight' {_pswValue = Nothing, _pswUnit = Nothing}


-- | The weight of the product used to calculate the shipping cost of the
-- item.
pswValue :: Lens' ProductShippingWeight (Maybe Double)
pswValue
  = lens _pswValue (\ s a -> s{_pswValue = a}) .
      mapping _Coerce

-- | The unit of value.
pswUnit :: Lens' ProductShippingWeight (Maybe Text)
pswUnit = lens _pswUnit (\ s a -> s{_pswUnit = a})

instance FromJSON ProductShippingWeight where
        parseJSON
          = withObject "ProductShippingWeight"
              (\ o ->
                 ProductShippingWeight' <$>
                   (o .:? "value") <*> (o .:? "unit"))

instance ToJSON ProductShippingWeight where
        toJSON ProductShippingWeight'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _pswValue,
                  ("unit" .=) <$> _pswUnit])

-- | A batch entry encoding a single non-batch accountstatuses request.
--
-- /See:/ 'accountstatusesCustomBatchRequestEntry' smart constructor.
data AccountstatusesCustomBatchRequestEntry =
  AccountstatusesCustomBatchRequestEntry'
    { _acbrecMerchantId :: !(Maybe (Textual Word64))
    , _acbrecAccountId :: !(Maybe (Textual Word64))
    , _acbrecDestinations :: !(Maybe [Text])
    , _acbrecMethod :: !(Maybe Text)
    , _acbrecBatchId :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountstatusesCustomBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acbrecMerchantId'
--
-- * 'acbrecAccountId'
--
-- * 'acbrecDestinations'
--
-- * 'acbrecMethod'
--
-- * 'acbrecBatchId'
accountstatusesCustomBatchRequestEntry
    :: AccountstatusesCustomBatchRequestEntry
accountstatusesCustomBatchRequestEntry =
  AccountstatusesCustomBatchRequestEntry'
    { _acbrecMerchantId = Nothing
    , _acbrecAccountId = Nothing
    , _acbrecDestinations = Nothing
    , _acbrecMethod = Nothing
    , _acbrecBatchId = Nothing
    }


-- | The ID of the managing account.
acbrecMerchantId :: Lens' AccountstatusesCustomBatchRequestEntry (Maybe Word64)
acbrecMerchantId
  = lens _acbrecMerchantId
      (\ s a -> s{_acbrecMerchantId = a})
      . mapping _Coerce

-- | The ID of the (sub-)account whose status to get.
acbrecAccountId :: Lens' AccountstatusesCustomBatchRequestEntry (Maybe Word64)
acbrecAccountId
  = lens _acbrecAccountId
      (\ s a -> s{_acbrecAccountId = a})
      . mapping _Coerce

-- | If set, only issues for the specified destinations are returned,
-- otherwise only issues for the Shopping destination.
acbrecDestinations :: Lens' AccountstatusesCustomBatchRequestEntry [Text]
acbrecDestinations
  = lens _acbrecDestinations
      (\ s a -> s{_acbrecDestinations = a})
      . _Default
      . _Coerce

-- | The method of the batch entry. Acceptable values are: - \"\`get\`\"
acbrecMethod :: Lens' AccountstatusesCustomBatchRequestEntry (Maybe Text)
acbrecMethod
  = lens _acbrecMethod (\ s a -> s{_acbrecMethod = a})

-- | An entry ID, unique within the batch request.
acbrecBatchId :: Lens' AccountstatusesCustomBatchRequestEntry (Maybe Word32)
acbrecBatchId
  = lens _acbrecBatchId
      (\ s a -> s{_acbrecBatchId = a})
      . mapping _Coerce

instance FromJSON
           AccountstatusesCustomBatchRequestEntry
         where
        parseJSON
          = withObject "AccountstatusesCustomBatchRequestEntry"
              (\ o ->
                 AccountstatusesCustomBatchRequestEntry' <$>
                   (o .:? "merchantId") <*> (o .:? "accountId") <*>
                     (o .:? "destinations" .!= mempty)
                     <*> (o .:? "method")
                     <*> (o .:? "batchId"))

instance ToJSON
           AccountstatusesCustomBatchRequestEntry
         where
        toJSON AccountstatusesCustomBatchRequestEntry'{..}
          = object
              (catMaybes
                 [("merchantId" .=) <$> _acbrecMerchantId,
                  ("accountId" .=) <$> _acbrecAccountId,
                  ("destinations" .=) <$> _acbrecDestinations,
                  ("method" .=) <$> _acbrecMethod,
                  ("batchId" .=) <$> _acbrecBatchId])

--
-- /See:/ 'deliveryTime' smart constructor.
data DeliveryTime =
  DeliveryTime'
    { _dtTransitTimeTable :: !(Maybe TransitTable)
    , _dtHandlingBusinessDayConfig :: !(Maybe BusinessDayConfig)
    , _dtTransitBusinessDayConfig :: !(Maybe BusinessDayConfig)
    , _dtHolidayCutoffs :: !(Maybe [HolidayCutoff])
    , _dtMinTransitTimeInDays :: !(Maybe (Textual Word32))
    , _dtCutoffTime :: !(Maybe CutoffTime)
    , _dtMinHandlingTimeInDays :: !(Maybe (Textual Word32))
    , _dtMaxTransitTimeInDays :: !(Maybe (Textual Word32))
    , _dtMaxHandlingTimeInDays :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeliveryTime' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtTransitTimeTable'
--
-- * 'dtHandlingBusinessDayConfig'
--
-- * 'dtTransitBusinessDayConfig'
--
-- * 'dtHolidayCutoffs'
--
-- * 'dtMinTransitTimeInDays'
--
-- * 'dtCutoffTime'
--
-- * 'dtMinHandlingTimeInDays'
--
-- * 'dtMaxTransitTimeInDays'
--
-- * 'dtMaxHandlingTimeInDays'
deliveryTime
    :: DeliveryTime
deliveryTime =
  DeliveryTime'
    { _dtTransitTimeTable = Nothing
    , _dtHandlingBusinessDayConfig = Nothing
    , _dtTransitBusinessDayConfig = Nothing
    , _dtHolidayCutoffs = Nothing
    , _dtMinTransitTimeInDays = Nothing
    , _dtCutoffTime = Nothing
    , _dtMinHandlingTimeInDays = Nothing
    , _dtMaxTransitTimeInDays = Nothing
    , _dtMaxHandlingTimeInDays = Nothing
    }


-- | Transit time table, number of business days spent in transit based on
-- row and column dimensions. Either \`{min,max}TransitTimeInDays\` or
-- \`transitTimeTable\` can be set, but not both.
dtTransitTimeTable :: Lens' DeliveryTime (Maybe TransitTable)
dtTransitTimeTable
  = lens _dtTransitTimeTable
      (\ s a -> s{_dtTransitTimeTable = a})

-- | The business days during which orders can be handled. If not provided,
-- Monday to Friday business days will be assumed.
dtHandlingBusinessDayConfig :: Lens' DeliveryTime (Maybe BusinessDayConfig)
dtHandlingBusinessDayConfig
  = lens _dtHandlingBusinessDayConfig
      (\ s a -> s{_dtHandlingBusinessDayConfig = a})

-- | The business days during which orders can be in-transit. If not
-- provided, Monday to Friday business days will be assumed.
dtTransitBusinessDayConfig :: Lens' DeliveryTime (Maybe BusinessDayConfig)
dtTransitBusinessDayConfig
  = lens _dtTransitBusinessDayConfig
      (\ s a -> s{_dtTransitBusinessDayConfig = a})

-- | Holiday cutoff definitions. If configured, they specify order cutoff
-- times for holiday-specific shipping.
dtHolidayCutoffs :: Lens' DeliveryTime [HolidayCutoff]
dtHolidayCutoffs
  = lens _dtHolidayCutoffs
      (\ s a -> s{_dtHolidayCutoffs = a})
      . _Default
      . _Coerce

-- | Minimum number of business days that is spent in transit. 0 means same
-- day delivery, 1 means next day delivery. Either
-- \`{min,max}TransitTimeInDays\` or \`transitTimeTable\` must be set, but
-- not both.
dtMinTransitTimeInDays :: Lens' DeliveryTime (Maybe Word32)
dtMinTransitTimeInDays
  = lens _dtMinTransitTimeInDays
      (\ s a -> s{_dtMinTransitTimeInDays = a})
      . mapping _Coerce

-- | Business days cutoff time definition. If not configured the cutoff time
-- will be defaulted to 8AM PST.
dtCutoffTime :: Lens' DeliveryTime (Maybe CutoffTime)
dtCutoffTime
  = lens _dtCutoffTime (\ s a -> s{_dtCutoffTime = a})

-- | Minimum number of business days spent before an order is shipped. 0
-- means same day shipped, 1 means next day shipped.
dtMinHandlingTimeInDays :: Lens' DeliveryTime (Maybe Word32)
dtMinHandlingTimeInDays
  = lens _dtMinHandlingTimeInDays
      (\ s a -> s{_dtMinHandlingTimeInDays = a})
      . mapping _Coerce

-- | Maximum number of business days that is spent in transit. 0 means same
-- day delivery, 1 means next day delivery. Must be greater than or equal
-- to \`minTransitTimeInDays\`.
dtMaxTransitTimeInDays :: Lens' DeliveryTime (Maybe Word32)
dtMaxTransitTimeInDays
  = lens _dtMaxTransitTimeInDays
      (\ s a -> s{_dtMaxTransitTimeInDays = a})
      . mapping _Coerce

-- | Maximum number of business days spent before an order is shipped. 0
-- means same day shipped, 1 means next day shipped. Must be greater than
-- or equal to \`minHandlingTimeInDays\`.
dtMaxHandlingTimeInDays :: Lens' DeliveryTime (Maybe Word32)
dtMaxHandlingTimeInDays
  = lens _dtMaxHandlingTimeInDays
      (\ s a -> s{_dtMaxHandlingTimeInDays = a})
      . mapping _Coerce

instance FromJSON DeliveryTime where
        parseJSON
          = withObject "DeliveryTime"
              (\ o ->
                 DeliveryTime' <$>
                   (o .:? "transitTimeTable") <*>
                     (o .:? "handlingBusinessDayConfig")
                     <*> (o .:? "transitBusinessDayConfig")
                     <*> (o .:? "holidayCutoffs" .!= mempty)
                     <*> (o .:? "minTransitTimeInDays")
                     <*> (o .:? "cutoffTime")
                     <*> (o .:? "minHandlingTimeInDays")
                     <*> (o .:? "maxTransitTimeInDays")
                     <*> (o .:? "maxHandlingTimeInDays"))

instance ToJSON DeliveryTime where
        toJSON DeliveryTime'{..}
          = object
              (catMaybes
                 [("transitTimeTable" .=) <$> _dtTransitTimeTable,
                  ("handlingBusinessDayConfig" .=) <$>
                    _dtHandlingBusinessDayConfig,
                  ("transitBusinessDayConfig" .=) <$>
                    _dtTransitBusinessDayConfig,
                  ("holidayCutoffs" .=) <$> _dtHolidayCutoffs,
                  ("minTransitTimeInDays" .=) <$>
                    _dtMinTransitTimeInDays,
                  ("cutoffTime" .=) <$> _dtCutoffTime,
                  ("minHandlingTimeInDays" .=) <$>
                    _dtMinHandlingTimeInDays,
                  ("maxTransitTimeInDays" .=) <$>
                    _dtMaxTransitTimeInDays,
                  ("maxHandlingTimeInDays" .=) <$>
                    _dtMaxHandlingTimeInDays])

--
-- /See:/ 'liaCountrySettings' smart constructor.
data LiaCountrySettings =
  LiaCountrySettings'
    { _lcsPosDataProvider :: !(Maybe LiaPosDataProvider)
    , _lcsCountry :: !(Maybe Text)
    , _lcsStorePickupActive :: !(Maybe Bool)
    , _lcsInventory :: !(Maybe LiaInventorySettings)
    , _lcsAbout :: !(Maybe LiaAboutPageSettings)
    , _lcsHostedLocalStorefrontActive :: !(Maybe Bool)
    , _lcsOnDisplayToOrder :: !(Maybe LiaOnDisplayToOrderSettings)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiaCountrySettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcsPosDataProvider'
--
-- * 'lcsCountry'
--
-- * 'lcsStorePickupActive'
--
-- * 'lcsInventory'
--
-- * 'lcsAbout'
--
-- * 'lcsHostedLocalStorefrontActive'
--
-- * 'lcsOnDisplayToOrder'
liaCountrySettings
    :: LiaCountrySettings
liaCountrySettings =
  LiaCountrySettings'
    { _lcsPosDataProvider = Nothing
    , _lcsCountry = Nothing
    , _lcsStorePickupActive = Nothing
    , _lcsInventory = Nothing
    , _lcsAbout = Nothing
    , _lcsHostedLocalStorefrontActive = Nothing
    , _lcsOnDisplayToOrder = Nothing
    }


-- | The POS data provider linked with this country.
lcsPosDataProvider :: Lens' LiaCountrySettings (Maybe LiaPosDataProvider)
lcsPosDataProvider
  = lens _lcsPosDataProvider
      (\ s a -> s{_lcsPosDataProvider = a})

-- | Required. CLDR country code (e.g. \"US\").
lcsCountry :: Lens' LiaCountrySettings (Maybe Text)
lcsCountry
  = lens _lcsCountry (\ s a -> s{_lcsCountry = a})

-- | The status of the \"Store pickup\" feature.
lcsStorePickupActive :: Lens' LiaCountrySettings (Maybe Bool)
lcsStorePickupActive
  = lens _lcsStorePickupActive
      (\ s a -> s{_lcsStorePickupActive = a})

-- | LIA inventory verification settings.
lcsInventory :: Lens' LiaCountrySettings (Maybe LiaInventorySettings)
lcsInventory
  = lens _lcsInventory (\ s a -> s{_lcsInventory = a})

-- | The settings for the About page.
lcsAbout :: Lens' LiaCountrySettings (Maybe LiaAboutPageSettings)
lcsAbout = lens _lcsAbout (\ s a -> s{_lcsAbout = a})

-- | The status of the \"Merchant hosted local storefront\" feature.
lcsHostedLocalStorefrontActive :: Lens' LiaCountrySettings (Maybe Bool)
lcsHostedLocalStorefrontActive
  = lens _lcsHostedLocalStorefrontActive
      (\ s a -> s{_lcsHostedLocalStorefrontActive = a})

-- | LIA \"On Display To Order\" settings.
lcsOnDisplayToOrder :: Lens' LiaCountrySettings (Maybe LiaOnDisplayToOrderSettings)
lcsOnDisplayToOrder
  = lens _lcsOnDisplayToOrder
      (\ s a -> s{_lcsOnDisplayToOrder = a})

instance FromJSON LiaCountrySettings where
        parseJSON
          = withObject "LiaCountrySettings"
              (\ o ->
                 LiaCountrySettings' <$>
                   (o .:? "posDataProvider") <*> (o .:? "country") <*>
                     (o .:? "storePickupActive")
                     <*> (o .:? "inventory")
                     <*> (o .:? "about")
                     <*> (o .:? "hostedLocalStorefrontActive")
                     <*> (o .:? "onDisplayToOrder"))

instance ToJSON LiaCountrySettings where
        toJSON LiaCountrySettings'{..}
          = object
              (catMaybes
                 [("posDataProvider" .=) <$> _lcsPosDataProvider,
                  ("country" .=) <$> _lcsCountry,
                  ("storePickupActive" .=) <$> _lcsStorePickupActive,
                  ("inventory" .=) <$> _lcsInventory,
                  ("about" .=) <$> _lcsAbout,
                  ("hostedLocalStorefrontActive" .=) <$>
                    _lcsHostedLocalStorefrontActive,
                  ("onDisplayToOrder" .=) <$> _lcsOnDisplayToOrder])

--
-- /See:/ 'ordersReturnRefundLineItemResponse' smart constructor.
data OrdersReturnRefundLineItemResponse =
  OrdersReturnRefundLineItemResponse'
    { _orrlirKind :: !(Maybe Text)
    , _orrlirExecutionStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersReturnRefundLineItemResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orrlirKind'
--
-- * 'orrlirExecutionStatus'
ordersReturnRefundLineItemResponse
    :: OrdersReturnRefundLineItemResponse
ordersReturnRefundLineItemResponse =
  OrdersReturnRefundLineItemResponse'
    {_orrlirKind = Nothing, _orrlirExecutionStatus = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersReturnRefundLineItemResponse\".
orrlirKind :: Lens' OrdersReturnRefundLineItemResponse (Maybe Text)
orrlirKind
  = lens _orrlirKind (\ s a -> s{_orrlirKind = a})

-- | The status of the execution. Acceptable values are: - \"\`duplicate\`\"
-- - \"\`executed\`\"
orrlirExecutionStatus :: Lens' OrdersReturnRefundLineItemResponse (Maybe Text)
orrlirExecutionStatus
  = lens _orrlirExecutionStatus
      (\ s a -> s{_orrlirExecutionStatus = a})

instance FromJSON OrdersReturnRefundLineItemResponse
         where
        parseJSON
          = withObject "OrdersReturnRefundLineItemResponse"
              (\ o ->
                 OrdersReturnRefundLineItemResponse' <$>
                   (o .:? "kind") <*> (o .:? "executionStatus"))

instance ToJSON OrdersReturnRefundLineItemResponse
         where
        toJSON OrdersReturnRefundLineItemResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _orrlirKind,
                  ("executionStatus" .=) <$> _orrlirExecutionStatus])

--
-- /See:/ 'repricingRuleEffectiveTime' smart constructor.
newtype RepricingRuleEffectiveTime =
  RepricingRuleEffectiveTime'
    { _rretFixedTimePeriods :: Maybe [RepricingRuleEffectiveTimeFixedTimePeriod]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RepricingRuleEffectiveTime' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rretFixedTimePeriods'
repricingRuleEffectiveTime
    :: RepricingRuleEffectiveTime
repricingRuleEffectiveTime =
  RepricingRuleEffectiveTime' {_rretFixedTimePeriods = Nothing}


-- | A list of fixed time periods combined with OR. The maximum number of
-- entries is limited to 5.
rretFixedTimePeriods :: Lens' RepricingRuleEffectiveTime [RepricingRuleEffectiveTimeFixedTimePeriod]
rretFixedTimePeriods
  = lens _rretFixedTimePeriods
      (\ s a -> s{_rretFixedTimePeriods = a})
      . _Default
      . _Coerce

instance FromJSON RepricingRuleEffectiveTime where
        parseJSON
          = withObject "RepricingRuleEffectiveTime"
              (\ o ->
                 RepricingRuleEffectiveTime' <$>
                   (o .:? "fixedTimePeriods" .!= mempty))

instance ToJSON RepricingRuleEffectiveTime where
        toJSON RepricingRuleEffectiveTime'{..}
          = object
              (catMaybes
                 [("fixedTimePeriods" .=) <$> _rretFixedTimePeriods])

-- | A batch entry encoding a single non-batch productstatuses response.
--
-- /See:/ 'productstatusesCustomBatchResponseEntry' smart constructor.
data ProductstatusesCustomBatchResponseEntry =
  ProductstatusesCustomBatchResponseEntry'
    { _pKind :: !(Maybe Text)
    , _pProductStatus :: !(Maybe ProductStatus)
    , _pErrors :: !(Maybe Errors)
    , _pBatchId :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductstatusesCustomBatchResponseEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pKind'
--
-- * 'pProductStatus'
--
-- * 'pErrors'
--
-- * 'pBatchId'
productstatusesCustomBatchResponseEntry
    :: ProductstatusesCustomBatchResponseEntry
productstatusesCustomBatchResponseEntry =
  ProductstatusesCustomBatchResponseEntry'
    { _pKind = Nothing
    , _pProductStatus = Nothing
    , _pErrors = Nothing
    , _pBatchId = Nothing
    }


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"\`content#productstatusesCustomBatchResponseEntry\`\"
pKind :: Lens' ProductstatusesCustomBatchResponseEntry (Maybe Text)
pKind = lens _pKind (\ s a -> s{_pKind = a})

-- | The requested product status. Only defined if the request was
-- successful.
pProductStatus :: Lens' ProductstatusesCustomBatchResponseEntry (Maybe ProductStatus)
pProductStatus
  = lens _pProductStatus
      (\ s a -> s{_pProductStatus = a})

-- | A list of errors, if the request failed.
pErrors :: Lens' ProductstatusesCustomBatchResponseEntry (Maybe Errors)
pErrors = lens _pErrors (\ s a -> s{_pErrors = a})

-- | The ID of the request entry this entry responds to.
pBatchId :: Lens' ProductstatusesCustomBatchResponseEntry (Maybe Word32)
pBatchId
  = lens _pBatchId (\ s a -> s{_pBatchId = a}) .
      mapping _Coerce

instance FromJSON
           ProductstatusesCustomBatchResponseEntry
         where
        parseJSON
          = withObject
              "ProductstatusesCustomBatchResponseEntry"
              (\ o ->
                 ProductstatusesCustomBatchResponseEntry' <$>
                   (o .:? "kind") <*> (o .:? "productStatus") <*>
                     (o .:? "errors")
                     <*> (o .:? "batchId"))

instance ToJSON
           ProductstatusesCustomBatchResponseEntry
         where
        toJSON ProductstatusesCustomBatchResponseEntry'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _pKind,
                  ("productStatus" .=) <$> _pProductStatus,
                  ("errors" .=) <$> _pErrors,
                  ("batchId" .=) <$> _pBatchId])

--
-- /See:/ 'shippingSettingsGetSupportedHolidaysResponse' smart constructor.
data ShippingSettingsGetSupportedHolidaysResponse =
  ShippingSettingsGetSupportedHolidaysResponse'
    { _ssgshrKind :: !(Maybe Text)
    , _ssgshrHolidays :: !(Maybe [HolidaysHoliday])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ShippingSettingsGetSupportedHolidaysResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssgshrKind'
--
-- * 'ssgshrHolidays'
shippingSettingsGetSupportedHolidaysResponse
    :: ShippingSettingsGetSupportedHolidaysResponse
shippingSettingsGetSupportedHolidaysResponse =
  ShippingSettingsGetSupportedHolidaysResponse'
    {_ssgshrKind = Nothing, _ssgshrHolidays = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#shippingsettingsGetSupportedHolidaysResponse\".
ssgshrKind :: Lens' ShippingSettingsGetSupportedHolidaysResponse (Maybe Text)
ssgshrKind
  = lens _ssgshrKind (\ s a -> s{_ssgshrKind = a})

-- | A list of holidays applicable for delivery guarantees. May be empty.
ssgshrHolidays :: Lens' ShippingSettingsGetSupportedHolidaysResponse [HolidaysHoliday]
ssgshrHolidays
  = lens _ssgshrHolidays
      (\ s a -> s{_ssgshrHolidays = a})
      . _Default
      . _Coerce

instance FromJSON
           ShippingSettingsGetSupportedHolidaysResponse
         where
        parseJSON
          = withObject
              "ShippingSettingsGetSupportedHolidaysResponse"
              (\ o ->
                 ShippingSettingsGetSupportedHolidaysResponse' <$>
                   (o .:? "kind") <*> (o .:? "holidays" .!= mempty))

instance ToJSON
           ShippingSettingsGetSupportedHolidaysResponse
         where
        toJSON
          ShippingSettingsGetSupportedHolidaysResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _ssgshrKind,
                  ("holidays" .=) <$> _ssgshrHolidays])

-- | Represents a repricing rule. A repricing rule is used by shopping
-- serving to adjust transactable offer prices if conditions are met. Next
-- ID: 24
--
-- /See:/ 'repricingRule' smart constructor.
data RepricingRule =
  RepricingRule'
    { _rrRestriction :: !(Maybe RepricingRuleRestriction)
    , _rrLanguageCode :: !(Maybe Text)
    , _rrMerchantId :: !(Maybe (Textual Int64))
    , _rrCogsBasedRule :: !(Maybe RepricingRuleCostOfGoodsSaleRule)
    , _rrRuleId :: !(Maybe Text)
    , _rrEligibleOfferMatcher :: !(Maybe RepricingRuleEligibleOfferMatcher)
    , _rrEffectiveTimePeriod :: !(Maybe RepricingRuleEffectiveTime)
    , _rrCountryCode :: !(Maybe Text)
    , _rrTitle :: !(Maybe Text)
    , _rrType :: !(Maybe RepricingRuleType)
    , _rrStatsBasedRule :: !(Maybe RepricingRuleStatsBasedRule)
    , _rrPaused :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RepricingRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrRestriction'
--
-- * 'rrLanguageCode'
--
-- * 'rrMerchantId'
--
-- * 'rrCogsBasedRule'
--
-- * 'rrRuleId'
--
-- * 'rrEligibleOfferMatcher'
--
-- * 'rrEffectiveTimePeriod'
--
-- * 'rrCountryCode'
--
-- * 'rrTitle'
--
-- * 'rrType'
--
-- * 'rrStatsBasedRule'
--
-- * 'rrPaused'
repricingRule
    :: RepricingRule
repricingRule =
  RepricingRule'
    { _rrRestriction = Nothing
    , _rrLanguageCode = Nothing
    , _rrMerchantId = Nothing
    , _rrCogsBasedRule = Nothing
    , _rrRuleId = Nothing
    , _rrEligibleOfferMatcher = Nothing
    , _rrEffectiveTimePeriod = Nothing
    , _rrCountryCode = Nothing
    , _rrTitle = Nothing
    , _rrType = Nothing
    , _rrStatsBasedRule = Nothing
    , _rrPaused = Nothing
    }


-- | Required. Restriction of the rule appliance.
rrRestriction :: Lens' RepricingRule (Maybe RepricingRuleRestriction)
rrRestriction
  = lens _rrRestriction
      (\ s a -> s{_rrRestriction = a})

-- | Required. Immutable. The two-letter ISO 639-1 language code associated
-- with the repricing rule.
rrLanguageCode :: Lens' RepricingRule (Maybe Text)
rrLanguageCode
  = lens _rrLanguageCode
      (\ s a -> s{_rrLanguageCode = a})

-- | Output only. Immutable. Merchant that owns the repricing rule.
rrMerchantId :: Lens' RepricingRule (Maybe Int64)
rrMerchantId
  = lens _rrMerchantId (\ s a -> s{_rrMerchantId = a})
      . mapping _Coerce

-- | The rule definition for TYPE_COGS_BASED. Required when the rule type is
-- TYPE_COGS_BASED.
rrCogsBasedRule :: Lens' RepricingRule (Maybe RepricingRuleCostOfGoodsSaleRule)
rrCogsBasedRule
  = lens _rrCogsBasedRule
      (\ s a -> s{_rrCogsBasedRule = a})

-- | Output only. Immutable. The ID to uniquely identify each repricing rule.
rrRuleId :: Lens' RepricingRule (Maybe Text)
rrRuleId = lens _rrRuleId (\ s a -> s{_rrRuleId = a})

-- | Required. Match criteria for the eligible offers.
rrEligibleOfferMatcher :: Lens' RepricingRule (Maybe RepricingRuleEligibleOfferMatcher)
rrEligibleOfferMatcher
  = lens _rrEligibleOfferMatcher
      (\ s a -> s{_rrEligibleOfferMatcher = a})

-- | Required. Time period when the rule should take effect.
rrEffectiveTimePeriod :: Lens' RepricingRule (Maybe RepricingRuleEffectiveTime)
rrEffectiveTimePeriod
  = lens _rrEffectiveTimePeriod
      (\ s a -> s{_rrEffectiveTimePeriod = a})

-- | Required. Immutable. [CLDR country
-- code](http:\/\/www.unicode.org\/repos\/cldr\/tags\/latest\/common\/main\/en.xml)
-- (e.g. \"US\").
rrCountryCode :: Lens' RepricingRule (Maybe Text)
rrCountryCode
  = lens _rrCountryCode
      (\ s a -> s{_rrCountryCode = a})

-- | The title for the rule.
rrTitle :: Lens' RepricingRule (Maybe Text)
rrTitle = lens _rrTitle (\ s a -> s{_rrTitle = a})

-- | Required. Immutable. The type of the rule.
rrType :: Lens' RepricingRule (Maybe RepricingRuleType)
rrType = lens _rrType (\ s a -> s{_rrType = a})

-- | The rule definition for TYPE_STATS_BASED. Required when the rule type is
-- TYPE_STATS_BASED.
rrStatsBasedRule :: Lens' RepricingRule (Maybe RepricingRuleStatsBasedRule)
rrStatsBasedRule
  = lens _rrStatsBasedRule
      (\ s a -> s{_rrStatsBasedRule = a})

-- | Represents whether a rule is paused. A paused rule will behave like a
-- non-paused rule within CRUD operations, with the major difference that a
-- paused rule will not be evaluated and will have no effect on offers.
rrPaused :: Lens' RepricingRule (Maybe Bool)
rrPaused = lens _rrPaused (\ s a -> s{_rrPaused = a})

instance FromJSON RepricingRule where
        parseJSON
          = withObject "RepricingRule"
              (\ o ->
                 RepricingRule' <$>
                   (o .:? "restriction") <*> (o .:? "languageCode") <*>
                     (o .:? "merchantId")
                     <*> (o .:? "cogsBasedRule")
                     <*> (o .:? "ruleId")
                     <*> (o .:? "eligibleOfferMatcher")
                     <*> (o .:? "effectiveTimePeriod")
                     <*> (o .:? "countryCode")
                     <*> (o .:? "title")
                     <*> (o .:? "type")
                     <*> (o .:? "statsBasedRule")
                     <*> (o .:? "paused"))

instance ToJSON RepricingRule where
        toJSON RepricingRule'{..}
          = object
              (catMaybes
                 [("restriction" .=) <$> _rrRestriction,
                  ("languageCode" .=) <$> _rrLanguageCode,
                  ("merchantId" .=) <$> _rrMerchantId,
                  ("cogsBasedRule" .=) <$> _rrCogsBasedRule,
                  ("ruleId" .=) <$> _rrRuleId,
                  ("eligibleOfferMatcher" .=) <$>
                    _rrEligibleOfferMatcher,
                  ("effectiveTimePeriod" .=) <$>
                    _rrEffectiveTimePeriod,
                  ("countryCode" .=) <$> _rrCountryCode,
                  ("title" .=) <$> _rrTitle, ("type" .=) <$> _rrType,
                  ("statsBasedRule" .=) <$> _rrStatsBasedRule,
                  ("paused" .=) <$> _rrPaused])

-- | ScheduledDeliveryDetails used to update the scheduled delivery order.
--
-- /See:/ 'ordersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails' smart constructor.
data OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails =
  OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails'
    { _ocbreussddScheduledDate :: !(Maybe Text)
    , _ocbreussddCarrierPhoneNumber :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocbreussddScheduledDate'
--
-- * 'ocbreussddCarrierPhoneNumber'
ordersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails
    :: OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails
ordersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails =
  OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails'
    { _ocbreussddScheduledDate = Nothing
    , _ocbreussddCarrierPhoneNumber = Nothing
    }


-- | The date a shipment is scheduled for delivery, in ISO 8601 format.
ocbreussddScheduledDate :: Lens' OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails (Maybe Text)
ocbreussddScheduledDate
  = lens _ocbreussddScheduledDate
      (\ s a -> s{_ocbreussddScheduledDate = a})

-- | The phone number of the carrier fulfilling the delivery. The phone
-- number should be formatted as the international notation in
ocbreussddCarrierPhoneNumber :: Lens' OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails (Maybe Text)
ocbreussddCarrierPhoneNumber
  = lens _ocbreussddCarrierPhoneNumber
      (\ s a -> s{_ocbreussddCarrierPhoneNumber = a})

instance FromJSON
           OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails
         where
        parseJSON
          = withObject
              "OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails"
              (\ o ->
                 OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails'
                   <$>
                   (o .:? "scheduledDate") <*>
                     (o .:? "carrierPhoneNumber"))

instance ToJSON
           OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails
         where
        toJSON
          OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails'{..}
          = object
              (catMaybes
                 [("scheduledDate" .=) <$> _ocbreussddScheduledDate,
                  ("carrierPhoneNumber" .=) <$>
                    _ocbreussddCarrierPhoneNumber])

--
-- /See:/ 'productProductDetail' smart constructor.
data ProductProductDetail =
  ProductProductDetail'
    { _ppdAttributeValue :: !(Maybe Text)
    , _ppdAttributeName :: !(Maybe Text)
    , _ppdSectionName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductProductDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppdAttributeValue'
--
-- * 'ppdAttributeName'
--
-- * 'ppdSectionName'
productProductDetail
    :: ProductProductDetail
productProductDetail =
  ProductProductDetail'
    { _ppdAttributeValue = Nothing
    , _ppdAttributeName = Nothing
    , _ppdSectionName = Nothing
    }


-- | The value of the product detail.
ppdAttributeValue :: Lens' ProductProductDetail (Maybe Text)
ppdAttributeValue
  = lens _ppdAttributeValue
      (\ s a -> s{_ppdAttributeValue = a})

-- | The name of the product detail.
ppdAttributeName :: Lens' ProductProductDetail (Maybe Text)
ppdAttributeName
  = lens _ppdAttributeName
      (\ s a -> s{_ppdAttributeName = a})

-- | The section header used to group a set of product details.
ppdSectionName :: Lens' ProductProductDetail (Maybe Text)
ppdSectionName
  = lens _ppdSectionName
      (\ s a -> s{_ppdSectionName = a})

instance FromJSON ProductProductDetail where
        parseJSON
          = withObject "ProductProductDetail"
              (\ o ->
                 ProductProductDetail' <$>
                   (o .:? "attributeValue") <*> (o .:? "attributeName")
                     <*> (o .:? "sectionName"))

instance ToJSON ProductProductDetail where
        toJSON ProductProductDetail'{..}
          = object
              (catMaybes
                 [("attributeValue" .=) <$> _ppdAttributeValue,
                  ("attributeName" .=) <$> _ppdAttributeName,
                  ("sectionName" .=) <$> _ppdSectionName])

--
-- /See:/ 'liaPosDataProvider' smart constructor.
data LiaPosDataProvider =
  LiaPosDataProvider'
    { _lpdpPosExternalAccountId :: !(Maybe Text)
    , _lpdpPosDataProviderId :: !(Maybe (Textual Word64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiaPosDataProvider' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpdpPosExternalAccountId'
--
-- * 'lpdpPosDataProviderId'
liaPosDataProvider
    :: LiaPosDataProvider
liaPosDataProvider =
  LiaPosDataProvider'
    {_lpdpPosExternalAccountId = Nothing, _lpdpPosDataProviderId = Nothing}


-- | The account ID by which this merchant is known to the POS data provider.
lpdpPosExternalAccountId :: Lens' LiaPosDataProvider (Maybe Text)
lpdpPosExternalAccountId
  = lens _lpdpPosExternalAccountId
      (\ s a -> s{_lpdpPosExternalAccountId = a})

-- | The ID of the POS data provider.
lpdpPosDataProviderId :: Lens' LiaPosDataProvider (Maybe Word64)
lpdpPosDataProviderId
  = lens _lpdpPosDataProviderId
      (\ s a -> s{_lpdpPosDataProviderId = a})
      . mapping _Coerce

instance FromJSON LiaPosDataProvider where
        parseJSON
          = withObject "LiaPosDataProvider"
              (\ o ->
                 LiaPosDataProvider' <$>
                   (o .:? "posExternalAccountId") <*>
                     (o .:? "posDataProviderId"))

instance ToJSON LiaPosDataProvider where
        toJSON LiaPosDataProvider'{..}
          = object
              (catMaybes
                 [("posExternalAccountId" .=) <$>
                    _lpdpPosExternalAccountId,
                  ("posDataProviderId" .=) <$> _lpdpPosDataProviderId])

--
-- /See:/ 'datafeedFormat' smart constructor.
data DatafeedFormat =
  DatafeedFormat'
    { _dfQuotingMode :: !(Maybe Text)
    , _dfFileEncoding :: !(Maybe Text)
    , _dfColumnDelimiter :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatafeedFormat' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfQuotingMode'
--
-- * 'dfFileEncoding'
--
-- * 'dfColumnDelimiter'
datafeedFormat
    :: DatafeedFormat
datafeedFormat =
  DatafeedFormat'
    { _dfQuotingMode = Nothing
    , _dfFileEncoding = Nothing
    , _dfColumnDelimiter = Nothing
    }


-- | Specifies how double quotes are interpreted. If not specified, the mode
-- will be auto-detected. Ignored for non-DSV data feeds. Acceptable values
-- are: - \"\`normal character\`\" - \"\`value quoting\`\"
dfQuotingMode :: Lens' DatafeedFormat (Maybe Text)
dfQuotingMode
  = lens _dfQuotingMode
      (\ s a -> s{_dfQuotingMode = a})

-- | Character encoding scheme of the data feed. If not specified, the
-- encoding will be auto-detected. Acceptable values are: - \"\`latin-1\`\"
-- - \"\`utf-16be\`\" - \"\`utf-16le\`\" - \"\`utf-8\`\" -
-- \"\`windows-1252\`\"
dfFileEncoding :: Lens' DatafeedFormat (Maybe Text)
dfFileEncoding
  = lens _dfFileEncoding
      (\ s a -> s{_dfFileEncoding = a})

-- | Delimiter for the separation of values in a delimiter-separated values
-- feed. If not specified, the delimiter will be auto-detected. Ignored for
-- non-DSV data feeds. Acceptable values are: - \"\`pipe\`\" - \"\`tab\`\"
-- - \"\`tilde\`\"
dfColumnDelimiter :: Lens' DatafeedFormat (Maybe Text)
dfColumnDelimiter
  = lens _dfColumnDelimiter
      (\ s a -> s{_dfColumnDelimiter = a})

instance FromJSON DatafeedFormat where
        parseJSON
          = withObject "DatafeedFormat"
              (\ o ->
                 DatafeedFormat' <$>
                   (o .:? "quotingMode") <*> (o .:? "fileEncoding") <*>
                     (o .:? "columnDelimiter"))

instance ToJSON DatafeedFormat where
        toJSON DatafeedFormat'{..}
          = object
              (catMaybes
                 [("quotingMode" .=) <$> _dfQuotingMode,
                  ("fileEncoding" .=) <$> _dfFileEncoding,
                  ("columnDelimiter" .=) <$> _dfColumnDelimiter])

-- | Local Inventory ads (LIA) settings. All methods except
-- listposdataproviders require the admin role.
--
-- /See:/ 'liaSettings' smart constructor.
data LiaSettings =
  LiaSettings'
    { _lsCountrySettings :: !(Maybe [LiaCountrySettings])
    , _lsKind :: !(Maybe Text)
    , _lsAccountId :: !(Maybe (Textual Word64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiaSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsCountrySettings'
--
-- * 'lsKind'
--
-- * 'lsAccountId'
liaSettings
    :: LiaSettings
liaSettings =
  LiaSettings'
    {_lsCountrySettings = Nothing, _lsKind = Nothing, _lsAccountId = Nothing}


-- | The LIA settings for each country.
lsCountrySettings :: Lens' LiaSettings [LiaCountrySettings]
lsCountrySettings
  = lens _lsCountrySettings
      (\ s a -> s{_lsCountrySettings = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"\`content#liaSettings\`\"
lsKind :: Lens' LiaSettings (Maybe Text)
lsKind = lens _lsKind (\ s a -> s{_lsKind = a})

-- | The ID of the account to which these LIA settings belong. Ignored upon
-- update, always present in get request responses.
lsAccountId :: Lens' LiaSettings (Maybe Word64)
lsAccountId
  = lens _lsAccountId (\ s a -> s{_lsAccountId = a}) .
      mapping _Coerce

instance FromJSON LiaSettings where
        parseJSON
          = withObject "LiaSettings"
              (\ o ->
                 LiaSettings' <$>
                   (o .:? "countrySettings" .!= mempty) <*>
                     (o .:? "kind")
                     <*> (o .:? "accountId"))

instance ToJSON LiaSettings where
        toJSON LiaSettings'{..}
          = object
              (catMaybes
                 [("countrySettings" .=) <$> _lsCountrySettings,
                  ("kind" .=) <$> _lsKind,
                  ("accountId" .=) <$> _lsAccountId])

--
-- /See:/ 'transitTableTransitTimeRow' smart constructor.
newtype TransitTableTransitTimeRow =
  TransitTableTransitTimeRow'
    { _ttttrValues :: Maybe [TransitTableTransitTimeRowTransitTimeValue]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TransitTableTransitTimeRow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttttrValues'
transitTableTransitTimeRow
    :: TransitTableTransitTimeRow
transitTableTransitTimeRow =
  TransitTableTransitTimeRow' {_ttttrValues = Nothing}


ttttrValues :: Lens' TransitTableTransitTimeRow [TransitTableTransitTimeRowTransitTimeValue]
ttttrValues
  = lens _ttttrValues (\ s a -> s{_ttttrValues = a}) .
      _Default
      . _Coerce

instance FromJSON TransitTableTransitTimeRow where
        parseJSON
          = withObject "TransitTableTransitTimeRow"
              (\ o ->
                 TransitTableTransitTimeRow' <$>
                   (o .:? "values" .!= mempty))

instance ToJSON TransitTableTransitTimeRow where
        toJSON TransitTableTransitTimeRow'{..}
          = object (catMaybes [("values" .=) <$> _ttttrValues])

--
-- /See:/ 'productShipping' smart constructor.
data ProductShipping =
  ProductShipping'
    { _pService :: !(Maybe Text)
    , _pLocationGroupName :: !(Maybe Text)
    , _pCountry :: !(Maybe Text)
    , _pPostalCode :: !(Maybe Text)
    , _pPrice :: !(Maybe Price)
    , _pRegion :: !(Maybe Text)
    , _pLocationId :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductShipping' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pService'
--
-- * 'pLocationGroupName'
--
-- * 'pCountry'
--
-- * 'pPostalCode'
--
-- * 'pPrice'
--
-- * 'pRegion'
--
-- * 'pLocationId'
productShipping
    :: ProductShipping
productShipping =
  ProductShipping'
    { _pService = Nothing
    , _pLocationGroupName = Nothing
    , _pCountry = Nothing
    , _pPostalCode = Nothing
    , _pPrice = Nothing
    , _pRegion = Nothing
    , _pLocationId = Nothing
    }


-- | A free-form description of the service class or delivery speed.
pService :: Lens' ProductShipping (Maybe Text)
pService = lens _pService (\ s a -> s{_pService = a})

-- | The location where the shipping is applicable, represented by a location
-- group name.
pLocationGroupName :: Lens' ProductShipping (Maybe Text)
pLocationGroupName
  = lens _pLocationGroupName
      (\ s a -> s{_pLocationGroupName = a})

-- | The CLDR territory code of the country to which an item will ship.
pCountry :: Lens' ProductShipping (Maybe Text)
pCountry = lens _pCountry (\ s a -> s{_pCountry = a})

-- | The postal code range that the shipping rate applies to, represented by
-- a postal code, a postal code prefix followed by a * wildcard, a range
-- between two postal codes or two postal code prefixes of equal length.
pPostalCode :: Lens' ProductShipping (Maybe Text)
pPostalCode
  = lens _pPostalCode (\ s a -> s{_pPostalCode = a})

-- | Fixed shipping price, represented as a number.
pPrice :: Lens' ProductShipping (Maybe Price)
pPrice = lens _pPrice (\ s a -> s{_pPrice = a})

-- | The geographic region to which a shipping rate applies.
pRegion :: Lens' ProductShipping (Maybe Text)
pRegion = lens _pRegion (\ s a -> s{_pRegion = a})

-- | The numeric ID of a location that the shipping rate applies to as
-- defined in the AdWords API.
pLocationId :: Lens' ProductShipping (Maybe Int64)
pLocationId
  = lens _pLocationId (\ s a -> s{_pLocationId = a}) .
      mapping _Coerce

instance FromJSON ProductShipping where
        parseJSON
          = withObject "ProductShipping"
              (\ o ->
                 ProductShipping' <$>
                   (o .:? "service") <*> (o .:? "locationGroupName") <*>
                     (o .:? "country")
                     <*> (o .:? "postalCode")
                     <*> (o .:? "price")
                     <*> (o .:? "region")
                     <*> (o .:? "locationId"))

instance ToJSON ProductShipping where
        toJSON ProductShipping'{..}
          = object
              (catMaybes
                 [("service" .=) <$> _pService,
                  ("locationGroupName" .=) <$> _pLocationGroupName,
                  ("country" .=) <$> _pCountry,
                  ("postalCode" .=) <$> _pPostalCode,
                  ("price" .=) <$> _pPrice, ("region" .=) <$> _pRegion,
                  ("locationId" .=) <$> _pLocationId])

--
-- /See:/ 'shippingSettingsCustomBatchRequest' smart constructor.
newtype ShippingSettingsCustomBatchRequest =
  ShippingSettingsCustomBatchRequest'
    { _sscbrEntries :: Maybe [ShippingSettingsCustomBatchRequestEntry]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ShippingSettingsCustomBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sscbrEntries'
shippingSettingsCustomBatchRequest
    :: ShippingSettingsCustomBatchRequest
shippingSettingsCustomBatchRequest =
  ShippingSettingsCustomBatchRequest' {_sscbrEntries = Nothing}


-- | The request entries to be processed in the batch.
sscbrEntries :: Lens' ShippingSettingsCustomBatchRequest [ShippingSettingsCustomBatchRequestEntry]
sscbrEntries
  = lens _sscbrEntries (\ s a -> s{_sscbrEntries = a})
      . _Default
      . _Coerce

instance FromJSON ShippingSettingsCustomBatchRequest
         where
        parseJSON
          = withObject "ShippingSettingsCustomBatchRequest"
              (\ o ->
                 ShippingSettingsCustomBatchRequest' <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON ShippingSettingsCustomBatchRequest
         where
        toJSON ShippingSettingsCustomBatchRequest'{..}
          = object
              (catMaybes [("entries" .=) <$> _sscbrEntries])

--
-- /See:/ 'liaSettingsCustomBatchResponseEntry' smart constructor.
data LiaSettingsCustomBatchResponseEntry =
  LiaSettingsCustomBatchResponseEntry'
    { _lscbreGmbAccounts :: !(Maybe GmbAccounts)
    , _lscbreKind :: !(Maybe Text)
    , _lscbreLiaSettings :: !(Maybe LiaSettings)
    , _lscbreErrors :: !(Maybe Errors)
    , _lscbrePosDataProviders :: !(Maybe [PosDataProviders])
    , _lscbreBatchId :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiaSettingsCustomBatchResponseEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lscbreGmbAccounts'
--
-- * 'lscbreKind'
--
-- * 'lscbreLiaSettings'
--
-- * 'lscbreErrors'
--
-- * 'lscbrePosDataProviders'
--
-- * 'lscbreBatchId'
liaSettingsCustomBatchResponseEntry
    :: LiaSettingsCustomBatchResponseEntry
liaSettingsCustomBatchResponseEntry =
  LiaSettingsCustomBatchResponseEntry'
    { _lscbreGmbAccounts = Nothing
    , _lscbreKind = Nothing
    , _lscbreLiaSettings = Nothing
    , _lscbreErrors = Nothing
    , _lscbrePosDataProviders = Nothing
    , _lscbreBatchId = Nothing
    }


-- | The list of accessible GMB accounts.
lscbreGmbAccounts :: Lens' LiaSettingsCustomBatchResponseEntry (Maybe GmbAccounts)
lscbreGmbAccounts
  = lens _lscbreGmbAccounts
      (\ s a -> s{_lscbreGmbAccounts = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"\`content#liasettingsCustomBatchResponseEntry\`\"
lscbreKind :: Lens' LiaSettingsCustomBatchResponseEntry (Maybe Text)
lscbreKind
  = lens _lscbreKind (\ s a -> s{_lscbreKind = a})

-- | The retrieved or updated Lia settings.
lscbreLiaSettings :: Lens' LiaSettingsCustomBatchResponseEntry (Maybe LiaSettings)
lscbreLiaSettings
  = lens _lscbreLiaSettings
      (\ s a -> s{_lscbreLiaSettings = a})

-- | A list of errors defined if, and only if, the request failed.
lscbreErrors :: Lens' LiaSettingsCustomBatchResponseEntry (Maybe Errors)
lscbreErrors
  = lens _lscbreErrors (\ s a -> s{_lscbreErrors = a})

-- | The list of POS data providers.
lscbrePosDataProviders :: Lens' LiaSettingsCustomBatchResponseEntry [PosDataProviders]
lscbrePosDataProviders
  = lens _lscbrePosDataProviders
      (\ s a -> s{_lscbrePosDataProviders = a})
      . _Default
      . _Coerce

-- | The ID of the request entry to which this entry responds.
lscbreBatchId :: Lens' LiaSettingsCustomBatchResponseEntry (Maybe Word32)
lscbreBatchId
  = lens _lscbreBatchId
      (\ s a -> s{_lscbreBatchId = a})
      . mapping _Coerce

instance FromJSON LiaSettingsCustomBatchResponseEntry
         where
        parseJSON
          = withObject "LiaSettingsCustomBatchResponseEntry"
              (\ o ->
                 LiaSettingsCustomBatchResponseEntry' <$>
                   (o .:? "gmbAccounts") <*> (o .:? "kind") <*>
                     (o .:? "liaSettings")
                     <*> (o .:? "errors")
                     <*> (o .:? "posDataProviders" .!= mempty)
                     <*> (o .:? "batchId"))

instance ToJSON LiaSettingsCustomBatchResponseEntry
         where
        toJSON LiaSettingsCustomBatchResponseEntry'{..}
          = object
              (catMaybes
                 [("gmbAccounts" .=) <$> _lscbreGmbAccounts,
                  ("kind" .=) <$> _lscbreKind,
                  ("liaSettings" .=) <$> _lscbreLiaSettings,
                  ("errors" .=) <$> _lscbreErrors,
                  ("posDataProviders" .=) <$> _lscbrePosDataProviders,
                  ("batchId" .=) <$> _lscbreBatchId])

--
-- /See:/ 'accountsCustomBatchRequest' smart constructor.
newtype AccountsCustomBatchRequest =
  AccountsCustomBatchRequest'
    { _aEntries :: Maybe [AccountsCustomBatchRequestEntry]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsCustomBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aEntries'
accountsCustomBatchRequest
    :: AccountsCustomBatchRequest
accountsCustomBatchRequest = AccountsCustomBatchRequest' {_aEntries = Nothing}


-- | The request entries to be processed in the batch.
aEntries :: Lens' AccountsCustomBatchRequest [AccountsCustomBatchRequestEntry]
aEntries
  = lens _aEntries (\ s a -> s{_aEntries = a}) .
      _Default
      . _Coerce

instance FromJSON AccountsCustomBatchRequest where
        parseJSON
          = withObject "AccountsCustomBatchRequest"
              (\ o ->
                 AccountsCustomBatchRequest' <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON AccountsCustomBatchRequest where
        toJSON AccountsCustomBatchRequest'{..}
          = object (catMaybes [("entries" .=) <$> _aEntries])

--
-- /See:/ 'posCustomBatchResponseEntry' smart constructor.
data PosCustomBatchResponseEntry =
  PosCustomBatchResponseEntry'
    { _pcbrecKind :: !(Maybe Text)
    , _pcbrecStore :: !(Maybe PosStore)
    , _pcbrecInventory :: !(Maybe PosInventory)
    , _pcbrecErrors :: !(Maybe Errors)
    , _pcbrecSale :: !(Maybe PosSale)
    , _pcbrecBatchId :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PosCustomBatchResponseEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcbrecKind'
--
-- * 'pcbrecStore'
--
-- * 'pcbrecInventory'
--
-- * 'pcbrecErrors'
--
-- * 'pcbrecSale'
--
-- * 'pcbrecBatchId'
posCustomBatchResponseEntry
    :: PosCustomBatchResponseEntry
posCustomBatchResponseEntry =
  PosCustomBatchResponseEntry'
    { _pcbrecKind = Nothing
    , _pcbrecStore = Nothing
    , _pcbrecInventory = Nothing
    , _pcbrecErrors = Nothing
    , _pcbrecSale = Nothing
    , _pcbrecBatchId = Nothing
    }


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"\`content#posCustomBatchResponseEntry\`\"
pcbrecKind :: Lens' PosCustomBatchResponseEntry (Maybe Text)
pcbrecKind
  = lens _pcbrecKind (\ s a -> s{_pcbrecKind = a})

-- | The retrieved or updated store information.
pcbrecStore :: Lens' PosCustomBatchResponseEntry (Maybe PosStore)
pcbrecStore
  = lens _pcbrecStore (\ s a -> s{_pcbrecStore = a})

-- | The updated inventory information.
pcbrecInventory :: Lens' PosCustomBatchResponseEntry (Maybe PosInventory)
pcbrecInventory
  = lens _pcbrecInventory
      (\ s a -> s{_pcbrecInventory = a})

-- | A list of errors defined if, and only if, the request failed.
pcbrecErrors :: Lens' PosCustomBatchResponseEntry (Maybe Errors)
pcbrecErrors
  = lens _pcbrecErrors (\ s a -> s{_pcbrecErrors = a})

-- | The updated sale information.
pcbrecSale :: Lens' PosCustomBatchResponseEntry (Maybe PosSale)
pcbrecSale
  = lens _pcbrecSale (\ s a -> s{_pcbrecSale = a})

-- | The ID of the request entry to which this entry responds.
pcbrecBatchId :: Lens' PosCustomBatchResponseEntry (Maybe Word32)
pcbrecBatchId
  = lens _pcbrecBatchId
      (\ s a -> s{_pcbrecBatchId = a})
      . mapping _Coerce

instance FromJSON PosCustomBatchResponseEntry where
        parseJSON
          = withObject "PosCustomBatchResponseEntry"
              (\ o ->
                 PosCustomBatchResponseEntry' <$>
                   (o .:? "kind") <*> (o .:? "store") <*>
                     (o .:? "inventory")
                     <*> (o .:? "errors")
                     <*> (o .:? "sale")
                     <*> (o .:? "batchId"))

instance ToJSON PosCustomBatchResponseEntry where
        toJSON PosCustomBatchResponseEntry'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _pcbrecKind,
                  ("store" .=) <$> _pcbrecStore,
                  ("inventory" .=) <$> _pcbrecInventory,
                  ("errors" .=) <$> _pcbrecErrors,
                  ("sale" .=) <$> _pcbrecSale,
                  ("batchId" .=) <$> _pcbrecBatchId])

-- | Represents a whole or partial calendar date, such as a birthday. The
-- time of day and time zone are either specified elsewhere or are
-- insignificant. The date is relative to the Gregorian Calendar. This can
-- represent one of the following: * A full date, with non-zero year,
-- month, and day values * A month and day value, with a zero year, such as
-- an anniversary * A year on its own, with zero month and day values * A
-- year and month value, with a zero day, such as a credit card expiration
-- date Related types are google.type.TimeOfDay and
-- \`google.protobuf.Timestamp\`.
--
-- /See:/ 'date' smart constructor.
data Date =
  Date'
    { _dDay :: !(Maybe (Textual Int32))
    , _dYear :: !(Maybe (Textual Int32))
    , _dMonth :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Date' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dDay'
--
-- * 'dYear'
--
-- * 'dMonth'
date
    :: Date
date = Date' {_dDay = Nothing, _dYear = Nothing, _dMonth = Nothing}


-- | Day of a month. Must be from 1 to 31 and valid for the year and month,
-- or 0 to specify a year by itself or a year and month where the day
-- isn\'t significant.
dDay :: Lens' Date (Maybe Int32)
dDay
  = lens _dDay (\ s a -> s{_dDay = a}) .
      mapping _Coerce

-- | Year of the date. Must be from 1 to 9999, or 0 to specify a date without
-- a year.
dYear :: Lens' Date (Maybe Int32)
dYear
  = lens _dYear (\ s a -> s{_dYear = a}) .
      mapping _Coerce

-- | Month of a year. Must be from 1 to 12, or 0 to specify a year without a
-- month and day.
dMonth :: Lens' Date (Maybe Int32)
dMonth
  = lens _dMonth (\ s a -> s{_dMonth = a}) .
      mapping _Coerce

instance FromJSON Date where
        parseJSON
          = withObject "Date"
              (\ o ->
                 Date' <$>
                   (o .:? "day") <*> (o .:? "year") <*> (o .:? "month"))

instance ToJSON Date where
        toJSON Date'{..}
          = object
              (catMaybes
                 [("day" .=) <$> _dDay, ("year" .=) <$> _dYear,
                  ("month" .=) <$> _dMonth])

-- | The restocking fee. This can either be a fixed fee or a micro percent.
--
-- /See:/ 'returnPolicyOnlineRestockingFee' smart constructor.
data ReturnPolicyOnlineRestockingFee =
  ReturnPolicyOnlineRestockingFee'
    { _rporfFixedFee :: !(Maybe PriceAmount)
    , _rporfMicroPercent :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReturnPolicyOnlineRestockingFee' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rporfFixedFee'
--
-- * 'rporfMicroPercent'
returnPolicyOnlineRestockingFee
    :: ReturnPolicyOnlineRestockingFee
returnPolicyOnlineRestockingFee =
  ReturnPolicyOnlineRestockingFee'
    {_rporfFixedFee = Nothing, _rporfMicroPercent = Nothing}


-- | Fixed restocking fee.
rporfFixedFee :: Lens' ReturnPolicyOnlineRestockingFee (Maybe PriceAmount)
rporfFixedFee
  = lens _rporfFixedFee
      (\ s a -> s{_rporfFixedFee = a})

-- | Percent of total price in micros. 15,000,000 means 15% of the total
-- price would be charged.
rporfMicroPercent :: Lens' ReturnPolicyOnlineRestockingFee (Maybe Int32)
rporfMicroPercent
  = lens _rporfMicroPercent
      (\ s a -> s{_rporfMicroPercent = a})
      . mapping _Coerce

instance FromJSON ReturnPolicyOnlineRestockingFee
         where
        parseJSON
          = withObject "ReturnPolicyOnlineRestockingFee"
              (\ o ->
                 ReturnPolicyOnlineRestockingFee' <$>
                   (o .:? "fixedFee") <*> (o .:? "microPercent"))

instance ToJSON ReturnPolicyOnlineRestockingFee where
        toJSON ReturnPolicyOnlineRestockingFee'{..}
          = object
              (catMaybes
                 [("fixedFee" .=) <$> _rporfFixedFee,
                  ("microPercent" .=) <$> _rporfMicroPercent])

--
-- /See:/ 'orderreturnsLineItem' smart constructor.
data OrderreturnsLineItem =
  OrderreturnsLineItem'
    { _oliQuantity :: !(Maybe (Textual Word32))
    , _oliLineItemId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderreturnsLineItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oliQuantity'
--
-- * 'oliLineItemId'
orderreturnsLineItem
    :: OrderreturnsLineItem
orderreturnsLineItem =
  OrderreturnsLineItem' {_oliQuantity = Nothing, _oliLineItemId = Nothing}


-- | The quantity of this line item.
oliQuantity :: Lens' OrderreturnsLineItem (Maybe Word32)
oliQuantity
  = lens _oliQuantity (\ s a -> s{_oliQuantity = a}) .
      mapping _Coerce

-- | The ID of the line item. This value is assigned by Google when an order
-- is created.
oliLineItemId :: Lens' OrderreturnsLineItem (Maybe Text)
oliLineItemId
  = lens _oliLineItemId
      (\ s a -> s{_oliLineItemId = a})

instance FromJSON OrderreturnsLineItem where
        parseJSON
          = withObject "OrderreturnsLineItem"
              (\ o ->
                 OrderreturnsLineItem' <$>
                   (o .:? "quantity") <*> (o .:? "lineItemId"))

instance ToJSON OrderreturnsLineItem where
        toJSON OrderreturnsLineItem'{..}
          = object
              (catMaybes
                 [("quantity" .=) <$> _oliQuantity,
                  ("lineItemId" .=) <$> _oliLineItemId])

--
-- /See:/ 'returnaddressCustomBatchResponseEntry' smart constructor.
data ReturnaddressCustomBatchResponseEntry =
  ReturnaddressCustomBatchResponseEntry'
    { _rKind :: !(Maybe Text)
    , _rReturnAddress :: !(Maybe ReturnAddress)
    , _rErrors :: !(Maybe Errors)
    , _rBatchId :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReturnaddressCustomBatchResponseEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rKind'
--
-- * 'rReturnAddress'
--
-- * 'rErrors'
--
-- * 'rBatchId'
returnaddressCustomBatchResponseEntry
    :: ReturnaddressCustomBatchResponseEntry
returnaddressCustomBatchResponseEntry =
  ReturnaddressCustomBatchResponseEntry'
    { _rKind = Nothing
    , _rReturnAddress = Nothing
    , _rErrors = Nothing
    , _rBatchId = Nothing
    }


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"\`content#returnaddressCustomBatchResponseEntry\`\"
rKind :: Lens' ReturnaddressCustomBatchResponseEntry (Maybe Text)
rKind = lens _rKind (\ s a -> s{_rKind = a})

-- | The retrieved return address.
rReturnAddress :: Lens' ReturnaddressCustomBatchResponseEntry (Maybe ReturnAddress)
rReturnAddress
  = lens _rReturnAddress
      (\ s a -> s{_rReturnAddress = a})

-- | A list of errors defined if, and only if, the request failed.
rErrors :: Lens' ReturnaddressCustomBatchResponseEntry (Maybe Errors)
rErrors = lens _rErrors (\ s a -> s{_rErrors = a})

-- | The ID of the request entry to which this entry responds.
rBatchId :: Lens' ReturnaddressCustomBatchResponseEntry (Maybe Word32)
rBatchId
  = lens _rBatchId (\ s a -> s{_rBatchId = a}) .
      mapping _Coerce

instance FromJSON
           ReturnaddressCustomBatchResponseEntry
         where
        parseJSON
          = withObject "ReturnaddressCustomBatchResponseEntry"
              (\ o ->
                 ReturnaddressCustomBatchResponseEntry' <$>
                   (o .:? "kind") <*> (o .:? "returnAddress") <*>
                     (o .:? "errors")
                     <*> (o .:? "batchId"))

instance ToJSON ReturnaddressCustomBatchResponseEntry
         where
        toJSON ReturnaddressCustomBatchResponseEntry'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _rKind,
                  ("returnAddress" .=) <$> _rReturnAddress,
                  ("errors" .=) <$> _rErrors,
                  ("batchId" .=) <$> _rBatchId])

--
-- /See:/ 'orderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption' smart constructor.
data OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption =
  OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption'
    { _oReason :: !(Maybe Text)
    , _oDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oReason'
--
-- * 'oDescription'
orderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
    :: OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
orderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption =
  OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption'
    {_oReason = Nothing, _oDescription = Nothing}


-- | [required] Reason for the return. Acceptable values are: -
-- \"\`customerDiscretionaryReturn\`\" -
-- \"\`customerInitiatedMerchantCancel\`\" - \"\`deliveredTooLate\`\" -
-- \"\`expiredItem\`\" - \"\`invalidCoupon\`\" -
-- \"\`malformedShippingAddress\`\" - \"\`other\`\" -
-- \"\`productArrivedDamaged\`\" - \"\`productNotAsDescribed\`\" -
-- \"\`qualityNotAsExpected\`\" - \"\`undeliverableShippingAddress\`\" -
-- \"\`unsupportedPoBoxAddress\`\" - \"\`wrongProductShipped\`\"
oReason :: Lens' OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption (Maybe Text)
oReason = lens _oReason (\ s a -> s{_oReason = a})

-- | Optional description of the return reason.
oDescription :: Lens' OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption (Maybe Text)
oDescription
  = lens _oDescription (\ s a -> s{_oDescription = a})

instance FromJSON
           OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
         where
        parseJSON
          = withObject
              "OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption"
              (\ o ->
                 OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption'
                   <$> (o .:? "reason") <*> (o .:? "description"))

instance ToJSON
           OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
         where
        toJSON
          OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption'{..}
          = object
              (catMaybes
                 [("reason" .=) <$> _oReason,
                  ("description" .=) <$> _oDescription])

-- | Response message for the \`ListReturnPolicyOnline\` method.
--
-- /See:/ 'listReturnPolicyOnlineResponse' smart constructor.
newtype ListReturnPolicyOnlineResponse =
  ListReturnPolicyOnlineResponse'
    { _lrporReturnPolicies :: Maybe [ReturnPolicyOnline]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListReturnPolicyOnlineResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrporReturnPolicies'
listReturnPolicyOnlineResponse
    :: ListReturnPolicyOnlineResponse
listReturnPolicyOnlineResponse =
  ListReturnPolicyOnlineResponse' {_lrporReturnPolicies = Nothing}


-- | The retrieved return policies.
lrporReturnPolicies :: Lens' ListReturnPolicyOnlineResponse [ReturnPolicyOnline]
lrporReturnPolicies
  = lens _lrporReturnPolicies
      (\ s a -> s{_lrporReturnPolicies = a})
      . _Default
      . _Coerce

instance FromJSON ListReturnPolicyOnlineResponse
         where
        parseJSON
          = withObject "ListReturnPolicyOnlineResponse"
              (\ o ->
                 ListReturnPolicyOnlineResponse' <$>
                   (o .:? "returnPolicies" .!= mempty))

instance ToJSON ListReturnPolicyOnlineResponse where
        toJSON ListReturnPolicyOnlineResponse'{..}
          = object
              (catMaybes
                 [("returnPolicies" .=) <$> _lrporReturnPolicies])

--
-- /See:/ 'ordersListResponse' smart constructor.
data OrdersListResponse =
  OrdersListResponse'
    { _oNextPageToken :: !(Maybe Text)
    , _oKind :: !(Maybe Text)
    , _oResources :: !(Maybe [Order])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oNextPageToken'
--
-- * 'oKind'
--
-- * 'oResources'
ordersListResponse
    :: OrdersListResponse
ordersListResponse =
  OrdersListResponse'
    {_oNextPageToken = Nothing, _oKind = Nothing, _oResources = Nothing}


-- | The token for the retrieval of the next page of orders.
oNextPageToken :: Lens' OrdersListResponse (Maybe Text)
oNextPageToken
  = lens _oNextPageToken
      (\ s a -> s{_oNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersListResponse\".
oKind :: Lens' OrdersListResponse (Maybe Text)
oKind = lens _oKind (\ s a -> s{_oKind = a})

oResources :: Lens' OrdersListResponse [Order]
oResources
  = lens _oResources (\ s a -> s{_oResources = a}) .
      _Default
      . _Coerce

instance FromJSON OrdersListResponse where
        parseJSON
          = withObject "OrdersListResponse"
              (\ o ->
                 OrdersListResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "kind") <*>
                     (o .:? "resources" .!= mempty))

instance ToJSON OrdersListResponse where
        toJSON OrdersListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _oNextPageToken,
                  ("kind" .=) <$> _oKind,
                  ("resources" .=) <$> _oResources])

--
-- /See:/ 'ordersRefundOrderRequest' smart constructor.
data OrdersRefundOrderRequest =
  OrdersRefundOrderRequest'
    { _ororAmount :: !(Maybe MonetaryAmount)
    , _ororFullRefund :: !(Maybe Bool)
    , _ororReason :: !(Maybe Text)
    , _ororOperationId :: !(Maybe Text)
    , _ororReasonText :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersRefundOrderRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ororAmount'
--
-- * 'ororFullRefund'
--
-- * 'ororReason'
--
-- * 'ororOperationId'
--
-- * 'ororReasonText'
ordersRefundOrderRequest
    :: OrdersRefundOrderRequest
ordersRefundOrderRequest =
  OrdersRefundOrderRequest'
    { _ororAmount = Nothing
    , _ororFullRefund = Nothing
    , _ororReason = Nothing
    , _ororOperationId = Nothing
    , _ororReasonText = Nothing
    }


-- | The amount that is refunded. If this is not the first refund for the
-- order, this should be the newly refunded amount.
ororAmount :: Lens' OrdersRefundOrderRequest (Maybe MonetaryAmount)
ororAmount
  = lens _ororAmount (\ s a -> s{_ororAmount = a})

-- | If true, the full order will be refunded, including shipping. If this is
-- true, amount should not be provided and will be ignored.
ororFullRefund :: Lens' OrdersRefundOrderRequest (Maybe Bool)
ororFullRefund
  = lens _ororFullRefund
      (\ s a -> s{_ororFullRefund = a})

-- | The reason for the refund. Acceptable values are: -
-- \"\`courtesyAdjustment\`\" - \"\`other\`\"
ororReason :: Lens' OrdersRefundOrderRequest (Maybe Text)
ororReason
  = lens _ororReason (\ s a -> s{_ororReason = a})

-- | The ID of the operation. Unique across all operations for a given order.
ororOperationId :: Lens' OrdersRefundOrderRequest (Maybe Text)
ororOperationId
  = lens _ororOperationId
      (\ s a -> s{_ororOperationId = a})

-- | The explanation of the reason.
ororReasonText :: Lens' OrdersRefundOrderRequest (Maybe Text)
ororReasonText
  = lens _ororReasonText
      (\ s a -> s{_ororReasonText = a})

instance FromJSON OrdersRefundOrderRequest where
        parseJSON
          = withObject "OrdersRefundOrderRequest"
              (\ o ->
                 OrdersRefundOrderRequest' <$>
                   (o .:? "amount") <*> (o .:? "fullRefund") <*>
                     (o .:? "reason")
                     <*> (o .:? "operationId")
                     <*> (o .:? "reasonText"))

instance ToJSON OrdersRefundOrderRequest where
        toJSON OrdersRefundOrderRequest'{..}
          = object
              (catMaybes
                 [("amount" .=) <$> _ororAmount,
                  ("fullRefund" .=) <$> _ororFullRefund,
                  ("reason" .=) <$> _ororReason,
                  ("operationId" .=) <$> _ororOperationId,
                  ("reasonText" .=) <$> _ororReasonText])

--
-- /See:/ 'ordersUpdateLineItemShippingDetailsResponse' smart constructor.
data OrdersUpdateLineItemShippingDetailsResponse =
  OrdersUpdateLineItemShippingDetailsResponse'
    { _oulisdrKind :: !(Maybe Text)
    , _oulisdrExecutionStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersUpdateLineItemShippingDetailsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oulisdrKind'
--
-- * 'oulisdrExecutionStatus'
ordersUpdateLineItemShippingDetailsResponse
    :: OrdersUpdateLineItemShippingDetailsResponse
ordersUpdateLineItemShippingDetailsResponse =
  OrdersUpdateLineItemShippingDetailsResponse'
    {_oulisdrKind = Nothing, _oulisdrExecutionStatus = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersUpdateLineItemShippingDetailsResponse\".
oulisdrKind :: Lens' OrdersUpdateLineItemShippingDetailsResponse (Maybe Text)
oulisdrKind
  = lens _oulisdrKind (\ s a -> s{_oulisdrKind = a})

-- | The status of the execution. Acceptable values are: - \"\`duplicate\`\"
-- - \"\`executed\`\"
oulisdrExecutionStatus :: Lens' OrdersUpdateLineItemShippingDetailsResponse (Maybe Text)
oulisdrExecutionStatus
  = lens _oulisdrExecutionStatus
      (\ s a -> s{_oulisdrExecutionStatus = a})

instance FromJSON
           OrdersUpdateLineItemShippingDetailsResponse
         where
        parseJSON
          = withObject
              "OrdersUpdateLineItemShippingDetailsResponse"
              (\ o ->
                 OrdersUpdateLineItemShippingDetailsResponse' <$>
                   (o .:? "kind") <*> (o .:? "executionStatus"))

instance ToJSON
           OrdersUpdateLineItemShippingDetailsResponse
         where
        toJSON
          OrdersUpdateLineItemShippingDetailsResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _oulisdrKind,
                  ("executionStatus" .=) <$> _oulisdrExecutionStatus])

--
-- /See:/ 'orderreturnsRefundOperation' smart constructor.
data OrderreturnsRefundOperation =
  OrderreturnsRefundOperation'
    { _oroFullRefund :: !(Maybe Bool)
    , _oroPartialRefund :: !(Maybe OrderreturnsPartialRefund)
    , _oroReturnRefundReason :: !(Maybe Text)
    , _oroPaymentType :: !(Maybe Text)
    , _oroReasonText :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderreturnsRefundOperation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oroFullRefund'
--
-- * 'oroPartialRefund'
--
-- * 'oroReturnRefundReason'
--
-- * 'oroPaymentType'
--
-- * 'oroReasonText'
orderreturnsRefundOperation
    :: OrderreturnsRefundOperation
orderreturnsRefundOperation =
  OrderreturnsRefundOperation'
    { _oroFullRefund = Nothing
    , _oroPartialRefund = Nothing
    , _oroReturnRefundReason = Nothing
    , _oroPaymentType = Nothing
    , _oroReasonText = Nothing
    }


-- | If true, the item will be fully refunded. Allowed only when payment_type
-- is FOP. Merchant can choose this refund option to indicate the full
-- remaining amount of corresponding object to be refunded to the customer
-- via FOP.
oroFullRefund :: Lens' OrderreturnsRefundOperation (Maybe Bool)
oroFullRefund
  = lens _oroFullRefund
      (\ s a -> s{_oroFullRefund = a})

-- | If this is set, the item will be partially refunded. Merchant can choose
-- this refund option to specify the customized amount that to be refunded
-- to the customer.
oroPartialRefund :: Lens' OrderreturnsRefundOperation (Maybe OrderreturnsPartialRefund)
oroPartialRefund
  = lens _oroPartialRefund
      (\ s a -> s{_oroPartialRefund = a})

-- | Code of the refund reason.
oroReturnRefundReason :: Lens' OrderreturnsRefundOperation (Maybe Text)
oroReturnRefundReason
  = lens _oroReturnRefundReason
      (\ s a -> s{_oroReturnRefundReason = a})

-- | The payment way of issuing refund. Default value is ORIGINAL_FOP if not
-- set.
oroPaymentType :: Lens' OrderreturnsRefundOperation (Maybe Text)
oroPaymentType
  = lens _oroPaymentType
      (\ s a -> s{_oroPaymentType = a})

-- | The explanation of the reason.
oroReasonText :: Lens' OrderreturnsRefundOperation (Maybe Text)
oroReasonText
  = lens _oroReasonText
      (\ s a -> s{_oroReasonText = a})

instance FromJSON OrderreturnsRefundOperation where
        parseJSON
          = withObject "OrderreturnsRefundOperation"
              (\ o ->
                 OrderreturnsRefundOperation' <$>
                   (o .:? "fullRefund") <*> (o .:? "partialRefund") <*>
                     (o .:? "returnRefundReason")
                     <*> (o .:? "paymentType")
                     <*> (o .:? "reasonText"))

instance ToJSON OrderreturnsRefundOperation where
        toJSON OrderreturnsRefundOperation'{..}
          = object
              (catMaybes
                 [("fullRefund" .=) <$> _oroFullRefund,
                  ("partialRefund" .=) <$> _oroPartialRefund,
                  ("returnRefundReason" .=) <$> _oroReturnRefundReason,
                  ("paymentType" .=) <$> _oroPaymentType,
                  ("reasonText" .=) <$> _oroReasonText])

-- | A non-empty list of row or column headers for a table. Exactly one of
-- \`prices\`, \`weights\`, \`numItems\`, \`postalCodeGroupNames\`, or
-- \`location\` must be set.
--
-- /See:/ 'headers' smart constructor.
data Headers =
  Headers'
    { _hNumberOfItems :: !(Maybe [Text])
    , _hPostalCodeGroupNames :: !(Maybe [Text])
    , _hPrices :: !(Maybe [Price])
    , _hWeights :: !(Maybe [Weight])
    , _hLocations :: !(Maybe [LocationIdSet])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Headers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hNumberOfItems'
--
-- * 'hPostalCodeGroupNames'
--
-- * 'hPrices'
--
-- * 'hWeights'
--
-- * 'hLocations'
headers
    :: Headers
headers =
  Headers'
    { _hNumberOfItems = Nothing
    , _hPostalCodeGroupNames = Nothing
    , _hPrices = Nothing
    , _hWeights = Nothing
    , _hLocations = Nothing
    }


-- | A list of inclusive number of items upper bounds. The last value can be
-- \`\"infinity\"\`. For example \`[\"10\", \"50\", \"infinity\"]\`
-- represents the headers \"\<= 10 items\", \"\<= 50 items\", and \"> 50
-- items\". Must be non-empty. Can only be set if all other fields are not
-- set.
hNumberOfItems :: Lens' Headers [Text]
hNumberOfItems
  = lens _hNumberOfItems
      (\ s a -> s{_hNumberOfItems = a})
      . _Default
      . _Coerce

-- | A list of postal group names. The last value can be \`\"all other
-- locations\"\`. Example: \`[\"zone 1\", \"zone 2\", \"all other
-- locations\"]\`. The referred postal code groups must match the delivery
-- country of the service. Must be non-empty. Can only be set if all other
-- fields are not set.
hPostalCodeGroupNames :: Lens' Headers [Text]
hPostalCodeGroupNames
  = lens _hPostalCodeGroupNames
      (\ s a -> s{_hPostalCodeGroupNames = a})
      . _Default
      . _Coerce

-- | A list of inclusive order price upper bounds. The last price\'s value
-- can be \`\"infinity\"\`. For example \`[{\"value\": \"10\",
-- \"currency\": \"USD\"}, {\"value\": \"500\", \"currency\": \"USD\"},
-- {\"value\": \"infinity\", \"currency\": \"USD\"}]\` represents the
-- headers \"\<= $10\", \"\<= $500\", and \"> $500\". All prices within a
-- service must have the same currency. Must be non-empty. Can only be set
-- if all other fields are not set.
hPrices :: Lens' Headers [Price]
hPrices
  = lens _hPrices (\ s a -> s{_hPrices = a}) . _Default
      . _Coerce

-- | A list of inclusive order weight upper bounds. The last weight\'s value
-- can be \`\"infinity\"\`. For example \`[{\"value\": \"10\", \"unit\":
-- \"kg\"}, {\"value\": \"50\", \"unit\": \"kg\"}, {\"value\":
-- \"infinity\", \"unit\": \"kg\"}]\` represents the headers \"\<= 10kg\",
-- \"\<= 50kg\", and \"> 50kg\". All weights within a service must have the
-- same unit. Must be non-empty. Can only be set if all other fields are
-- not set.
hWeights :: Lens' Headers [Weight]
hWeights
  = lens _hWeights (\ s a -> s{_hWeights = a}) .
      _Default
      . _Coerce

-- | A list of location ID sets. Must be non-empty. Can only be set if all
-- other fields are not set.
hLocations :: Lens' Headers [LocationIdSet]
hLocations
  = lens _hLocations (\ s a -> s{_hLocations = a}) .
      _Default
      . _Coerce

instance FromJSON Headers where
        parseJSON
          = withObject "Headers"
              (\ o ->
                 Headers' <$>
                   (o .:? "numberOfItems" .!= mempty) <*>
                     (o .:? "postalCodeGroupNames" .!= mempty)
                     <*> (o .:? "prices" .!= mempty)
                     <*> (o .:? "weights" .!= mempty)
                     <*> (o .:? "locations" .!= mempty))

instance ToJSON Headers where
        toJSON Headers'{..}
          = object
              (catMaybes
                 [("numberOfItems" .=) <$> _hNumberOfItems,
                  ("postalCodeGroupNames" .=) <$>
                    _hPostalCodeGroupNames,
                  ("prices" .=) <$> _hPrices,
                  ("weights" .=) <$> _hWeights,
                  ("locations" .=) <$> _hLocations])

-- | Return address resource.
--
-- /See:/ 'returnAddress' smart constructor.
data ReturnAddress =
  ReturnAddress'
    { _raCountry :: !(Maybe Text)
    , _raKind :: !(Maybe Text)
    , _raAddress :: !(Maybe ReturnAddressAddress)
    , _raReturnAddressId :: !(Maybe Text)
    , _raPhoneNumber :: !(Maybe Text)
    , _raLabel :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReturnAddress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'raCountry'
--
-- * 'raKind'
--
-- * 'raAddress'
--
-- * 'raReturnAddressId'
--
-- * 'raPhoneNumber'
--
-- * 'raLabel'
returnAddress
    :: ReturnAddress
returnAddress =
  ReturnAddress'
    { _raCountry = Nothing
    , _raKind = Nothing
    , _raAddress = Nothing
    , _raReturnAddressId = Nothing
    , _raPhoneNumber = Nothing
    , _raLabel = Nothing
    }


-- | Required. The country of sale where the return address is applicable.
raCountry :: Lens' ReturnAddress (Maybe Text)
raCountry
  = lens _raCountry (\ s a -> s{_raCountry = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"\`content#returnAddress\`\"
raKind :: Lens' ReturnAddress (Maybe Text)
raKind = lens _raKind (\ s a -> s{_raKind = a})

-- | Required. The address.
raAddress :: Lens' ReturnAddress (Maybe ReturnAddressAddress)
raAddress
  = lens _raAddress (\ s a -> s{_raAddress = a})

-- | Return address ID generated by Google.
raReturnAddressId :: Lens' ReturnAddress (Maybe Text)
raReturnAddressId
  = lens _raReturnAddressId
      (\ s a -> s{_raReturnAddressId = a})

-- | Required. The merchant\'s contact phone number regarding the return.
raPhoneNumber :: Lens' ReturnAddress (Maybe Text)
raPhoneNumber
  = lens _raPhoneNumber
      (\ s a -> s{_raPhoneNumber = a})

-- | Required. The user-defined label of the return address. For the default
-- address, use the label \"default\".
raLabel :: Lens' ReturnAddress (Maybe Text)
raLabel = lens _raLabel (\ s a -> s{_raLabel = a})

instance FromJSON ReturnAddress where
        parseJSON
          = withObject "ReturnAddress"
              (\ o ->
                 ReturnAddress' <$>
                   (o .:? "country") <*> (o .:? "kind") <*>
                     (o .:? "address")
                     <*> (o .:? "returnAddressId")
                     <*> (o .:? "phoneNumber")
                     <*> (o .:? "label"))

instance ToJSON ReturnAddress where
        toJSON ReturnAddress'{..}
          = object
              (catMaybes
                 [("country" .=) <$> _raCountry,
                  ("kind" .=) <$> _raKind,
                  ("address" .=) <$> _raAddress,
                  ("returnAddressId" .=) <$> _raReturnAddressId,
                  ("phoneNumber" .=) <$> _raPhoneNumber,
                  ("label" .=) <$> _raLabel])

--
-- /See:/ 'unitInvoiceAdditionalCharge' smart constructor.
data UnitInvoiceAdditionalCharge =
  UnitInvoiceAdditionalCharge'
    { _uiacAdditionalChargeAmount :: !(Maybe Amount)
    , _uiacType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UnitInvoiceAdditionalCharge' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uiacAdditionalChargeAmount'
--
-- * 'uiacType'
unitInvoiceAdditionalCharge
    :: UnitInvoiceAdditionalCharge
unitInvoiceAdditionalCharge =
  UnitInvoiceAdditionalCharge'
    {_uiacAdditionalChargeAmount = Nothing, _uiacType = Nothing}


-- | [required] Amount of the additional charge.
uiacAdditionalChargeAmount :: Lens' UnitInvoiceAdditionalCharge (Maybe Amount)
uiacAdditionalChargeAmount
  = lens _uiacAdditionalChargeAmount
      (\ s a -> s{_uiacAdditionalChargeAmount = a})

-- | [required] Type of the additional charge. Acceptable values are: -
-- \"\`shipping\`\"
uiacType :: Lens' UnitInvoiceAdditionalCharge (Maybe Text)
uiacType = lens _uiacType (\ s a -> s{_uiacType = a})

instance FromJSON UnitInvoiceAdditionalCharge where
        parseJSON
          = withObject "UnitInvoiceAdditionalCharge"
              (\ o ->
                 UnitInvoiceAdditionalCharge' <$>
                   (o .:? "additionalChargeAmount") <*> (o .:? "type"))

instance ToJSON UnitInvoiceAdditionalCharge where
        toJSON UnitInvoiceAdditionalCharge'{..}
          = object
              (catMaybes
                 [("additionalChargeAmount" .=) <$>
                    _uiacAdditionalChargeAmount,
                  ("type" .=) <$> _uiacType])

-- | The response message for the \`ListCsses\` method
--
-- /See:/ 'listCssesResponse' smart constructor.
data ListCssesResponse =
  ListCssesResponse'
    { _lNextPageToken :: !(Maybe Text)
    , _lCsses :: !(Maybe [Css])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListCssesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lNextPageToken'
--
-- * 'lCsses'
listCssesResponse
    :: ListCssesResponse
listCssesResponse =
  ListCssesResponse' {_lNextPageToken = Nothing, _lCsses = Nothing}


-- | A token, which can be sent as \`page_token\` to retrieve the next page.
-- If this field is omitted, there are no subsequent pages.
lNextPageToken :: Lens' ListCssesResponse (Maybe Text)
lNextPageToken
  = lens _lNextPageToken
      (\ s a -> s{_lNextPageToken = a})

-- | The CSS domains affiliated with the specified CSS group.
lCsses :: Lens' ListCssesResponse [Css]
lCsses
  = lens _lCsses (\ s a -> s{_lCsses = a}) . _Default .
      _Coerce

instance FromJSON ListCssesResponse where
        parseJSON
          = withObject "ListCssesResponse"
              (\ o ->
                 ListCssesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "csses" .!= mempty))

instance ToJSON ListCssesResponse where
        toJSON ListCssesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lNextPageToken,
                  ("csses" .=) <$> _lCsses])

--
-- /See:/ 'orderreturnsCreateOrderReturnResponse' smart constructor.
data OrderreturnsCreateOrderReturnResponse =
  OrderreturnsCreateOrderReturnResponse'
    { _ocorrOrderReturn :: !(Maybe MerchantOrderReturn)
    , _ocorrKind :: !(Maybe Text)
    , _ocorrExecutionStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderreturnsCreateOrderReturnResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocorrOrderReturn'
--
-- * 'ocorrKind'
--
-- * 'ocorrExecutionStatus'
orderreturnsCreateOrderReturnResponse
    :: OrderreturnsCreateOrderReturnResponse
orderreturnsCreateOrderReturnResponse =
  OrderreturnsCreateOrderReturnResponse'
    { _ocorrOrderReturn = Nothing
    , _ocorrKind = Nothing
    , _ocorrExecutionStatus = Nothing
    }


-- | Created order return.
ocorrOrderReturn :: Lens' OrderreturnsCreateOrderReturnResponse (Maybe MerchantOrderReturn)
ocorrOrderReturn
  = lens _ocorrOrderReturn
      (\ s a -> s{_ocorrOrderReturn = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#orderreturnsCreateOrderReturnResponse\".
ocorrKind :: Lens' OrderreturnsCreateOrderReturnResponse (Maybe Text)
ocorrKind
  = lens _ocorrKind (\ s a -> s{_ocorrKind = a})

-- | The status of the execution. Acceptable values are: - \"\`duplicate\`\"
-- - \"\`executed\`\"
ocorrExecutionStatus :: Lens' OrderreturnsCreateOrderReturnResponse (Maybe Text)
ocorrExecutionStatus
  = lens _ocorrExecutionStatus
      (\ s a -> s{_ocorrExecutionStatus = a})

instance FromJSON
           OrderreturnsCreateOrderReturnResponse
         where
        parseJSON
          = withObject "OrderreturnsCreateOrderReturnResponse"
              (\ o ->
                 OrderreturnsCreateOrderReturnResponse' <$>
                   (o .:? "orderReturn") <*> (o .:? "kind") <*>
                     (o .:? "executionStatus"))

instance ToJSON OrderreturnsCreateOrderReturnResponse
         where
        toJSON OrderreturnsCreateOrderReturnResponse'{..}
          = object
              (catMaybes
                 [("orderReturn" .=) <$> _ocorrOrderReturn,
                  ("kind" .=) <$> _ocorrKind,
                  ("executionStatus" .=) <$> _ocorrExecutionStatus])

--
-- /See:/ 'ordersShipLineItemsResponse' smart constructor.
data OrdersShipLineItemsResponse =
  OrdersShipLineItemsResponse'
    { _oslirKind :: !(Maybe Text)
    , _oslirExecutionStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersShipLineItemsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oslirKind'
--
-- * 'oslirExecutionStatus'
ordersShipLineItemsResponse
    :: OrdersShipLineItemsResponse
ordersShipLineItemsResponse =
  OrdersShipLineItemsResponse'
    {_oslirKind = Nothing, _oslirExecutionStatus = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersShipLineItemsResponse\".
oslirKind :: Lens' OrdersShipLineItemsResponse (Maybe Text)
oslirKind
  = lens _oslirKind (\ s a -> s{_oslirKind = a})

-- | The status of the execution. Acceptable values are: - \"\`duplicate\`\"
-- - \"\`executed\`\"
oslirExecutionStatus :: Lens' OrdersShipLineItemsResponse (Maybe Text)
oslirExecutionStatus
  = lens _oslirExecutionStatus
      (\ s a -> s{_oslirExecutionStatus = a})

instance FromJSON OrdersShipLineItemsResponse where
        parseJSON
          = withObject "OrdersShipLineItemsResponse"
              (\ o ->
                 OrdersShipLineItemsResponse' <$>
                   (o .:? "kind") <*> (o .:? "executionStatus"))

instance ToJSON OrdersShipLineItemsResponse where
        toJSON OrdersShipLineItemsResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _oslirKind,
                  ("executionStatus" .=) <$> _oslirExecutionStatus])

--
-- /See:/ 'unitInvoiceTaxLine' smart constructor.
data UnitInvoiceTaxLine =
  UnitInvoiceTaxLine'
    { _uitlTaxName :: !(Maybe Text)
    , _uitlTaxType :: !(Maybe Text)
    , _uitlTaxAmount :: !(Maybe Price)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UnitInvoiceTaxLine' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uitlTaxName'
--
-- * 'uitlTaxType'
--
-- * 'uitlTaxAmount'
unitInvoiceTaxLine
    :: UnitInvoiceTaxLine
unitInvoiceTaxLine =
  UnitInvoiceTaxLine'
    {_uitlTaxName = Nothing, _uitlTaxType = Nothing, _uitlTaxAmount = Nothing}


-- | Optional name of the tax type. This should only be provided if
-- \`taxType\` is \`otherFeeTax\`.
uitlTaxName :: Lens' UnitInvoiceTaxLine (Maybe Text)
uitlTaxName
  = lens _uitlTaxName (\ s a -> s{_uitlTaxName = a})

-- | [required] Type of the tax. Acceptable values are: - \"\`otherFee\`\" -
-- \"\`otherFeeTax\`\" - \"\`sales\`\"
uitlTaxType :: Lens' UnitInvoiceTaxLine (Maybe Text)
uitlTaxType
  = lens _uitlTaxType (\ s a -> s{_uitlTaxType = a})

-- | [required] Tax amount for the tax type.
uitlTaxAmount :: Lens' UnitInvoiceTaxLine (Maybe Price)
uitlTaxAmount
  = lens _uitlTaxAmount
      (\ s a -> s{_uitlTaxAmount = a})

instance FromJSON UnitInvoiceTaxLine where
        parseJSON
          = withObject "UnitInvoiceTaxLine"
              (\ o ->
                 UnitInvoiceTaxLine' <$>
                   (o .:? "taxName") <*> (o .:? "taxType") <*>
                     (o .:? "taxAmount"))

instance ToJSON UnitInvoiceTaxLine where
        toJSON UnitInvoiceTaxLine'{..}
          = object
              (catMaybes
                 [("taxName" .=) <$> _uitlTaxName,
                  ("taxType" .=) <$> _uitlTaxType,
                  ("taxAmount" .=) <$> _uitlTaxAmount])

--
-- /See:/ 'ordersCreateTestReturnRequest' smart constructor.
newtype OrdersCreateTestReturnRequest =
  OrdersCreateTestReturnRequest'
    { _octrrItems :: Maybe [OrdersCustomBatchRequestEntryCreateTestReturnReturnItem]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersCreateTestReturnRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'octrrItems'
ordersCreateTestReturnRequest
    :: OrdersCreateTestReturnRequest
ordersCreateTestReturnRequest =
  OrdersCreateTestReturnRequest' {_octrrItems = Nothing}


-- | Returned items.
octrrItems :: Lens' OrdersCreateTestReturnRequest [OrdersCustomBatchRequestEntryCreateTestReturnReturnItem]
octrrItems
  = lens _octrrItems (\ s a -> s{_octrrItems = a}) .
      _Default
      . _Coerce

instance FromJSON OrdersCreateTestReturnRequest where
        parseJSON
          = withObject "OrdersCreateTestReturnRequest"
              (\ o ->
                 OrdersCreateTestReturnRequest' <$>
                   (o .:? "items" .!= mempty))

instance ToJSON OrdersCreateTestReturnRequest where
        toJSON OrdersCreateTestReturnRequest'{..}
          = object (catMaybes [("items" .=) <$> _octrrItems])

-- | Request message for the ReportService.Search method.
--
-- /See:/ 'searchRequest' smart constructor.
data SearchRequest =
  SearchRequest'
    { _srQuery :: !(Maybe Text)
    , _srPageToken :: !(Maybe Text)
    , _srPageSize :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srQuery'
--
-- * 'srPageToken'
--
-- * 'srPageSize'
searchRequest
    :: SearchRequest
searchRequest =
  SearchRequest'
    {_srQuery = Nothing, _srPageToken = Nothing, _srPageSize = Nothing}


-- | Required. Query that defines performance metrics to retrieve and
-- dimensions according to which the metrics are to be segmented.
srQuery :: Lens' SearchRequest (Maybe Text)
srQuery = lens _srQuery (\ s a -> s{_srQuery = a})

-- | Token of the page to retrieve. If not specified, the first page of
-- results is returned. In order to request the next page of results, the
-- value obtained from \`next_page_token\` in the previous response should
-- be used.
srPageToken :: Lens' SearchRequest (Maybe Text)
srPageToken
  = lens _srPageToken (\ s a -> s{_srPageToken = a})

-- | Number of ReportRows to retrieve in a single page. Defaults to the
-- maximum of 1000. Values above 1000 are coerced to 1000.
srPageSize :: Lens' SearchRequest (Maybe Int32)
srPageSize
  = lens _srPageSize (\ s a -> s{_srPageSize = a}) .
      mapping _Coerce

instance FromJSON SearchRequest where
        parseJSON
          = withObject "SearchRequest"
              (\ o ->
                 SearchRequest' <$>
                   (o .:? "query") <*> (o .:? "pageToken") <*>
                     (o .:? "pageSize"))

instance ToJSON SearchRequest where
        toJSON SearchRequest'{..}
          = object
              (catMaybes
                 [("query" .=) <$> _srQuery,
                  ("pageToken" .=) <$> _srPageToken,
                  ("pageSize" .=) <$> _srPageSize])

-- | Label assigned by CSS domain or CSS group to one of its sub-accounts.
--
-- /See:/ 'accountLabel' smart constructor.
data AccountLabel =
  AccountLabel'
    { _aLabelType :: !(Maybe AccountLabelLabelType)
    , _aAccountId :: !(Maybe (Textual Int64))
    , _aName :: !(Maybe Text)
    , _aLabelId :: !(Maybe (Textual Int64))
    , _aDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountLabel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aLabelType'
--
-- * 'aAccountId'
--
-- * 'aName'
--
-- * 'aLabelId'
--
-- * 'aDescription'
accountLabel
    :: AccountLabel
accountLabel =
  AccountLabel'
    { _aLabelType = Nothing
    , _aAccountId = Nothing
    , _aName = Nothing
    , _aLabelId = Nothing
    , _aDescription = Nothing
    }


-- | Output only. The type of this label.
aLabelType :: Lens' AccountLabel (Maybe AccountLabelLabelType)
aLabelType
  = lens _aLabelType (\ s a -> s{_aLabelType = a})

-- | Immutable. The ID of account this label belongs to.
aAccountId :: Lens' AccountLabel (Maybe Int64)
aAccountId
  = lens _aAccountId (\ s a -> s{_aAccountId = a}) .
      mapping _Coerce

-- | The display name of this label.
aName :: Lens' AccountLabel (Maybe Text)
aName = lens _aName (\ s a -> s{_aName = a})

-- | Output only. The ID of the label.
aLabelId :: Lens' AccountLabel (Maybe Int64)
aLabelId
  = lens _aLabelId (\ s a -> s{_aLabelId = a}) .
      mapping _Coerce

-- | The description of this label.
aDescription :: Lens' AccountLabel (Maybe Text)
aDescription
  = lens _aDescription (\ s a -> s{_aDescription = a})

instance FromJSON AccountLabel where
        parseJSON
          = withObject "AccountLabel"
              (\ o ->
                 AccountLabel' <$>
                   (o .:? "labelType") <*> (o .:? "accountId") <*>
                     (o .:? "name")
                     <*> (o .:? "labelId")
                     <*> (o .:? "description"))

instance ToJSON AccountLabel where
        toJSON AccountLabel'{..}
          = object
              (catMaybes
                 [("labelType" .=) <$> _aLabelType,
                  ("accountId" .=) <$> _aAccountId,
                  ("name" .=) <$> _aName, ("labelId" .=) <$> _aLabelId,
                  ("description" .=) <$> _aDescription])

-- | Definition of a fixed time period.
--
-- /See:/ 'repricingRuleEffectiveTimeFixedTimePeriod' smart constructor.
data RepricingRuleEffectiveTimeFixedTimePeriod =
  RepricingRuleEffectiveTimeFixedTimePeriod'
    { _rretftpStartTime :: !(Maybe DateTime')
    , _rretftpEndTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RepricingRuleEffectiveTimeFixedTimePeriod' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rretftpStartTime'
--
-- * 'rretftpEndTime'
repricingRuleEffectiveTimeFixedTimePeriod
    :: RepricingRuleEffectiveTimeFixedTimePeriod
repricingRuleEffectiveTimeFixedTimePeriod =
  RepricingRuleEffectiveTimeFixedTimePeriod'
    {_rretftpStartTime = Nothing, _rretftpEndTime = Nothing}


-- | The start time (inclusive) of the period. It can only be hour
-- granularity.
rretftpStartTime :: Lens' RepricingRuleEffectiveTimeFixedTimePeriod (Maybe UTCTime)
rretftpStartTime
  = lens _rretftpStartTime
      (\ s a -> s{_rretftpStartTime = a})
      . mapping _DateTime

-- | The end time (exclusive) of the period. It can only be hour granularity.
rretftpEndTime :: Lens' RepricingRuleEffectiveTimeFixedTimePeriod (Maybe UTCTime)
rretftpEndTime
  = lens _rretftpEndTime
      (\ s a -> s{_rretftpEndTime = a})
      . mapping _DateTime

instance FromJSON
           RepricingRuleEffectiveTimeFixedTimePeriod
         where
        parseJSON
          = withObject
              "RepricingRuleEffectiveTimeFixedTimePeriod"
              (\ o ->
                 RepricingRuleEffectiveTimeFixedTimePeriod' <$>
                   (o .:? "startTime") <*> (o .:? "endTime"))

instance ToJSON
           RepricingRuleEffectiveTimeFixedTimePeriod
         where
        toJSON RepricingRuleEffectiveTimeFixedTimePeriod'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _rretftpStartTime,
                  ("endTime" .=) <$> _rretftpEndTime])

--
-- /See:/ 'accountsUpdateLabelsRequest' smart constructor.
newtype AccountsUpdateLabelsRequest =
  AccountsUpdateLabelsRequest'
    { _aulrLabelIds :: Maybe [Textual Word64]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsUpdateLabelsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aulrLabelIds'
accountsUpdateLabelsRequest
    :: AccountsUpdateLabelsRequest
accountsUpdateLabelsRequest =
  AccountsUpdateLabelsRequest' {_aulrLabelIds = Nothing}


-- | The IDs of labels that should be assigned to the account.
aulrLabelIds :: Lens' AccountsUpdateLabelsRequest [Word64]
aulrLabelIds
  = lens _aulrLabelIds (\ s a -> s{_aulrLabelIds = a})
      . _Default
      . _Coerce

instance FromJSON AccountsUpdateLabelsRequest where
        parseJSON
          = withObject "AccountsUpdateLabelsRequest"
              (\ o ->
                 AccountsUpdateLabelsRequest' <$>
                   (o .:? "labelIds" .!= mempty))

instance ToJSON AccountsUpdateLabelsRequest where
        toJSON AccountsUpdateLabelsRequest'{..}
          = object
              (catMaybes [("labelIds" .=) <$> _aulrLabelIds])

-- | The merchant account\'s shipping settings. All methods except
-- getsupportedcarriers and getsupportedholidays require the admin role.
--
-- /See:/ 'shippingSettings' smart constructor.
data ShippingSettings =
  ShippingSettings'
    { _ssPostalCodeGroups :: !(Maybe [PostalCodeGroup])
    , _ssAccountId :: !(Maybe (Textual Word64))
    , _ssServices :: !(Maybe [Service])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ShippingSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssPostalCodeGroups'
--
-- * 'ssAccountId'
--
-- * 'ssServices'
shippingSettings
    :: ShippingSettings
shippingSettings =
  ShippingSettings'
    { _ssPostalCodeGroups = Nothing
    , _ssAccountId = Nothing
    , _ssServices = Nothing
    }


-- | A list of postal code groups that can be referred to in \`services\`.
-- Optional.
ssPostalCodeGroups :: Lens' ShippingSettings [PostalCodeGroup]
ssPostalCodeGroups
  = lens _ssPostalCodeGroups
      (\ s a -> s{_ssPostalCodeGroups = a})
      . _Default
      . _Coerce

-- | The ID of the account to which these account shipping settings belong.
-- Ignored upon update, always present in get request responses.
ssAccountId :: Lens' ShippingSettings (Maybe Word64)
ssAccountId
  = lens _ssAccountId (\ s a -> s{_ssAccountId = a}) .
      mapping _Coerce

-- | The target account\'s list of services. Optional.
ssServices :: Lens' ShippingSettings [Service]
ssServices
  = lens _ssServices (\ s a -> s{_ssServices = a}) .
      _Default
      . _Coerce

instance FromJSON ShippingSettings where
        parseJSON
          = withObject "ShippingSettings"
              (\ o ->
                 ShippingSettings' <$>
                   (o .:? "postalCodeGroups" .!= mempty) <*>
                     (o .:? "accountId")
                     <*> (o .:? "services" .!= mempty))

instance ToJSON ShippingSettings where
        toJSON ShippingSettings'{..}
          = object
              (catMaybes
                 [("postalCodeGroups" .=) <$> _ssPostalCodeGroups,
                  ("accountId" .=) <$> _ssAccountId,
                  ("services" .=) <$> _ssServices])

-- | A list of postal codes that defines the region area. Note: All regions
-- defined using postal codes are accessible via the account\'s
-- \`ShippingSettings.postalCodeGroups\` resource.
--
-- /See:/ 'regionPostalCodeArea' smart constructor.
data RegionPostalCodeArea =
  RegionPostalCodeArea'
    { _rpcaRegionCode :: !(Maybe Text)
    , _rpcaPostalCodes :: !(Maybe [RegionPostalCodeAreaPostalCodeRange])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionPostalCodeArea' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpcaRegionCode'
--
-- * 'rpcaPostalCodes'
regionPostalCodeArea
    :: RegionPostalCodeArea
regionPostalCodeArea =
  RegionPostalCodeArea' {_rpcaRegionCode = Nothing, _rpcaPostalCodes = Nothing}


-- | Required. CLDR territory code or the country the postal code group
-- applies to.
rpcaRegionCode :: Lens' RegionPostalCodeArea (Maybe Text)
rpcaRegionCode
  = lens _rpcaRegionCode
      (\ s a -> s{_rpcaRegionCode = a})

-- | Required. A range of postal codes.
rpcaPostalCodes :: Lens' RegionPostalCodeArea [RegionPostalCodeAreaPostalCodeRange]
rpcaPostalCodes
  = lens _rpcaPostalCodes
      (\ s a -> s{_rpcaPostalCodes = a})
      . _Default
      . _Coerce

instance FromJSON RegionPostalCodeArea where
        parseJSON
          = withObject "RegionPostalCodeArea"
              (\ o ->
                 RegionPostalCodeArea' <$>
                   (o .:? "regionCode") <*>
                     (o .:? "postalCodes" .!= mempty))

instance ToJSON RegionPostalCodeArea where
        toJSON RegionPostalCodeArea'{..}
          = object
              (catMaybes
                 [("regionCode" .=) <$> _rpcaRegionCode,
                  ("postalCodes" .=) <$> _rpcaPostalCodes])

--
-- /See:/ 'productAmount' smart constructor.
data ProductAmount =
  ProductAmount'
    { _paRemittedTaxAmount :: !(Maybe Price)
    , _paTaxAmount :: !(Maybe Price)
    , _paPriceAmount :: !(Maybe Price)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductAmount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paRemittedTaxAmount'
--
-- * 'paTaxAmount'
--
-- * 'paPriceAmount'
productAmount
    :: ProductAmount
productAmount =
  ProductAmount'
    { _paRemittedTaxAmount = Nothing
    , _paTaxAmount = Nothing
    , _paPriceAmount = Nothing
    }


-- | Remitted tax value.
paRemittedTaxAmount :: Lens' ProductAmount (Maybe Price)
paRemittedTaxAmount
  = lens _paRemittedTaxAmount
      (\ s a -> s{_paRemittedTaxAmount = a})

-- | Tax value.
paTaxAmount :: Lens' ProductAmount (Maybe Price)
paTaxAmount
  = lens _paTaxAmount (\ s a -> s{_paTaxAmount = a})

-- | The pre-tax or post-tax price depending on the location of the order.
paPriceAmount :: Lens' ProductAmount (Maybe Price)
paPriceAmount
  = lens _paPriceAmount
      (\ s a -> s{_paPriceAmount = a})

instance FromJSON ProductAmount where
        parseJSON
          = withObject "ProductAmount"
              (\ o ->
                 ProductAmount' <$>
                   (o .:? "remittedTaxAmount") <*> (o .:? "taxAmount")
                     <*> (o .:? "priceAmount"))

instance ToJSON ProductAmount where
        toJSON ProductAmount'{..}
          = object
              (catMaybes
                 [("remittedTaxAmount" .=) <$> _paRemittedTaxAmount,
                  ("taxAmount" .=) <$> _paTaxAmount,
                  ("priceAmount" .=) <$> _paPriceAmount])

--
-- /See:/ 'postalCodeRange' smart constructor.
data PostalCodeRange =
  PostalCodeRange'
    { _pcrPostalCodeRangeBegin :: !(Maybe Text)
    , _pcrPostalCodeRangeEnd :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PostalCodeRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcrPostalCodeRangeBegin'
--
-- * 'pcrPostalCodeRangeEnd'
postalCodeRange
    :: PostalCodeRange
postalCodeRange =
  PostalCodeRange'
    {_pcrPostalCodeRangeBegin = Nothing, _pcrPostalCodeRangeEnd = Nothing}


-- | A postal code or a pattern of the form \`prefix*\` denoting the
-- inclusive lower bound of the range defining the area. Examples values:
-- \`\"94108\"\`, \`\"9410*\"\`, \`\"9*\"\`. Required.
pcrPostalCodeRangeBegin :: Lens' PostalCodeRange (Maybe Text)
pcrPostalCodeRangeBegin
  = lens _pcrPostalCodeRangeBegin
      (\ s a -> s{_pcrPostalCodeRangeBegin = a})

-- | A postal code or a pattern of the form \`prefix*\` denoting the
-- inclusive upper bound of the range defining the area. It must have the
-- same length as \`postalCodeRangeBegin\`: if \`postalCodeRangeBegin\` is
-- a postal code then \`postalCodeRangeEnd\` must be a postal code too; if
-- \`postalCodeRangeBegin\` is a pattern then \`postalCodeRangeEnd\` must
-- be a pattern with the same prefix length. Optional: if not set, then the
-- area is defined as being all the postal codes matching
-- \`postalCodeRangeBegin\`.
pcrPostalCodeRangeEnd :: Lens' PostalCodeRange (Maybe Text)
pcrPostalCodeRangeEnd
  = lens _pcrPostalCodeRangeEnd
      (\ s a -> s{_pcrPostalCodeRangeEnd = a})

instance FromJSON PostalCodeRange where
        parseJSON
          = withObject "PostalCodeRange"
              (\ o ->
                 PostalCodeRange' <$>
                   (o .:? "postalCodeRangeBegin") <*>
                     (o .:? "postalCodeRangeEnd"))

instance ToJSON PostalCodeRange where
        toJSON PostalCodeRange'{..}
          = object
              (catMaybes
                 [("postalCodeRangeBegin" .=) <$>
                    _pcrPostalCodeRangeBegin,
                  ("postalCodeRangeEnd" .=) <$>
                    _pcrPostalCodeRangeEnd])

--
-- /See:/ 'ordersUpdateShipmentResponse' smart constructor.
data OrdersUpdateShipmentResponse =
  OrdersUpdateShipmentResponse'
    { _ousrKind :: !(Maybe Text)
    , _ousrExecutionStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersUpdateShipmentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ousrKind'
--
-- * 'ousrExecutionStatus'
ordersUpdateShipmentResponse
    :: OrdersUpdateShipmentResponse
ordersUpdateShipmentResponse =
  OrdersUpdateShipmentResponse'
    {_ousrKind = Nothing, _ousrExecutionStatus = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersUpdateShipmentResponse\".
ousrKind :: Lens' OrdersUpdateShipmentResponse (Maybe Text)
ousrKind = lens _ousrKind (\ s a -> s{_ousrKind = a})

-- | The status of the execution. Acceptable values are: - \"\`duplicate\`\"
-- - \"\`executed\`\"
ousrExecutionStatus :: Lens' OrdersUpdateShipmentResponse (Maybe Text)
ousrExecutionStatus
  = lens _ousrExecutionStatus
      (\ s a -> s{_ousrExecutionStatus = a})

instance FromJSON OrdersUpdateShipmentResponse where
        parseJSON
          = withObject "OrdersUpdateShipmentResponse"
              (\ o ->
                 OrdersUpdateShipmentResponse' <$>
                   (o .:? "kind") <*> (o .:? "executionStatus"))

instance ToJSON OrdersUpdateShipmentResponse where
        toJSON OrdersUpdateShipmentResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _ousrKind,
                  ("executionStatus" .=) <$> _ousrExecutionStatus])

--
-- /See:/ 'productstatusesCustomBatchRequest' smart constructor.
newtype ProductstatusesCustomBatchRequest =
  ProductstatusesCustomBatchRequest'
    { _pcbrcEntries :: Maybe [ProductstatusesCustomBatchRequestEntry]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductstatusesCustomBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcbrcEntries'
productstatusesCustomBatchRequest
    :: ProductstatusesCustomBatchRequest
productstatusesCustomBatchRequest =
  ProductstatusesCustomBatchRequest' {_pcbrcEntries = Nothing}


-- | The request entries to be processed in the batch.
pcbrcEntries :: Lens' ProductstatusesCustomBatchRequest [ProductstatusesCustomBatchRequestEntry]
pcbrcEntries
  = lens _pcbrcEntries (\ s a -> s{_pcbrcEntries = a})
      . _Default
      . _Coerce

instance FromJSON ProductstatusesCustomBatchRequest
         where
        parseJSON
          = withObject "ProductstatusesCustomBatchRequest"
              (\ o ->
                 ProductstatusesCustomBatchRequest' <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON ProductstatusesCustomBatchRequest
         where
        toJSON ProductstatusesCustomBatchRequest'{..}
          = object
              (catMaybes [("entries" .=) <$> _pcbrcEntries])

--
-- /See:/ 'accountYouTubeChannelLink' smart constructor.
data AccountYouTubeChannelLink =
  AccountYouTubeChannelLink'
    { _aytclStatus :: !(Maybe Text)
    , _aytclChannelId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountYouTubeChannelLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aytclStatus'
--
-- * 'aytclChannelId'
accountYouTubeChannelLink
    :: AccountYouTubeChannelLink
accountYouTubeChannelLink =
  AccountYouTubeChannelLink' {_aytclStatus = Nothing, _aytclChannelId = Nothing}


-- | Status of the link between this Merchant Center account and the YouTube
-- channel. Upon retrieval, it represents the actual status of the link and
-- can be either \`active\` if it was approved in YT Creator Studio or
-- \`pending\` if it\'s pending approval. Upon insertion, it represents the
-- *intended* status of the link. Re-uploading a link with status
-- \`active\` when it\'s still pending or with status \`pending\` when
-- it\'s already active will have no effect: the status will remain
-- unchanged. Re-uploading a link with deprecated status \`inactive\` is
-- equivalent to not submitting the link at all and will delete the link if
-- it was active or cancel the link request if it was pending.
aytclStatus :: Lens' AccountYouTubeChannelLink (Maybe Text)
aytclStatus
  = lens _aytclStatus (\ s a -> s{_aytclStatus = a})

-- | Channel ID.
aytclChannelId :: Lens' AccountYouTubeChannelLink (Maybe Text)
aytclChannelId
  = lens _aytclChannelId
      (\ s a -> s{_aytclChannelId = a})

instance FromJSON AccountYouTubeChannelLink where
        parseJSON
          = withObject "AccountYouTubeChannelLink"
              (\ o ->
                 AccountYouTubeChannelLink' <$>
                   (o .:? "status") <*> (o .:? "channelId"))

instance ToJSON AccountYouTubeChannelLink where
        toJSON AccountYouTubeChannelLink'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _aytclStatus,
                  ("channelId" .=) <$> _aytclChannelId])

--
-- /See:/ 'accountAdsLink' smart constructor.
data AccountAdsLink =
  AccountAdsLink'
    { _aalStatus :: !(Maybe Text)
    , _aalAdsId :: !(Maybe (Textual Word64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountAdsLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aalStatus'
--
-- * 'aalAdsId'
accountAdsLink
    :: AccountAdsLink
accountAdsLink = AccountAdsLink' {_aalStatus = Nothing, _aalAdsId = Nothing}


-- | Status of the link between this Merchant Center account and the Ads
-- account. Upon retrieval, it represents the actual status of the link and
-- can be either \`active\` if it was approved in Google Ads or \`pending\`
-- if it\'s pending approval. Upon insertion, it represents the *intended*
-- status of the link. Re-uploading a link with status \`active\` when
-- it\'s still pending or with status \`pending\` when it\'s already active
-- will have no effect: the status will remain unchanged. Re-uploading a
-- link with deprecated status \`inactive\` is equivalent to not submitting
-- the link at all and will delete the link if it was active or cancel the
-- link request if it was pending. Acceptable values are: - \"\`active\`\"
-- - \"\`pending\`\"
aalStatus :: Lens' AccountAdsLink (Maybe Text)
aalStatus
  = lens _aalStatus (\ s a -> s{_aalStatus = a})

-- | Customer ID of the Ads account.
aalAdsId :: Lens' AccountAdsLink (Maybe Word64)
aalAdsId
  = lens _aalAdsId (\ s a -> s{_aalAdsId = a}) .
      mapping _Coerce

instance FromJSON AccountAdsLink where
        parseJSON
          = withObject "AccountAdsLink"
              (\ o ->
                 AccountAdsLink' <$>
                   (o .:? "status") <*> (o .:? "adsId"))

instance ToJSON AccountAdsLink where
        toJSON AccountAdsLink'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _aalStatus,
                  ("adsId" .=) <$> _aalAdsId])

--
-- /See:/ 'liaAboutPageSettings' smart constructor.
data LiaAboutPageSettings =
  LiaAboutPageSettings'
    { _lapsStatus :: !(Maybe Text)
    , _lapsURL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiaAboutPageSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lapsStatus'
--
-- * 'lapsURL'
liaAboutPageSettings
    :: LiaAboutPageSettings
liaAboutPageSettings =
  LiaAboutPageSettings' {_lapsStatus = Nothing, _lapsURL = Nothing}


-- | The status of the verification process for the About page. Acceptable
-- values are: - \"\`active\`\" - \"\`inactive\`\" - \"\`pending\`\"
lapsStatus :: Lens' LiaAboutPageSettings (Maybe Text)
lapsStatus
  = lens _lapsStatus (\ s a -> s{_lapsStatus = a})

-- | The URL for the About page.
lapsURL :: Lens' LiaAboutPageSettings (Maybe Text)
lapsURL = lens _lapsURL (\ s a -> s{_lapsURL = a})

instance FromJSON LiaAboutPageSettings where
        parseJSON
          = withObject "LiaAboutPageSettings"
              (\ o ->
                 LiaAboutPageSettings' <$>
                   (o .:? "status") <*> (o .:? "url"))

instance ToJSON LiaAboutPageSettings where
        toJSON LiaAboutPageSettings'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _lapsStatus,
                  ("url" .=) <$> _lapsURL])

-- | Resource that represents a daily Repricing rule report. Next ID: 11
--
-- /See:/ 'repricingRuleReport' smart constructor.
data RepricingRuleReport =
  RepricingRuleReport'
    { _rrrOrderItemCount :: !(Maybe (Textual Int32))
    , _rrrRuleId :: !(Maybe Text)
    , _rrrDate :: !(Maybe Date)
    , _rrrInApplicableProducts :: !(Maybe [Text])
    , _rrrBuyboxWinningRuleStats :: !(Maybe RepricingRuleReportBuyboxWinningRuleStats)
    , _rrrInApplicabilityDetails :: !(Maybe [InApplicabilityDetails])
    , _rrrType :: !(Maybe RepricingRuleReportType)
    , _rrrImpactedProducts :: !(Maybe [Text])
    , _rrrTotalGmv :: !(Maybe PriceAmount)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RepricingRuleReport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrrOrderItemCount'
--
-- * 'rrrRuleId'
--
-- * 'rrrDate'
--
-- * 'rrrInApplicableProducts'
--
-- * 'rrrBuyboxWinningRuleStats'
--
-- * 'rrrInApplicabilityDetails'
--
-- * 'rrrType'
--
-- * 'rrrImpactedProducts'
--
-- * 'rrrTotalGmv'
repricingRuleReport
    :: RepricingRuleReport
repricingRuleReport =
  RepricingRuleReport'
    { _rrrOrderItemCount = Nothing
    , _rrrRuleId = Nothing
    , _rrrDate = Nothing
    , _rrrInApplicableProducts = Nothing
    , _rrrBuyboxWinningRuleStats = Nothing
    , _rrrInApplicabilityDetails = Nothing
    , _rrrType = Nothing
    , _rrrImpactedProducts = Nothing
    , _rrrTotalGmv = Nothing
    }


-- | Total unit count of impacted products ordered while the rule was active
-- on the date of the report. This count includes all orders that were
-- started while the rule was active, even if the rule was no longer active
-- when the order was completed.
rrrOrderItemCount :: Lens' RepricingRuleReport (Maybe Int32)
rrrOrderItemCount
  = lens _rrrOrderItemCount
      (\ s a -> s{_rrrOrderItemCount = a})
      . mapping _Coerce

-- | Id of the Repricing rule for this report.
rrrRuleId :: Lens' RepricingRuleReport (Maybe Text)
rrrRuleId
  = lens _rrrRuleId (\ s a -> s{_rrrRuleId = a})

-- | Date of the stats in this report. The report starts and ends according
-- to the merchant\'s timezone.
rrrDate :: Lens' RepricingRuleReport (Maybe Date)
rrrDate = lens _rrrDate (\ s a -> s{_rrrDate = a})

-- | List of product ids that are inapplicable to this rule during this
-- reporting period. To get the inapplicable reason for a specific product,
-- see RepricingProductReport.
rrrInApplicableProducts :: Lens' RepricingRuleReport [Text]
rrrInApplicableProducts
  = lens _rrrInApplicableProducts
      (\ s a -> s{_rrrInApplicableProducts = a})
      . _Default
      . _Coerce

-- | Stats specific to buybox winning rules for rule report.
rrrBuyboxWinningRuleStats :: Lens' RepricingRuleReport (Maybe RepricingRuleReportBuyboxWinningRuleStats)
rrrBuyboxWinningRuleStats
  = lens _rrrBuyboxWinningRuleStats
      (\ s a -> s{_rrrBuyboxWinningRuleStats = a})

-- | List of all reasons the rule did not apply to the inapplicable products
-- during the specified reporting period.
rrrInApplicabilityDetails :: Lens' RepricingRuleReport [InApplicabilityDetails]
rrrInApplicabilityDetails
  = lens _rrrInApplicabilityDetails
      (\ s a -> s{_rrrInApplicabilityDetails = a})
      . _Default
      . _Coerce

-- | Type of the rule.
rrrType :: Lens' RepricingRuleReport (Maybe RepricingRuleReportType)
rrrType = lens _rrrType (\ s a -> s{_rrrType = a})

-- | List of product ids that are impacted by this rule during this reporting
-- period. Out of stock products and products not searched for by customers
-- are examples of non-impacted products.
rrrImpactedProducts :: Lens' RepricingRuleReport [Text]
rrrImpactedProducts
  = lens _rrrImpactedProducts
      (\ s a -> s{_rrrImpactedProducts = a})
      . _Default
      . _Coerce

-- | Total GMV generated by impacted products while the rule was active on
-- the date of the report. This value includes all orders that were started
-- while the rule was active, even if the rule was no longer active when
-- the order was completed.
rrrTotalGmv :: Lens' RepricingRuleReport (Maybe PriceAmount)
rrrTotalGmv
  = lens _rrrTotalGmv (\ s a -> s{_rrrTotalGmv = a})

instance FromJSON RepricingRuleReport where
        parseJSON
          = withObject "RepricingRuleReport"
              (\ o ->
                 RepricingRuleReport' <$>
                   (o .:? "orderItemCount") <*> (o .:? "ruleId") <*>
                     (o .:? "date")
                     <*> (o .:? "inapplicableProducts" .!= mempty)
                     <*> (o .:? "buyboxWinningRuleStats")
                     <*> (o .:? "inapplicabilityDetails" .!= mempty)
                     <*> (o .:? "type")
                     <*> (o .:? "impactedProducts" .!= mempty)
                     <*> (o .:? "totalGmv"))

instance ToJSON RepricingRuleReport where
        toJSON RepricingRuleReport'{..}
          = object
              (catMaybes
                 [("orderItemCount" .=) <$> _rrrOrderItemCount,
                  ("ruleId" .=) <$> _rrrRuleId,
                  ("date" .=) <$> _rrrDate,
                  ("inapplicableProducts" .=) <$>
                    _rrrInApplicableProducts,
                  ("buyboxWinningRuleStats" .=) <$>
                    _rrrBuyboxWinningRuleStats,
                  ("inapplicabilityDetails" .=) <$>
                    _rrrInApplicabilityDetails,
                  ("type" .=) <$> _rrrType,
                  ("impactedProducts" .=) <$> _rrrImpactedProducts,
                  ("totalGmv" .=) <$> _rrrTotalGmv])

-- | Represents a merchant trade from which signals are extracted, e.g.
-- shipping.
--
-- /See:/ 'orderTrackingSignal' smart constructor.
data OrderTrackingSignal =
  OrderTrackingSignal'
    { _otsDeliveryPostalCode :: !(Maybe Text)
    , _otsMerchantId :: !(Maybe (Textual Int64))
    , _otsOrderTrackingSignalId :: !(Maybe (Textual Int64))
    , _otsLineItems :: !(Maybe [OrderTrackingSignalLineItemDetails])
    , _otsOrderCreatedTime :: !(Maybe DateTime)
    , _otsDeliveryRegionCode :: !(Maybe Text)
    , _otsShippingInfo :: !(Maybe [OrderTrackingSignalShippingInfo])
    , _otsShipmentLineItemMApping :: !(Maybe [OrderTrackingSignalShipmentLineItemMApping])
    , _otsCustomerShippingFee :: !(Maybe PriceAmount)
    , _otsOrderId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderTrackingSignal' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'otsDeliveryPostalCode'
--
-- * 'otsMerchantId'
--
-- * 'otsOrderTrackingSignalId'
--
-- * 'otsLineItems'
--
-- * 'otsOrderCreatedTime'
--
-- * 'otsDeliveryRegionCode'
--
-- * 'otsShippingInfo'
--
-- * 'otsShipmentLineItemMApping'
--
-- * 'otsCustomerShippingFee'
--
-- * 'otsOrderId'
orderTrackingSignal
    :: OrderTrackingSignal
orderTrackingSignal =
  OrderTrackingSignal'
    { _otsDeliveryPostalCode = Nothing
    , _otsMerchantId = Nothing
    , _otsOrderTrackingSignalId = Nothing
    , _otsLineItems = Nothing
    , _otsOrderCreatedTime = Nothing
    , _otsDeliveryRegionCode = Nothing
    , _otsShippingInfo = Nothing
    , _otsShipmentLineItemMApping = Nothing
    , _otsCustomerShippingFee = Nothing
    , _otsOrderId = Nothing
    }


-- | Required. The delivery postal code, as a continuous string without
-- spaces or dashes, e.g. \"95016\".
otsDeliveryPostalCode :: Lens' OrderTrackingSignal (Maybe Text)
otsDeliveryPostalCode
  = lens _otsDeliveryPostalCode
      (\ s a -> s{_otsDeliveryPostalCode = a})

-- | The Google merchant ID of this order tracking signal. This value is
-- optional. If left unset, the caller\'s merchant ID is used. You must
-- request access in order to provide data on behalf of another merchant.
-- For more information, see [Submitting Order Tracking
-- Signals](\/shopping-content\/guides\/order-tracking-signals).
otsMerchantId :: Lens' OrderTrackingSignal (Maybe Int64)
otsMerchantId
  = lens _otsMerchantId
      (\ s a -> s{_otsMerchantId = a})
      . mapping _Coerce

-- | Output only. The ID that uniquely identifies this order tracking signal.
otsOrderTrackingSignalId :: Lens' OrderTrackingSignal (Maybe Int64)
otsOrderTrackingSignalId
  = lens _otsOrderTrackingSignalId
      (\ s a -> s{_otsOrderTrackingSignalId = a})
      . mapping _Coerce

-- | Information about line items in the order.
otsLineItems :: Lens' OrderTrackingSignal [OrderTrackingSignalLineItemDetails]
otsLineItems
  = lens _otsLineItems (\ s a -> s{_otsLineItems = a})
      . _Default
      . _Coerce

-- | Required. The time when the order was created on the merchant side.
-- Include the year and timezone string, if available.
otsOrderCreatedTime :: Lens' OrderTrackingSignal (Maybe DateTime)
otsOrderCreatedTime
  = lens _otsOrderCreatedTime
      (\ s a -> s{_otsOrderCreatedTime = a})

-- | Required. The [CLDR territory code]
-- (http:\/\/www.unicode.org\/repos\/cldr\/tags\/latest\/common\/main\/en.xml)
-- for the shipping destination.
otsDeliveryRegionCode :: Lens' OrderTrackingSignal (Maybe Text)
otsDeliveryRegionCode
  = lens _otsDeliveryRegionCode
      (\ s a -> s{_otsDeliveryRegionCode = a})

-- | The shipping information for the order.
otsShippingInfo :: Lens' OrderTrackingSignal [OrderTrackingSignalShippingInfo]
otsShippingInfo
  = lens _otsShippingInfo
      (\ s a -> s{_otsShippingInfo = a})
      . _Default
      . _Coerce

-- | The mapping of the line items to the shipment information.
otsShipmentLineItemMApping :: Lens' OrderTrackingSignal [OrderTrackingSignalShipmentLineItemMApping]
otsShipmentLineItemMApping
  = lens _otsShipmentLineItemMApping
      (\ s a -> s{_otsShipmentLineItemMApping = a})
      . _Default
      . _Coerce

-- | The shipping fee of the order; this value should be set to zero in the
-- case of free shipping.
otsCustomerShippingFee :: Lens' OrderTrackingSignal (Maybe PriceAmount)
otsCustomerShippingFee
  = lens _otsCustomerShippingFee
      (\ s a -> s{_otsCustomerShippingFee = a})

-- | Required. The ID of the order on the merchant side.
otsOrderId :: Lens' OrderTrackingSignal (Maybe Text)
otsOrderId
  = lens _otsOrderId (\ s a -> s{_otsOrderId = a})

instance FromJSON OrderTrackingSignal where
        parseJSON
          = withObject "OrderTrackingSignal"
              (\ o ->
                 OrderTrackingSignal' <$>
                   (o .:? "deliveryPostalCode") <*> (o .:? "merchantId")
                     <*> (o .:? "orderTrackingSignalId")
                     <*> (o .:? "lineItems" .!= mempty)
                     <*> (o .:? "orderCreatedTime")
                     <*> (o .:? "deliveryRegionCode")
                     <*> (o .:? "shippingInfo" .!= mempty)
                     <*> (o .:? "shipmentLineItemMapping" .!= mempty)
                     <*> (o .:? "customerShippingFee")
                     <*> (o .:? "orderId"))

instance ToJSON OrderTrackingSignal where
        toJSON OrderTrackingSignal'{..}
          = object
              (catMaybes
                 [("deliveryPostalCode" .=) <$>
                    _otsDeliveryPostalCode,
                  ("merchantId" .=) <$> _otsMerchantId,
                  ("orderTrackingSignalId" .=) <$>
                    _otsOrderTrackingSignalId,
                  ("lineItems" .=) <$> _otsLineItems,
                  ("orderCreatedTime" .=) <$> _otsOrderCreatedTime,
                  ("deliveryRegionCode" .=) <$> _otsDeliveryRegionCode,
                  ("shippingInfo" .=) <$> _otsShippingInfo,
                  ("shipmentLineItemMapping" .=) <$>
                    _otsShipmentLineItemMApping,
                  ("customerShippingFee" .=) <$>
                    _otsCustomerShippingFee,
                  ("orderId" .=) <$> _otsOrderId])

--
-- /See:/ 'liaSettingsCustomBatchRequest' smart constructor.
newtype LiaSettingsCustomBatchRequest =
  LiaSettingsCustomBatchRequest'
    { _lEntries :: Maybe [LiaSettingsCustomBatchRequestEntry]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiaSettingsCustomBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lEntries'
liaSettingsCustomBatchRequest
    :: LiaSettingsCustomBatchRequest
liaSettingsCustomBatchRequest =
  LiaSettingsCustomBatchRequest' {_lEntries = Nothing}


-- | The request entries to be processed in the batch.
lEntries :: Lens' LiaSettingsCustomBatchRequest [LiaSettingsCustomBatchRequestEntry]
lEntries
  = lens _lEntries (\ s a -> s{_lEntries = a}) .
      _Default
      . _Coerce

instance FromJSON LiaSettingsCustomBatchRequest where
        parseJSON
          = withObject "LiaSettingsCustomBatchRequest"
              (\ o ->
                 LiaSettingsCustomBatchRequest' <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON LiaSettingsCustomBatchRequest where
        toJSON LiaSettingsCustomBatchRequest'{..}
          = object (catMaybes [("entries" .=) <$> _lEntries])

--
-- /See:/ 'customAttribute' smart constructor.
data CustomAttribute =
  CustomAttribute'
    { _caGroupValues :: !(Maybe [CustomAttribute])
    , _caValue :: !(Maybe Text)
    , _caName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caGroupValues'
--
-- * 'caValue'
--
-- * 'caName'
customAttribute
    :: CustomAttribute
customAttribute =
  CustomAttribute'
    {_caGroupValues = Nothing, _caValue = Nothing, _caName = Nothing}


-- | Subattributes within this attribute group. Exactly one of value or
-- groupValues must be provided.
caGroupValues :: Lens' CustomAttribute [CustomAttribute]
caGroupValues
  = lens _caGroupValues
      (\ s a -> s{_caGroupValues = a})
      . _Default
      . _Coerce

-- | The value of the attribute.
caValue :: Lens' CustomAttribute (Maybe Text)
caValue = lens _caValue (\ s a -> s{_caValue = a})

-- | The name of the attribute. Underscores will be replaced by spaces upon
-- insertion.
caName :: Lens' CustomAttribute (Maybe Text)
caName = lens _caName (\ s a -> s{_caName = a})

instance FromJSON CustomAttribute where
        parseJSON
          = withObject "CustomAttribute"
              (\ o ->
                 CustomAttribute' <$>
                   (o .:? "groupValues" .!= mempty) <*> (o .:? "value")
                     <*> (o .:? "name"))

instance ToJSON CustomAttribute where
        toJSON CustomAttribute'{..}
          = object
              (catMaybes
                 [("groupValues" .=) <$> _caGroupValues,
                  ("value" .=) <$> _caValue, ("name" .=) <$> _caName])

--
-- /See:/ 'posInventoryRequest' smart constructor.
data PosInventoryRequest =
  PosInventoryRequest'
    { _posStoreCode :: !(Maybe Text)
    , _posItemId :: !(Maybe Text)
    , _posQuantity :: !(Maybe (Textual Int64))
    , _posTargetCountry :: !(Maybe Text)
    , _posGtin :: !(Maybe Text)
    , _posPrice :: !(Maybe Price)
    , _posContentLanguage :: !(Maybe Text)
    , _posTimestamp :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PosInventoryRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'posStoreCode'
--
-- * 'posItemId'
--
-- * 'posQuantity'
--
-- * 'posTargetCountry'
--
-- * 'posGtin'
--
-- * 'posPrice'
--
-- * 'posContentLanguage'
--
-- * 'posTimestamp'
posInventoryRequest
    :: PosInventoryRequest
posInventoryRequest =
  PosInventoryRequest'
    { _posStoreCode = Nothing
    , _posItemId = Nothing
    , _posQuantity = Nothing
    , _posTargetCountry = Nothing
    , _posGtin = Nothing
    , _posPrice = Nothing
    , _posContentLanguage = Nothing
    , _posTimestamp = Nothing
    }


-- | Required. The identifier of the merchant\'s store. Either a
-- \`storeCode\` inserted via the API or the code of the store in Google My
-- Business.
posStoreCode :: Lens' PosInventoryRequest (Maybe Text)
posStoreCode
  = lens _posStoreCode (\ s a -> s{_posStoreCode = a})

-- | Required. A unique identifier for the item.
posItemId :: Lens' PosInventoryRequest (Maybe Text)
posItemId
  = lens _posItemId (\ s a -> s{_posItemId = a})

-- | Required. The available quantity of the item.
posQuantity :: Lens' PosInventoryRequest (Maybe Int64)
posQuantity
  = lens _posQuantity (\ s a -> s{_posQuantity = a}) .
      mapping _Coerce

-- | Required. The CLDR territory code for the item.
posTargetCountry :: Lens' PosInventoryRequest (Maybe Text)
posTargetCountry
  = lens _posTargetCountry
      (\ s a -> s{_posTargetCountry = a})

-- | Global Trade Item Number.
posGtin :: Lens' PosInventoryRequest (Maybe Text)
posGtin = lens _posGtin (\ s a -> s{_posGtin = a})

-- | Required. The current price of the item.
posPrice :: Lens' PosInventoryRequest (Maybe Price)
posPrice = lens _posPrice (\ s a -> s{_posPrice = a})

-- | Required. The two-letter ISO 639-1 language code for the item.
posContentLanguage :: Lens' PosInventoryRequest (Maybe Text)
posContentLanguage
  = lens _posContentLanguage
      (\ s a -> s{_posContentLanguage = a})

-- | Required. The inventory timestamp, in ISO 8601 format.
posTimestamp :: Lens' PosInventoryRequest (Maybe Text)
posTimestamp
  = lens _posTimestamp (\ s a -> s{_posTimestamp = a})

instance FromJSON PosInventoryRequest where
        parseJSON
          = withObject "PosInventoryRequest"
              (\ o ->
                 PosInventoryRequest' <$>
                   (o .:? "storeCode") <*> (o .:? "itemId") <*>
                     (o .:? "quantity")
                     <*> (o .:? "targetCountry")
                     <*> (o .:? "gtin")
                     <*> (o .:? "price")
                     <*> (o .:? "contentLanguage")
                     <*> (o .:? "timestamp"))

instance ToJSON PosInventoryRequest where
        toJSON PosInventoryRequest'{..}
          = object
              (catMaybes
                 [("storeCode" .=) <$> _posStoreCode,
                  ("itemId" .=) <$> _posItemId,
                  ("quantity" .=) <$> _posQuantity,
                  ("targetCountry" .=) <$> _posTargetCountry,
                  ("gtin" .=) <$> _posGtin, ("price" .=) <$> _posPrice,
                  ("contentLanguage" .=) <$> _posContentLanguage,
                  ("timestamp" .=) <$> _posTimestamp])

--
-- /See:/ 'accountstatusesCustomBatchResponse' smart constructor.
data AccountstatusesCustomBatchResponse =
  AccountstatusesCustomBatchResponse'
    { _acccEntries :: !(Maybe [AccountstatusesCustomBatchResponseEntry])
    , _acccKind :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountstatusesCustomBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acccEntries'
--
-- * 'acccKind'
accountstatusesCustomBatchResponse
    :: AccountstatusesCustomBatchResponse
accountstatusesCustomBatchResponse =
  AccountstatusesCustomBatchResponse'
    {_acccEntries = Nothing, _acccKind = Nothing}


-- | The result of the execution of the batch requests.
acccEntries :: Lens' AccountstatusesCustomBatchResponse [AccountstatusesCustomBatchResponseEntry]
acccEntries
  = lens _acccEntries (\ s a -> s{_acccEntries = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#accountstatusesCustomBatchResponse\".
acccKind :: Lens' AccountstatusesCustomBatchResponse (Maybe Text)
acccKind = lens _acccKind (\ s a -> s{_acccKind = a})

instance FromJSON AccountstatusesCustomBatchResponse
         where
        parseJSON
          = withObject "AccountstatusesCustomBatchResponse"
              (\ o ->
                 AccountstatusesCustomBatchResponse' <$>
                   (o .:? "entries" .!= mempty) <*> (o .:? "kind"))

instance ToJSON AccountstatusesCustomBatchResponse
         where
        toJSON AccountstatusesCustomBatchResponse'{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _acccEntries,
                  ("kind" .=) <$> _acccKind])

-- | A batch entry encoding a single non-batch shipping settings response.
--
-- /See:/ 'shippingSettingsCustomBatchResponseEntry' smart constructor.
data ShippingSettingsCustomBatchResponseEntry =
  ShippingSettingsCustomBatchResponseEntry'
    { _sKind :: !(Maybe Text)
    , _sShippingSettings :: !(Maybe ShippingSettings)
    , _sErrors :: !(Maybe Errors)
    , _sBatchId :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ShippingSettingsCustomBatchResponseEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sKind'
--
-- * 'sShippingSettings'
--
-- * 'sErrors'
--
-- * 'sBatchId'
shippingSettingsCustomBatchResponseEntry
    :: ShippingSettingsCustomBatchResponseEntry
shippingSettingsCustomBatchResponseEntry =
  ShippingSettingsCustomBatchResponseEntry'
    { _sKind = Nothing
    , _sShippingSettings = Nothing
    , _sErrors = Nothing
    , _sBatchId = Nothing
    }


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"\`content#shippingsettingsCustomBatchResponseEntry\`\"
sKind :: Lens' ShippingSettingsCustomBatchResponseEntry (Maybe Text)
sKind = lens _sKind (\ s a -> s{_sKind = a})

-- | The retrieved or updated account shipping settings.
sShippingSettings :: Lens' ShippingSettingsCustomBatchResponseEntry (Maybe ShippingSettings)
sShippingSettings
  = lens _sShippingSettings
      (\ s a -> s{_sShippingSettings = a})

-- | A list of errors defined if, and only if, the request failed.
sErrors :: Lens' ShippingSettingsCustomBatchResponseEntry (Maybe Errors)
sErrors = lens _sErrors (\ s a -> s{_sErrors = a})

-- | The ID of the request entry to which this entry responds.
sBatchId :: Lens' ShippingSettingsCustomBatchResponseEntry (Maybe Word32)
sBatchId
  = lens _sBatchId (\ s a -> s{_sBatchId = a}) .
      mapping _Coerce

instance FromJSON
           ShippingSettingsCustomBatchResponseEntry
         where
        parseJSON
          = withObject
              "ShippingSettingsCustomBatchResponseEntry"
              (\ o ->
                 ShippingSettingsCustomBatchResponseEntry' <$>
                   (o .:? "kind") <*> (o .:? "shippingSettings") <*>
                     (o .:? "errors")
                     <*> (o .:? "batchId"))

instance ToJSON
           ShippingSettingsCustomBatchResponseEntry
         where
        toJSON ShippingSettingsCustomBatchResponseEntry'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _sKind,
                  ("shippingSettings" .=) <$> _sShippingSettings,
                  ("errors" .=) <$> _sErrors,
                  ("batchId" .=) <$> _sBatchId])

-- | The status of a product, i.e., information about a product computed
-- asynchronously.
--
-- /See:/ 'productStatus' smart constructor.
data ProductStatus =
  ProductStatus'
    { _ppKind :: !(Maybe Text)
    , _ppLink :: !(Maybe Text)
    , _ppDestinationStatuses :: !(Maybe [ProductStatusDestinationStatus])
    , _ppLastUpdateDate :: !(Maybe Text)
    , _ppCreationDate :: !(Maybe Text)
    , _ppTitle :: !(Maybe Text)
    , _ppGoogleExpirationDate :: !(Maybe Text)
    , _ppProductId :: !(Maybe Text)
    , _ppItemLevelIssues :: !(Maybe [ProductStatusItemLevelIssue])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppKind'
--
-- * 'ppLink'
--
-- * 'ppDestinationStatuses'
--
-- * 'ppLastUpdateDate'
--
-- * 'ppCreationDate'
--
-- * 'ppTitle'
--
-- * 'ppGoogleExpirationDate'
--
-- * 'ppProductId'
--
-- * 'ppItemLevelIssues'
productStatus
    :: ProductStatus
productStatus =
  ProductStatus'
    { _ppKind = Nothing
    , _ppLink = Nothing
    , _ppDestinationStatuses = Nothing
    , _ppLastUpdateDate = Nothing
    , _ppCreationDate = Nothing
    , _ppTitle = Nothing
    , _ppGoogleExpirationDate = Nothing
    , _ppProductId = Nothing
    , _ppItemLevelIssues = Nothing
    }


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"\`content#productStatus\`\"
ppKind :: Lens' ProductStatus (Maybe Text)
ppKind = lens _ppKind (\ s a -> s{_ppKind = a})

-- | The link to the product.
ppLink :: Lens' ProductStatus (Maybe Text)
ppLink = lens _ppLink (\ s a -> s{_ppLink = a})

-- | The intended destinations for the product.
ppDestinationStatuses :: Lens' ProductStatus [ProductStatusDestinationStatus]
ppDestinationStatuses
  = lens _ppDestinationStatuses
      (\ s a -> s{_ppDestinationStatuses = a})
      . _Default
      . _Coerce

-- | Date on which the item has been last updated, in ISO 8601 format.
ppLastUpdateDate :: Lens' ProductStatus (Maybe Text)
ppLastUpdateDate
  = lens _ppLastUpdateDate
      (\ s a -> s{_ppLastUpdateDate = a})

-- | Date on which the item has been created, in ISO 8601 format.
ppCreationDate :: Lens' ProductStatus (Maybe Text)
ppCreationDate
  = lens _ppCreationDate
      (\ s a -> s{_ppCreationDate = a})

-- | The title of the product.
ppTitle :: Lens' ProductStatus (Maybe Text)
ppTitle = lens _ppTitle (\ s a -> s{_ppTitle = a})

-- | Date on which the item expires in Google Shopping, in ISO 8601 format.
ppGoogleExpirationDate :: Lens' ProductStatus (Maybe Text)
ppGoogleExpirationDate
  = lens _ppGoogleExpirationDate
      (\ s a -> s{_ppGoogleExpirationDate = a})

-- | The ID of the product for which status is reported.
ppProductId :: Lens' ProductStatus (Maybe Text)
ppProductId
  = lens _ppProductId (\ s a -> s{_ppProductId = a})

-- | A list of all issues associated with the product.
ppItemLevelIssues :: Lens' ProductStatus [ProductStatusItemLevelIssue]
ppItemLevelIssues
  = lens _ppItemLevelIssues
      (\ s a -> s{_ppItemLevelIssues = a})
      . _Default
      . _Coerce

instance FromJSON ProductStatus where
        parseJSON
          = withObject "ProductStatus"
              (\ o ->
                 ProductStatus' <$>
                   (o .:? "kind") <*> (o .:? "link") <*>
                     (o .:? "destinationStatuses" .!= mempty)
                     <*> (o .:? "lastUpdateDate")
                     <*> (o .:? "creationDate")
                     <*> (o .:? "title")
                     <*> (o .:? "googleExpirationDate")
                     <*> (o .:? "productId")
                     <*> (o .:? "itemLevelIssues" .!= mempty))

instance ToJSON ProductStatus where
        toJSON ProductStatus'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _ppKind, ("link" .=) <$> _ppLink,
                  ("destinationStatuses" .=) <$>
                    _ppDestinationStatuses,
                  ("lastUpdateDate" .=) <$> _ppLastUpdateDate,
                  ("creationDate" .=) <$> _ppCreationDate,
                  ("title" .=) <$> _ppTitle,
                  ("googleExpirationDate" .=) <$>
                    _ppGoogleExpirationDate,
                  ("productId" .=) <$> _ppProductId,
                  ("itemLevelIssues" .=) <$> _ppItemLevelIssues])

-- | The return carrier information. This service is designed for merchants
-- enrolled in the Buy on Google program.
--
-- /See:/ 'accountReturnCarrier' smart constructor.
data AccountReturnCarrier =
  AccountReturnCarrier'
    { _arcCarrierAccountNumber :: !(Maybe Text)
    , _arcCarrierAccountName :: !(Maybe Text)
    , _arcCarrierAccountId :: !(Maybe (Textual Int64))
    , _arcCarrierCode :: !(Maybe AccountReturnCarrierCarrierCode)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountReturnCarrier' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arcCarrierAccountNumber'
--
-- * 'arcCarrierAccountName'
--
-- * 'arcCarrierAccountId'
--
-- * 'arcCarrierCode'
accountReturnCarrier
    :: AccountReturnCarrier
accountReturnCarrier =
  AccountReturnCarrier'
    { _arcCarrierAccountNumber = Nothing
    , _arcCarrierAccountName = Nothing
    , _arcCarrierAccountId = Nothing
    , _arcCarrierCode = Nothing
    }


-- | Number of the carrier account.
arcCarrierAccountNumber :: Lens' AccountReturnCarrier (Maybe Text)
arcCarrierAccountNumber
  = lens _arcCarrierAccountNumber
      (\ s a -> s{_arcCarrierAccountNumber = a})

-- | Name of the carrier account.
arcCarrierAccountName :: Lens' AccountReturnCarrier (Maybe Text)
arcCarrierAccountName
  = lens _arcCarrierAccountName
      (\ s a -> s{_arcCarrierAccountName = a})

-- | Output only. Immutable. The Google-provided unique carrier ID, used to
-- update the resource.
arcCarrierAccountId :: Lens' AccountReturnCarrier (Maybe Int64)
arcCarrierAccountId
  = lens _arcCarrierAccountId
      (\ s a -> s{_arcCarrierAccountId = a})
      . mapping _Coerce

-- | The carrier code enum. Accepts the values FEDEX or UPS.
arcCarrierCode :: Lens' AccountReturnCarrier (Maybe AccountReturnCarrierCarrierCode)
arcCarrierCode
  = lens _arcCarrierCode
      (\ s a -> s{_arcCarrierCode = a})

instance FromJSON AccountReturnCarrier where
        parseJSON
          = withObject "AccountReturnCarrier"
              (\ o ->
                 AccountReturnCarrier' <$>
                   (o .:? "carrierAccountNumber") <*>
                     (o .:? "carrierAccountName")
                     <*> (o .:? "carrierAccountId")
                     <*> (o .:? "carrierCode"))

instance ToJSON AccountReturnCarrier where
        toJSON AccountReturnCarrier'{..}
          = object
              (catMaybes
                 [("carrierAccountNumber" .=) <$>
                    _arcCarrierAccountNumber,
                  ("carrierAccountName" .=) <$> _arcCarrierAccountName,
                  ("carrierAccountId" .=) <$> _arcCarrierAccountId,
                  ("carrierCode" .=) <$> _arcCarrierCode])

--
-- /See:/ 'accountstatusesListResponse' smart constructor.
data AccountstatusesListResponse =
  AccountstatusesListResponse'
    { _alr1NextPageToken :: !(Maybe Text)
    , _alr1Kind :: !(Maybe Text)
    , _alr1Resources :: !(Maybe [AccountStatus])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountstatusesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alr1NextPageToken'
--
-- * 'alr1Kind'
--
-- * 'alr1Resources'
accountstatusesListResponse
    :: AccountstatusesListResponse
accountstatusesListResponse =
  AccountstatusesListResponse'
    { _alr1NextPageToken = Nothing
    , _alr1Kind = Nothing
    , _alr1Resources = Nothing
    }


-- | The token for the retrieval of the next page of account statuses.
alr1NextPageToken :: Lens' AccountstatusesListResponse (Maybe Text)
alr1NextPageToken
  = lens _alr1NextPageToken
      (\ s a -> s{_alr1NextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#accountstatusesListResponse\".
alr1Kind :: Lens' AccountstatusesListResponse (Maybe Text)
alr1Kind = lens _alr1Kind (\ s a -> s{_alr1Kind = a})

alr1Resources :: Lens' AccountstatusesListResponse [AccountStatus]
alr1Resources
  = lens _alr1Resources
      (\ s a -> s{_alr1Resources = a})
      . _Default
      . _Coerce

instance FromJSON AccountstatusesListResponse where
        parseJSON
          = withObject "AccountstatusesListResponse"
              (\ o ->
                 AccountstatusesListResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "kind") <*>
                     (o .:? "resources" .!= mempty))

instance ToJSON AccountstatusesListResponse where
        toJSON AccountstatusesListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _alr1NextPageToken,
                  ("kind" .=) <$> _alr1Kind,
                  ("resources" .=) <$> _alr1Resources])

--
-- /See:/ 'ordersSetLineItemMetadataResponse' smart constructor.
data OrdersSetLineItemMetadataResponse =
  OrdersSetLineItemMetadataResponse'
    { _oslimrKind :: !(Maybe Text)
    , _oslimrExecutionStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersSetLineItemMetadataResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oslimrKind'
--
-- * 'oslimrExecutionStatus'
ordersSetLineItemMetadataResponse
    :: OrdersSetLineItemMetadataResponse
ordersSetLineItemMetadataResponse =
  OrdersSetLineItemMetadataResponse'
    {_oslimrKind = Nothing, _oslimrExecutionStatus = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersSetLineItemMetadataResponse\".
oslimrKind :: Lens' OrdersSetLineItemMetadataResponse (Maybe Text)
oslimrKind
  = lens _oslimrKind (\ s a -> s{_oslimrKind = a})

-- | The status of the execution. Acceptable values are: - \"\`duplicate\`\"
-- - \"\`executed\`\"
oslimrExecutionStatus :: Lens' OrdersSetLineItemMetadataResponse (Maybe Text)
oslimrExecutionStatus
  = lens _oslimrExecutionStatus
      (\ s a -> s{_oslimrExecutionStatus = a})

instance FromJSON OrdersSetLineItemMetadataResponse
         where
        parseJSON
          = withObject "OrdersSetLineItemMetadataResponse"
              (\ o ->
                 OrdersSetLineItemMetadataResponse' <$>
                   (o .:? "kind") <*> (o .:? "executionStatus"))

instance ToJSON OrdersSetLineItemMetadataResponse
         where
        toJSON OrdersSetLineItemMetadataResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _oslimrKind,
                  ("executionStatus" .=) <$> _oslimrExecutionStatus])

--
-- /See:/ 'accounttaxCustomBatchRequest' smart constructor.
newtype AccounttaxCustomBatchRequest =
  AccounttaxCustomBatchRequest'
    { _accEntries :: Maybe [AccounttaxCustomBatchRequestEntry]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccounttaxCustomBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accEntries'
accounttaxCustomBatchRequest
    :: AccounttaxCustomBatchRequest
accounttaxCustomBatchRequest =
  AccounttaxCustomBatchRequest' {_accEntries = Nothing}


-- | The request entries to be processed in the batch.
accEntries :: Lens' AccounttaxCustomBatchRequest [AccounttaxCustomBatchRequestEntry]
accEntries
  = lens _accEntries (\ s a -> s{_accEntries = a}) .
      _Default
      . _Coerce

instance FromJSON AccounttaxCustomBatchRequest where
        parseJSON
          = withObject "AccounttaxCustomBatchRequest"
              (\ o ->
                 AccounttaxCustomBatchRequest' <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON AccounttaxCustomBatchRequest where
        toJSON AccounttaxCustomBatchRequest'{..}
          = object (catMaybes [("entries" .=) <$> _accEntries])

-- | A batch entry encoding a single non-batch products request.
--
-- /See:/ 'productsCustomBatchRequestEntry' smart constructor.
data ProductsCustomBatchRequestEntry =
  ProductsCustomBatchRequestEntry'
    { _prorMerchantId :: !(Maybe (Textual Word64))
    , _prorMethod :: !(Maybe Text)
    , _prorFeedId :: !(Maybe (Textual Word64))
    , _prorProduct :: !(Maybe Product)
    , _prorProductId :: !(Maybe Text)
    , _prorBatchId :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductsCustomBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prorMerchantId'
--
-- * 'prorMethod'
--
-- * 'prorFeedId'
--
-- * 'prorProduct'
--
-- * 'prorProductId'
--
-- * 'prorBatchId'
productsCustomBatchRequestEntry
    :: ProductsCustomBatchRequestEntry
productsCustomBatchRequestEntry =
  ProductsCustomBatchRequestEntry'
    { _prorMerchantId = Nothing
    , _prorMethod = Nothing
    , _prorFeedId = Nothing
    , _prorProduct = Nothing
    , _prorProductId = Nothing
    , _prorBatchId = Nothing
    }


-- | The ID of the managing account.
prorMerchantId :: Lens' ProductsCustomBatchRequestEntry (Maybe Word64)
prorMerchantId
  = lens _prorMerchantId
      (\ s a -> s{_prorMerchantId = a})
      . mapping _Coerce

-- | The method of the batch entry. Acceptable values are: - \"\`delete\`\" -
-- \"\`get\`\" - \"\`insert\`\"
prorMethod :: Lens' ProductsCustomBatchRequestEntry (Maybe Text)
prorMethod
  = lens _prorMethod (\ s a -> s{_prorMethod = a})

-- | The Content API feed id.
prorFeedId :: Lens' ProductsCustomBatchRequestEntry (Maybe Word64)
prorFeedId
  = lens _prorFeedId (\ s a -> s{_prorFeedId = a}) .
      mapping _Coerce

-- | The product to insert. Only required if the method is \`insert\`.
prorProduct :: Lens' ProductsCustomBatchRequestEntry (Maybe Product)
prorProduct
  = lens _prorProduct (\ s a -> s{_prorProduct = a})

-- | The ID of the product to get or delete. Only defined if the method is
-- \`get\` or \`delete\`.
prorProductId :: Lens' ProductsCustomBatchRequestEntry (Maybe Text)
prorProductId
  = lens _prorProductId
      (\ s a -> s{_prorProductId = a})

-- | An entry ID, unique within the batch request.
prorBatchId :: Lens' ProductsCustomBatchRequestEntry (Maybe Word32)
prorBatchId
  = lens _prorBatchId (\ s a -> s{_prorBatchId = a}) .
      mapping _Coerce

instance FromJSON ProductsCustomBatchRequestEntry
         where
        parseJSON
          = withObject "ProductsCustomBatchRequestEntry"
              (\ o ->
                 ProductsCustomBatchRequestEntry' <$>
                   (o .:? "merchantId") <*> (o .:? "method") <*>
                     (o .:? "feedId")
                     <*> (o .:? "product")
                     <*> (o .:? "productId")
                     <*> (o .:? "batchId"))

instance ToJSON ProductsCustomBatchRequestEntry where
        toJSON ProductsCustomBatchRequestEntry'{..}
          = object
              (catMaybes
                 [("merchantId" .=) <$> _prorMerchantId,
                  ("method" .=) <$> _prorMethod,
                  ("feedId" .=) <$> _prorFeedId,
                  ("product" .=) <$> _prorProduct,
                  ("productId" .=) <$> _prorProductId,
                  ("batchId" .=) <$> _prorBatchId])

-- | The collectionstatus message.
--
-- /See:/ 'collectionStatus' smart constructor.
data CollectionStatus =
  CollectionStatus'
    { _csDestinationStatuses :: !(Maybe [CollectionStatusDestinationStatus])
    , _csLastUpdateDate :: !(Maybe Text)
    , _csId :: !(Maybe Text)
    , _csCreationDate :: !(Maybe Text)
    , _csCollectionLevelIssuses :: !(Maybe [CollectionStatusItemLevelIssue])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CollectionStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csDestinationStatuses'
--
-- * 'csLastUpdateDate'
--
-- * 'csId'
--
-- * 'csCreationDate'
--
-- * 'csCollectionLevelIssuses'
collectionStatus
    :: CollectionStatus
collectionStatus =
  CollectionStatus'
    { _csDestinationStatuses = Nothing
    , _csLastUpdateDate = Nothing
    , _csId = Nothing
    , _csCreationDate = Nothing
    , _csCollectionLevelIssuses = Nothing
    }


-- | The intended destinations for the collection.
csDestinationStatuses :: Lens' CollectionStatus [CollectionStatusDestinationStatus]
csDestinationStatuses
  = lens _csDestinationStatuses
      (\ s a -> s{_csDestinationStatuses = a})
      . _Default
      . _Coerce

-- | Date on which the collection has been last updated in [ISO
-- 8601](http:\/\/en.wikipedia.org\/wiki\/ISO_8601) format: Date, time, and
-- offset, e.g. \"2020-01-02T09:00:00+01:00\" or \"2020-01-02T09:00:00Z\"
csLastUpdateDate :: Lens' CollectionStatus (Maybe Text)
csLastUpdateDate
  = lens _csLastUpdateDate
      (\ s a -> s{_csLastUpdateDate = a})

-- | Required. The ID of the collection for which status is reported.
csId :: Lens' CollectionStatus (Maybe Text)
csId = lens _csId (\ s a -> s{_csId = a})

-- | Date on which the collection has been created in [ISO
-- 8601](http:\/\/en.wikipedia.org\/wiki\/ISO_8601) format: Date, time, and
-- offset, e.g. \"2020-01-02T09:00:00+01:00\" or \"2020-01-02T09:00:00Z\"
csCreationDate :: Lens' CollectionStatus (Maybe Text)
csCreationDate
  = lens _csCreationDate
      (\ s a -> s{_csCreationDate = a})

-- | A list of all issues associated with the collection.
csCollectionLevelIssuses :: Lens' CollectionStatus [CollectionStatusItemLevelIssue]
csCollectionLevelIssuses
  = lens _csCollectionLevelIssuses
      (\ s a -> s{_csCollectionLevelIssuses = a})
      . _Default
      . _Coerce

instance FromJSON CollectionStatus where
        parseJSON
          = withObject "CollectionStatus"
              (\ o ->
                 CollectionStatus' <$>
                   (o .:? "destinationStatuses" .!= mempty) <*>
                     (o .:? "lastUpdateDate")
                     <*> (o .:? "id")
                     <*> (o .:? "creationDate")
                     <*> (o .:? "collectionLevelIssuses" .!= mempty))

instance ToJSON CollectionStatus where
        toJSON CollectionStatus'{..}
          = object
              (catMaybes
                 [("destinationStatuses" .=) <$>
                    _csDestinationStatuses,
                  ("lastUpdateDate" .=) <$> _csLastUpdateDate,
                  ("id" .=) <$> _csId,
                  ("creationDate" .=) <$> _csCreationDate,
                  ("collectionLevelIssuses" .=) <$>
                    _csCollectionLevelIssuses])

--
-- /See:/ 'accountGoogleMyBusinessLink' smart constructor.
data AccountGoogleMyBusinessLink =
  AccountGoogleMyBusinessLink'
    { _agmblGmbEmail :: !(Maybe Text)
    , _agmblStatus :: !(Maybe Text)
    , _agmblGmbAccountId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountGoogleMyBusinessLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agmblGmbEmail'
--
-- * 'agmblStatus'
--
-- * 'agmblGmbAccountId'
accountGoogleMyBusinessLink
    :: AccountGoogleMyBusinessLink
accountGoogleMyBusinessLink =
  AccountGoogleMyBusinessLink'
    { _agmblGmbEmail = Nothing
    , _agmblStatus = Nothing
    , _agmblGmbAccountId = Nothing
    }


-- | The GMB email address of which a specific account within a GMB account.
-- A sample account within a GMB account could be a business account with
-- set of locations, managed under the GMB account.
agmblGmbEmail :: Lens' AccountGoogleMyBusinessLink (Maybe Text)
agmblGmbEmail
  = lens _agmblGmbEmail
      (\ s a -> s{_agmblGmbEmail = a})

-- | Status of the link between this Merchant Center account and the GMB
-- account. Acceptable values are: - \"\`active\`\" - \"\`pending\`\"
agmblStatus :: Lens' AccountGoogleMyBusinessLink (Maybe Text)
agmblStatus
  = lens _agmblStatus (\ s a -> s{_agmblStatus = a})

-- | The ID of the GMB account. If this is provided, then \`gmbEmail\` is
-- ignored. The value of this field should match the \`accountId\` used by
-- the GMB API.
agmblGmbAccountId :: Lens' AccountGoogleMyBusinessLink (Maybe Text)
agmblGmbAccountId
  = lens _agmblGmbAccountId
      (\ s a -> s{_agmblGmbAccountId = a})

instance FromJSON AccountGoogleMyBusinessLink where
        parseJSON
          = withObject "AccountGoogleMyBusinessLink"
              (\ o ->
                 AccountGoogleMyBusinessLink' <$>
                   (o .:? "gmbEmail") <*> (o .:? "status") <*>
                     (o .:? "gmbAccountId"))

instance ToJSON AccountGoogleMyBusinessLink where
        toJSON AccountGoogleMyBusinessLink'{..}
          = object
              (catMaybes
                 [("gmbEmail" .=) <$> _agmblGmbEmail,
                  ("status" .=) <$> _agmblStatus,
                  ("gmbAccountId" .=) <$> _agmblGmbAccountId])

-- | A batch entry encoding a single non-batch datafeedstatuses request.
--
-- /See:/ 'datafeedstatusesCustomBatchRequestEntry' smart constructor.
data DatafeedstatusesCustomBatchRequestEntry =
  DatafeedstatusesCustomBatchRequestEntry'
    { _dMerchantId :: !(Maybe (Textual Word64))
    , _dCountry :: !(Maybe Text)
    , _dMethod :: !(Maybe Text)
    , _dDatafeedId :: !(Maybe (Textual Word64))
    , _dLanguage :: !(Maybe Text)
    , _dBatchId :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatafeedstatusesCustomBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dMerchantId'
--
-- * 'dCountry'
--
-- * 'dMethod'
--
-- * 'dDatafeedId'
--
-- * 'dLanguage'
--
-- * 'dBatchId'
datafeedstatusesCustomBatchRequestEntry
    :: DatafeedstatusesCustomBatchRequestEntry
datafeedstatusesCustomBatchRequestEntry =
  DatafeedstatusesCustomBatchRequestEntry'
    { _dMerchantId = Nothing
    , _dCountry = Nothing
    , _dMethod = Nothing
    , _dDatafeedId = Nothing
    , _dLanguage = Nothing
    , _dBatchId = Nothing
    }


-- | The ID of the managing account.
dMerchantId :: Lens' DatafeedstatusesCustomBatchRequestEntry (Maybe Word64)
dMerchantId
  = lens _dMerchantId (\ s a -> s{_dMerchantId = a}) .
      mapping _Coerce

-- | The country for which to get the datafeed status. If this parameter is
-- provided then language must also be provided. Note that for multi-target
-- datafeeds this parameter is required.
dCountry :: Lens' DatafeedstatusesCustomBatchRequestEntry (Maybe Text)
dCountry = lens _dCountry (\ s a -> s{_dCountry = a})

-- | The method of the batch entry. Acceptable values are: - \"\`get\`\"
dMethod :: Lens' DatafeedstatusesCustomBatchRequestEntry (Maybe Text)
dMethod = lens _dMethod (\ s a -> s{_dMethod = a})

-- | The ID of the data feed to get.
dDatafeedId :: Lens' DatafeedstatusesCustomBatchRequestEntry (Maybe Word64)
dDatafeedId
  = lens _dDatafeedId (\ s a -> s{_dDatafeedId = a}) .
      mapping _Coerce

-- | The language for which to get the datafeed status. If this parameter is
-- provided then country must also be provided. Note that for multi-target
-- datafeeds this parameter is required.
dLanguage :: Lens' DatafeedstatusesCustomBatchRequestEntry (Maybe Text)
dLanguage
  = lens _dLanguage (\ s a -> s{_dLanguage = a})

-- | An entry ID, unique within the batch request.
dBatchId :: Lens' DatafeedstatusesCustomBatchRequestEntry (Maybe Word32)
dBatchId
  = lens _dBatchId (\ s a -> s{_dBatchId = a}) .
      mapping _Coerce

instance FromJSON
           DatafeedstatusesCustomBatchRequestEntry
         where
        parseJSON
          = withObject
              "DatafeedstatusesCustomBatchRequestEntry"
              (\ o ->
                 DatafeedstatusesCustomBatchRequestEntry' <$>
                   (o .:? "merchantId") <*> (o .:? "country") <*>
                     (o .:? "method")
                     <*> (o .:? "datafeedId")
                     <*> (o .:? "language")
                     <*> (o .:? "batchId"))

instance ToJSON
           DatafeedstatusesCustomBatchRequestEntry
         where
        toJSON DatafeedstatusesCustomBatchRequestEntry'{..}
          = object
              (catMaybes
                 [("merchantId" .=) <$> _dMerchantId,
                  ("country" .=) <$> _dCountry,
                  ("method" .=) <$> _dMethod,
                  ("datafeedId" .=) <$> _dDatafeedId,
                  ("language" .=) <$> _dLanguage,
                  ("batchId" .=) <$> _dBatchId])

--
-- /See:/ 'returnpolicyCustomBatchResponseEntry' smart constructor.
data ReturnpolicyCustomBatchResponseEntry =
  ReturnpolicyCustomBatchResponseEntry'
    { _rrKind :: !(Maybe Text)
    , _rrReturnPolicy :: !(Maybe ReturnPolicy)
    , _rrErrors :: !(Maybe Errors)
    , _rrBatchId :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReturnpolicyCustomBatchResponseEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrKind'
--
-- * 'rrReturnPolicy'
--
-- * 'rrErrors'
--
-- * 'rrBatchId'
returnpolicyCustomBatchResponseEntry
    :: ReturnpolicyCustomBatchResponseEntry
returnpolicyCustomBatchResponseEntry =
  ReturnpolicyCustomBatchResponseEntry'
    { _rrKind = Nothing
    , _rrReturnPolicy = Nothing
    , _rrErrors = Nothing
    , _rrBatchId = Nothing
    }


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"\`content#returnpolicyCustomBatchResponseEntry\`\"
rrKind :: Lens' ReturnpolicyCustomBatchResponseEntry (Maybe Text)
rrKind = lens _rrKind (\ s a -> s{_rrKind = a})

-- | The retrieved return policy.
rrReturnPolicy :: Lens' ReturnpolicyCustomBatchResponseEntry (Maybe ReturnPolicy)
rrReturnPolicy
  = lens _rrReturnPolicy
      (\ s a -> s{_rrReturnPolicy = a})

-- | A list of errors defined if, and only if, the request failed.
rrErrors :: Lens' ReturnpolicyCustomBatchResponseEntry (Maybe Errors)
rrErrors = lens _rrErrors (\ s a -> s{_rrErrors = a})

-- | The ID of the request entry to which this entry responds.
rrBatchId :: Lens' ReturnpolicyCustomBatchResponseEntry (Maybe Word32)
rrBatchId
  = lens _rrBatchId (\ s a -> s{_rrBatchId = a}) .
      mapping _Coerce

instance FromJSON
           ReturnpolicyCustomBatchResponseEntry
         where
        parseJSON
          = withObject "ReturnpolicyCustomBatchResponseEntry"
              (\ o ->
                 ReturnpolicyCustomBatchResponseEntry' <$>
                   (o .:? "kind") <*> (o .:? "returnPolicy") <*>
                     (o .:? "errors")
                     <*> (o .:? "batchId"))

instance ToJSON ReturnpolicyCustomBatchResponseEntry
         where
        toJSON ReturnpolicyCustomBatchResponseEntry'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _rrKind,
                  ("returnPolicy" .=) <$> _rrReturnPolicy,
                  ("errors" .=) <$> _rrErrors,
                  ("batchId" .=) <$> _rrBatchId])

-- | Return policy resource.
--
-- /See:/ 'returnPolicy' smart constructor.
data ReturnPolicy =
  ReturnPolicy'
    { _rpReturnPolicyId :: !(Maybe Text)
    , _rpCountry :: !(Maybe Text)
    , _rpKind :: !(Maybe Text)
    , _rpNonFreeReturnReasons :: !(Maybe [Text])
    , _rpName :: !(Maybe Text)
    , _rpSeasonalOverrides :: !(Maybe [ReturnPolicySeasonalOverride])
    , _rpPolicy :: !(Maybe ReturnPolicyPolicy)
    , _rpLabel :: !(Maybe Text)
    , _rpReturnShippingFee :: !(Maybe Price)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReturnPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpReturnPolicyId'
--
-- * 'rpCountry'
--
-- * 'rpKind'
--
-- * 'rpNonFreeReturnReasons'
--
-- * 'rpName'
--
-- * 'rpSeasonalOverrides'
--
-- * 'rpPolicy'
--
-- * 'rpLabel'
--
-- * 'rpReturnShippingFee'
returnPolicy
    :: ReturnPolicy
returnPolicy =
  ReturnPolicy'
    { _rpReturnPolicyId = Nothing
    , _rpCountry = Nothing
    , _rpKind = Nothing
    , _rpNonFreeReturnReasons = Nothing
    , _rpName = Nothing
    , _rpSeasonalOverrides = Nothing
    , _rpPolicy = Nothing
    , _rpLabel = Nothing
    , _rpReturnShippingFee = Nothing
    }


-- | Return policy ID generated by Google.
rpReturnPolicyId :: Lens' ReturnPolicy (Maybe Text)
rpReturnPolicyId
  = lens _rpReturnPolicyId
      (\ s a -> s{_rpReturnPolicyId = a})

-- | Required. The country of sale where the return policy is applicable.
rpCountry :: Lens' ReturnPolicy (Maybe Text)
rpCountry
  = lens _rpCountry (\ s a -> s{_rpCountry = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"\`content#returnPolicy\`\"
rpKind :: Lens' ReturnPolicy (Maybe Text)
rpKind = lens _rpKind (\ s a -> s{_rpKind = a})

-- | Return reasons that will incur return fees.
rpNonFreeReturnReasons :: Lens' ReturnPolicy [Text]
rpNonFreeReturnReasons
  = lens _rpNonFreeReturnReasons
      (\ s a -> s{_rpNonFreeReturnReasons = a})
      . _Default
      . _Coerce

-- | Required. The name of the policy as shown in Merchant Center.
rpName :: Lens' ReturnPolicy (Maybe Text)
rpName = lens _rpName (\ s a -> s{_rpName = a})

-- | An optional list of seasonal overrides.
rpSeasonalOverrides :: Lens' ReturnPolicy [ReturnPolicySeasonalOverride]
rpSeasonalOverrides
  = lens _rpSeasonalOverrides
      (\ s a -> s{_rpSeasonalOverrides = a})
      . _Default
      . _Coerce

-- | Required. The policy.
rpPolicy :: Lens' ReturnPolicy (Maybe ReturnPolicyPolicy)
rpPolicy = lens _rpPolicy (\ s a -> s{_rpPolicy = a})

-- | Required. The user-defined label of the return policy. For the default
-- policy, use the label \"default\".
rpLabel :: Lens' ReturnPolicy (Maybe Text)
rpLabel = lens _rpLabel (\ s a -> s{_rpLabel = a})

-- | The return shipping fee that will apply to non free return reasons.
rpReturnShippingFee :: Lens' ReturnPolicy (Maybe Price)
rpReturnShippingFee
  = lens _rpReturnShippingFee
      (\ s a -> s{_rpReturnShippingFee = a})

instance FromJSON ReturnPolicy where
        parseJSON
          = withObject "ReturnPolicy"
              (\ o ->
                 ReturnPolicy' <$>
                   (o .:? "returnPolicyId") <*> (o .:? "country") <*>
                     (o .:? "kind")
                     <*> (o .:? "nonFreeReturnReasons" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "seasonalOverrides" .!= mempty)
                     <*> (o .:? "policy")
                     <*> (o .:? "label")
                     <*> (o .:? "returnShippingFee"))

instance ToJSON ReturnPolicy where
        toJSON ReturnPolicy'{..}
          = object
              (catMaybes
                 [("returnPolicyId" .=) <$> _rpReturnPolicyId,
                  ("country" .=) <$> _rpCountry,
                  ("kind" .=) <$> _rpKind,
                  ("nonFreeReturnReasons" .=) <$>
                    _rpNonFreeReturnReasons,
                  ("name" .=) <$> _rpName,
                  ("seasonalOverrides" .=) <$> _rpSeasonalOverrides,
                  ("policy" .=) <$> _rpPolicy,
                  ("label" .=) <$> _rpLabel,
                  ("returnShippingFee" .=) <$> _rpReturnShippingFee])

-- | Destination status message.
--
-- /See:/ 'collectionStatusDestinationStatus' smart constructor.
data CollectionStatusDestinationStatus =
  CollectionStatusDestinationStatus'
    { _csdsDestination :: !(Maybe Text)
    , _csdsStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CollectionStatusDestinationStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csdsDestination'
--
-- * 'csdsStatus'
collectionStatusDestinationStatus
    :: CollectionStatusDestinationStatus
collectionStatusDestinationStatus =
  CollectionStatusDestinationStatus'
    {_csdsDestination = Nothing, _csdsStatus = Nothing}


-- | The name of the destination
csdsDestination :: Lens' CollectionStatusDestinationStatus (Maybe Text)
csdsDestination
  = lens _csdsDestination
      (\ s a -> s{_csdsDestination = a})

-- | The status for the specified destination.
csdsStatus :: Lens' CollectionStatusDestinationStatus (Maybe Text)
csdsStatus
  = lens _csdsStatus (\ s a -> s{_csdsStatus = a})

instance FromJSON CollectionStatusDestinationStatus
         where
        parseJSON
          = withObject "CollectionStatusDestinationStatus"
              (\ o ->
                 CollectionStatusDestinationStatus' <$>
                   (o .:? "destination") <*> (o .:? "status"))

instance ToJSON CollectionStatusDestinationStatus
         where
        toJSON CollectionStatusDestinationStatus'{..}
          = object
              (catMaybes
                 [("destination" .=) <$> _csdsDestination,
                  ("status" .=) <$> _csdsStatus])

--
-- /See:/ 'orderCustomer' smart constructor.
data OrderCustomer =
  OrderCustomer'
    { _ocLoyaltyInfo :: !(Maybe OrderCustomerLoyaltyInfo)
    , _ocFullName :: !(Maybe Text)
    , _ocInvoiceReceivingEmail :: !(Maybe Text)
    , _ocMarketingRightsInfo :: !(Maybe OrderCustomerMarketingRightsInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderCustomer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocLoyaltyInfo'
--
-- * 'ocFullName'
--
-- * 'ocInvoiceReceivingEmail'
--
-- * 'ocMarketingRightsInfo'
orderCustomer
    :: OrderCustomer
orderCustomer =
  OrderCustomer'
    { _ocLoyaltyInfo = Nothing
    , _ocFullName = Nothing
    , _ocInvoiceReceivingEmail = Nothing
    , _ocMarketingRightsInfo = Nothing
    }


-- | Loyalty program information.
ocLoyaltyInfo :: Lens' OrderCustomer (Maybe OrderCustomerLoyaltyInfo)
ocLoyaltyInfo
  = lens _ocLoyaltyInfo
      (\ s a -> s{_ocLoyaltyInfo = a})

-- | Full name of the customer.
ocFullName :: Lens' OrderCustomer (Maybe Text)
ocFullName
  = lens _ocFullName (\ s a -> s{_ocFullName = a})

-- | Email address for the merchant to send value-added tax or invoice
-- documentation of the order. Only the last document sent is made
-- available to the customer. For more information, see About automated VAT
-- invoicing for Buy on Google.
ocInvoiceReceivingEmail :: Lens' OrderCustomer (Maybe Text)
ocInvoiceReceivingEmail
  = lens _ocInvoiceReceivingEmail
      (\ s a -> s{_ocInvoiceReceivingEmail = a})

-- | Customer\'s marketing preferences. Contains the marketing opt-in
-- information that is current at the time that the merchant call. User
-- preference selections can change from one order to the next so
-- preferences must be checked with every order.
ocMarketingRightsInfo :: Lens' OrderCustomer (Maybe OrderCustomerMarketingRightsInfo)
ocMarketingRightsInfo
  = lens _ocMarketingRightsInfo
      (\ s a -> s{_ocMarketingRightsInfo = a})

instance FromJSON OrderCustomer where
        parseJSON
          = withObject "OrderCustomer"
              (\ o ->
                 OrderCustomer' <$>
                   (o .:? "loyaltyInfo") <*> (o .:? "fullName") <*>
                     (o .:? "invoiceReceivingEmail")
                     <*> (o .:? "marketingRightsInfo"))

instance ToJSON OrderCustomer where
        toJSON OrderCustomer'{..}
          = object
              (catMaybes
                 [("loyaltyInfo" .=) <$> _ocLoyaltyInfo,
                  ("fullName" .=) <$> _ocFullName,
                  ("invoiceReceivingEmail" .=) <$>
                    _ocInvoiceReceivingEmail,
                  ("marketingRightsInfo" .=) <$>
                    _ocMarketingRightsInfo])

--
-- /See:/ 'locationIdSet' smart constructor.
newtype LocationIdSet =
  LocationIdSet'
    { _lisLocationIds :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationIdSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lisLocationIds'
locationIdSet
    :: LocationIdSet
locationIdSet = LocationIdSet' {_lisLocationIds = Nothing}


-- | A non-empty list of location IDs. They must all be of the same location
-- type (e.g., state).
lisLocationIds :: Lens' LocationIdSet [Text]
lisLocationIds
  = lens _lisLocationIds
      (\ s a -> s{_lisLocationIds = a})
      . _Default
      . _Coerce

instance FromJSON LocationIdSet where
        parseJSON
          = withObject "LocationIdSet"
              (\ o ->
                 LocationIdSet' <$> (o .:? "locationIds" .!= mempty))

instance ToJSON LocationIdSet where
        toJSON LocationIdSet'{..}
          = object
              (catMaybes [("locationIds" .=) <$> _lisLocationIds])

--
-- /See:/ 'row' smart constructor.
newtype Row =
  Row'
    { _rCells :: Maybe [Value]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Row' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rCells'
row
    :: Row
row = Row' {_rCells = Nothing}


-- | The list of cells that constitute the row. Must have the same length as
-- \`columnHeaders\` for two-dimensional tables, a length of 1 for
-- one-dimensional tables. Required.
rCells :: Lens' Row [Value]
rCells
  = lens _rCells (\ s a -> s{_rCells = a}) . _Default .
      _Coerce

instance FromJSON Row where
        parseJSON
          = withObject "Row"
              (\ o -> Row' <$> (o .:? "cells" .!= mempty))

instance ToJSON Row where
        toJSON Row'{..}
          = object (catMaybes [("cells" .=) <$> _rCells])

--
-- /See:/ 'ordersGetByMerchantOrderIdResponse' smart constructor.
data OrdersGetByMerchantOrderIdResponse =
  OrdersGetByMerchantOrderIdResponse'
    { _ogbmoirKind :: !(Maybe Text)
    , _ogbmoirOrder :: !(Maybe Order)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersGetByMerchantOrderIdResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogbmoirKind'
--
-- * 'ogbmoirOrder'
ordersGetByMerchantOrderIdResponse
    :: OrdersGetByMerchantOrderIdResponse
ordersGetByMerchantOrderIdResponse =
  OrdersGetByMerchantOrderIdResponse'
    {_ogbmoirKind = Nothing, _ogbmoirOrder = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersGetByMerchantOrderIdResponse\".
ogbmoirKind :: Lens' OrdersGetByMerchantOrderIdResponse (Maybe Text)
ogbmoirKind
  = lens _ogbmoirKind (\ s a -> s{_ogbmoirKind = a})

-- | The requested order.
ogbmoirOrder :: Lens' OrdersGetByMerchantOrderIdResponse (Maybe Order)
ogbmoirOrder
  = lens _ogbmoirOrder (\ s a -> s{_ogbmoirOrder = a})

instance FromJSON OrdersGetByMerchantOrderIdResponse
         where
        parseJSON
          = withObject "OrdersGetByMerchantOrderIdResponse"
              (\ o ->
                 OrdersGetByMerchantOrderIdResponse' <$>
                   (o .:? "kind") <*> (o .:? "order"))

instance ToJSON OrdersGetByMerchantOrderIdResponse
         where
        toJSON OrdersGetByMerchantOrderIdResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _ogbmoirKind,
                  ("order" .=) <$> _ogbmoirOrder])

--
-- /See:/ 'ordersRejectReturnLineItemRequest' smart constructor.
data OrdersRejectReturnLineItemRequest =
  OrdersRejectReturnLineItemRequest'
    { _orrlirQuantity :: !(Maybe (Textual Word32))
    , _orrlirLineItemId :: !(Maybe Text)
    , _orrlirReason :: !(Maybe Text)
    , _orrlirOperationId :: !(Maybe Text)
    , _orrlirProductId :: !(Maybe Text)
    , _orrlirReasonText :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersRejectReturnLineItemRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orrlirQuantity'
--
-- * 'orrlirLineItemId'
--
-- * 'orrlirReason'
--
-- * 'orrlirOperationId'
--
-- * 'orrlirProductId'
--
-- * 'orrlirReasonText'
ordersRejectReturnLineItemRequest
    :: OrdersRejectReturnLineItemRequest
ordersRejectReturnLineItemRequest =
  OrdersRejectReturnLineItemRequest'
    { _orrlirQuantity = Nothing
    , _orrlirLineItemId = Nothing
    , _orrlirReason = Nothing
    , _orrlirOperationId = Nothing
    , _orrlirProductId = Nothing
    , _orrlirReasonText = Nothing
    }


-- | The quantity to return and refund.
orrlirQuantity :: Lens' OrdersRejectReturnLineItemRequest (Maybe Word32)
orrlirQuantity
  = lens _orrlirQuantity
      (\ s a -> s{_orrlirQuantity = a})
      . mapping _Coerce

-- | The ID of the line item to return. Either lineItemId or productId is
-- required.
orrlirLineItemId :: Lens' OrdersRejectReturnLineItemRequest (Maybe Text)
orrlirLineItemId
  = lens _orrlirLineItemId
      (\ s a -> s{_orrlirLineItemId = a})

-- | The reason for the return. Acceptable values are: -
-- \"\`damagedOrUsed\`\" - \"\`missingComponent\`\" - \"\`notEligible\`\" -
-- \"\`other\`\" - \"\`outOfReturnWindow\`\"
orrlirReason :: Lens' OrdersRejectReturnLineItemRequest (Maybe Text)
orrlirReason
  = lens _orrlirReason (\ s a -> s{_orrlirReason = a})

-- | The ID of the operation. Unique across all operations for a given order.
orrlirOperationId :: Lens' OrdersRejectReturnLineItemRequest (Maybe Text)
orrlirOperationId
  = lens _orrlirOperationId
      (\ s a -> s{_orrlirOperationId = a})

-- | The ID of the product to return. This is the REST ID used in the
-- products service. Either lineItemId or productId is required.
orrlirProductId :: Lens' OrdersRejectReturnLineItemRequest (Maybe Text)
orrlirProductId
  = lens _orrlirProductId
      (\ s a -> s{_orrlirProductId = a})

-- | The explanation of the reason.
orrlirReasonText :: Lens' OrdersRejectReturnLineItemRequest (Maybe Text)
orrlirReasonText
  = lens _orrlirReasonText
      (\ s a -> s{_orrlirReasonText = a})

instance FromJSON OrdersRejectReturnLineItemRequest
         where
        parseJSON
          = withObject "OrdersRejectReturnLineItemRequest"
              (\ o ->
                 OrdersRejectReturnLineItemRequest' <$>
                   (o .:? "quantity") <*> (o .:? "lineItemId") <*>
                     (o .:? "reason")
                     <*> (o .:? "operationId")
                     <*> (o .:? "productId")
                     <*> (o .:? "reasonText"))

instance ToJSON OrdersRejectReturnLineItemRequest
         where
        toJSON OrdersRejectReturnLineItemRequest'{..}
          = object
              (catMaybes
                 [("quantity" .=) <$> _orrlirQuantity,
                  ("lineItemId" .=) <$> _orrlirLineItemId,
                  ("reason" .=) <$> _orrlirReason,
                  ("operationId" .=) <$> _orrlirOperationId,
                  ("productId" .=) <$> _orrlirProductId,
                  ("reasonText" .=) <$> _orrlirReasonText])

--
-- /See:/ 'ordersCancelRequest' smart constructor.
data OrdersCancelRequest =
  OrdersCancelRequest'
    { _ocrReason :: !(Maybe Text)
    , _ocrOperationId :: !(Maybe Text)
    , _ocrReasonText :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersCancelRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocrReason'
--
-- * 'ocrOperationId'
--
-- * 'ocrReasonText'
ordersCancelRequest
    :: OrdersCancelRequest
ordersCancelRequest =
  OrdersCancelRequest'
    {_ocrReason = Nothing, _ocrOperationId = Nothing, _ocrReasonText = Nothing}


-- | The reason for the cancellation. Acceptable values are: -
-- \"\`customerInitiatedCancel\`\" - \"\`invalidCoupon\`\" -
-- \"\`malformedShippingAddress\`\" - \"\`noInventory\`\" - \"\`other\`\" -
-- \"\`priceError\`\" - \"\`shippingPriceError\`\" - \"\`taxError\`\" -
-- \"\`undeliverableShippingAddress\`\" - \"\`unsupportedPoBoxAddress\`\"
ocrReason :: Lens' OrdersCancelRequest (Maybe Text)
ocrReason
  = lens _ocrReason (\ s a -> s{_ocrReason = a})

-- | The ID of the operation. Unique across all operations for a given order.
ocrOperationId :: Lens' OrdersCancelRequest (Maybe Text)
ocrOperationId
  = lens _ocrOperationId
      (\ s a -> s{_ocrOperationId = a})

-- | The explanation of the reason.
ocrReasonText :: Lens' OrdersCancelRequest (Maybe Text)
ocrReasonText
  = lens _ocrReasonText
      (\ s a -> s{_ocrReasonText = a})

instance FromJSON OrdersCancelRequest where
        parseJSON
          = withObject "OrdersCancelRequest"
              (\ o ->
                 OrdersCancelRequest' <$>
                   (o .:? "reason") <*> (o .:? "operationId") <*>
                     (o .:? "reasonText"))

instance ToJSON OrdersCancelRequest where
        toJSON OrdersCancelRequest'{..}
          = object
              (catMaybes
                 [("reason" .=) <$> _ocrReason,
                  ("operationId" .=) <$> _ocrOperationId,
                  ("reasonText" .=) <$> _ocrReasonText])

--
-- /See:/ 'returnShipment' smart constructor.
data ReturnShipment =
  ReturnShipment'
    { _rsState :: !(Maybe Text)
    , _rsShipmentTrackingInfos :: !(Maybe [ShipmentTrackingInfo])
    , _rsReturnMethodType :: !(Maybe Text)
    , _rsShipmentId :: !(Maybe Text)
    , _rsCreationDate :: !(Maybe Text)
    , _rsDeliveryDate :: !(Maybe Text)
    , _rsShippingDate :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReturnShipment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsState'
--
-- * 'rsShipmentTrackingInfos'
--
-- * 'rsReturnMethodType'
--
-- * 'rsShipmentId'
--
-- * 'rsCreationDate'
--
-- * 'rsDeliveryDate'
--
-- * 'rsShippingDate'
returnShipment
    :: ReturnShipment
returnShipment =
  ReturnShipment'
    { _rsState = Nothing
    , _rsShipmentTrackingInfos = Nothing
    , _rsReturnMethodType = Nothing
    , _rsShipmentId = Nothing
    , _rsCreationDate = Nothing
    , _rsDeliveryDate = Nothing
    , _rsShippingDate = Nothing
    }


-- | State of the shipment. Acceptable values are: - \"\`completed\`\" -
-- \"\`new\`\" - \"\`shipped\`\" - \"\`undeliverable\`\" - \"\`pending\`\"
rsState :: Lens' ReturnShipment (Maybe Text)
rsState = lens _rsState (\ s a -> s{_rsState = a})

-- | Tracking information of the shipment. One return shipment might be
-- handled by several shipping carriers sequentially.
rsShipmentTrackingInfos :: Lens' ReturnShipment [ShipmentTrackingInfo]
rsShipmentTrackingInfos
  = lens _rsShipmentTrackingInfos
      (\ s a -> s{_rsShipmentTrackingInfos = a})
      . _Default
      . _Coerce

-- | Type of the return method. Acceptable values are: - \"\`byMail\`\" -
-- \"\`contactCustomerSupport\`\" - \"\`returnless\`\" - \"\`inStore\`\"
rsReturnMethodType :: Lens' ReturnShipment (Maybe Text)
rsReturnMethodType
  = lens _rsReturnMethodType
      (\ s a -> s{_rsReturnMethodType = a})

-- | Shipment ID generated by Google.
rsShipmentId :: Lens' ReturnShipment (Maybe Text)
rsShipmentId
  = lens _rsShipmentId (\ s a -> s{_rsShipmentId = a})

-- | The date of creation of the shipment, in ISO 8601 format.
rsCreationDate :: Lens' ReturnShipment (Maybe Text)
rsCreationDate
  = lens _rsCreationDate
      (\ s a -> s{_rsCreationDate = a})

-- | The date of delivery of the shipment, in ISO 8601 format.
rsDeliveryDate :: Lens' ReturnShipment (Maybe Text)
rsDeliveryDate
  = lens _rsDeliveryDate
      (\ s a -> s{_rsDeliveryDate = a})

-- | The date of shipping of the shipment, in ISO 8601 format.
rsShippingDate :: Lens' ReturnShipment (Maybe Text)
rsShippingDate
  = lens _rsShippingDate
      (\ s a -> s{_rsShippingDate = a})

instance FromJSON ReturnShipment where
        parseJSON
          = withObject "ReturnShipment"
              (\ o ->
                 ReturnShipment' <$>
                   (o .:? "state") <*>
                     (o .:? "shipmentTrackingInfos" .!= mempty)
                     <*> (o .:? "returnMethodType")
                     <*> (o .:? "shipmentId")
                     <*> (o .:? "creationDate")
                     <*> (o .:? "deliveryDate")
                     <*> (o .:? "shippingDate"))

instance ToJSON ReturnShipment where
        toJSON ReturnShipment'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _rsState,
                  ("shipmentTrackingInfos" .=) <$>
                    _rsShipmentTrackingInfos,
                  ("returnMethodType" .=) <$> _rsReturnMethodType,
                  ("shipmentId" .=) <$> _rsShipmentId,
                  ("creationDate" .=) <$> _rsCreationDate,
                  ("deliveryDate" .=) <$> _rsDeliveryDate,
                  ("shippingDate" .=) <$> _rsShippingDate])

-- | Definition of a rule restriction. At least one of the following needs to
-- be true: (1) use_auto_pricing_min_price is true (2) floor.price_delta
-- exists (3) floor.percentage_delta exists If floor.price_delta and
-- floor.percentage_delta are both set on a rule, the highest value will be
-- chosen by the Repricer. In other words, for a product with a price of
-- $50, if the \`floor.percentage_delta\` is \"-10\" and the
-- floor.price_delta is \"-12\", the offer price will only be lowered $5
-- (10% lower than the original offer price).
--
-- /See:/ 'repricingRuleRestriction' smart constructor.
data RepricingRuleRestriction =
  RepricingRuleRestriction'
    { _rrrFloor :: !(Maybe RepricingRuleRestrictionBoundary)
    , _rrrUseAutoPricingMinPrice :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RepricingRuleRestriction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrrFloor'
--
-- * 'rrrUseAutoPricingMinPrice'
repricingRuleRestriction
    :: RepricingRuleRestriction
repricingRuleRestriction =
  RepricingRuleRestriction'
    {_rrrFloor = Nothing, _rrrUseAutoPricingMinPrice = Nothing}


-- | The inclusive floor lower bound. The repricing rule only applies when
-- new price >= floor.
rrrFloor :: Lens' RepricingRuleRestriction (Maybe RepricingRuleRestrictionBoundary)
rrrFloor = lens _rrrFloor (\ s a -> s{_rrrFloor = a})

-- | If true, use the AUTO_PRICING_MIN_PRICE offer attribute as the lower
-- bound of the rule. If use_auto_pricing_min_price is true, then only
-- offers with \`AUTO_PRICING_MIN_PRICE\` existing on the offer will get
-- Repricer treatment, even if a floor value is set on the rule. Also, if
-- use_auto_pricing_min_price is true, the floor restriction will be
-- ignored.
rrrUseAutoPricingMinPrice :: Lens' RepricingRuleRestriction (Maybe Bool)
rrrUseAutoPricingMinPrice
  = lens _rrrUseAutoPricingMinPrice
      (\ s a -> s{_rrrUseAutoPricingMinPrice = a})

instance FromJSON RepricingRuleRestriction where
        parseJSON
          = withObject "RepricingRuleRestriction"
              (\ o ->
                 RepricingRuleRestriction' <$>
                   (o .:? "floor") <*> (o .:? "useAutoPricingMinPrice"))

instance ToJSON RepricingRuleRestriction where
        toJSON RepricingRuleRestriction'{..}
          = object
              (catMaybes
                 [("floor" .=) <$> _rrrFloor,
                  ("useAutoPricingMinPrice" .=) <$>
                    _rrrUseAutoPricingMinPrice])

--
-- /See:/ 'ordersCancelTestOrderByCustomerRequest' smart constructor.
newtype OrdersCancelTestOrderByCustomerRequest =
  OrdersCancelTestOrderByCustomerRequest'
    { _octobcrReason :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersCancelTestOrderByCustomerRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'octobcrReason'
ordersCancelTestOrderByCustomerRequest
    :: OrdersCancelTestOrderByCustomerRequest
ordersCancelTestOrderByCustomerRequest =
  OrdersCancelTestOrderByCustomerRequest' {_octobcrReason = Nothing}


-- | The reason for the cancellation. Acceptable values are: -
-- \"\`changedMind\`\" - \"\`orderedWrongItem\`\" - \"\`other\`\"
octobcrReason :: Lens' OrdersCancelTestOrderByCustomerRequest (Maybe Text)
octobcrReason
  = lens _octobcrReason
      (\ s a -> s{_octobcrReason = a})

instance FromJSON
           OrdersCancelTestOrderByCustomerRequest
         where
        parseJSON
          = withObject "OrdersCancelTestOrderByCustomerRequest"
              (\ o ->
                 OrdersCancelTestOrderByCustomerRequest' <$>
                   (o .:? "reason"))

instance ToJSON
           OrdersCancelTestOrderByCustomerRequest
         where
        toJSON OrdersCancelTestOrderByCustomerRequest'{..}
          = object
              (catMaybes [("reason" .=) <$> _octobcrReason])

--
-- /See:/ 'productStatusItemLevelIssue' smart constructor.
data ProductStatusItemLevelIssue =
  ProductStatusItemLevelIssue'
    { _psiliDestination :: !(Maybe Text)
    , _psiliResolution :: !(Maybe Text)
    , _psiliDocumentation :: !(Maybe Text)
    , _psiliCode :: !(Maybe Text)
    , _psiliServability :: !(Maybe Text)
    , _psiliApplicableCountries :: !(Maybe [Text])
    , _psiliAttributeName :: !(Maybe Text)
    , _psiliDescription :: !(Maybe Text)
    , _psiliDetail :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductStatusItemLevelIssue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psiliDestination'
--
-- * 'psiliResolution'
--
-- * 'psiliDocumentation'
--
-- * 'psiliCode'
--
-- * 'psiliServability'
--
-- * 'psiliApplicableCountries'
--
-- * 'psiliAttributeName'
--
-- * 'psiliDescription'
--
-- * 'psiliDetail'
productStatusItemLevelIssue
    :: ProductStatusItemLevelIssue
productStatusItemLevelIssue =
  ProductStatusItemLevelIssue'
    { _psiliDestination = Nothing
    , _psiliResolution = Nothing
    , _psiliDocumentation = Nothing
    , _psiliCode = Nothing
    , _psiliServability = Nothing
    , _psiliApplicableCountries = Nothing
    , _psiliAttributeName = Nothing
    , _psiliDescription = Nothing
    , _psiliDetail = Nothing
    }


-- | The destination the issue applies to.
psiliDestination :: Lens' ProductStatusItemLevelIssue (Maybe Text)
psiliDestination
  = lens _psiliDestination
      (\ s a -> s{_psiliDestination = a})

-- | Whether the issue can be resolved by the merchant.
psiliResolution :: Lens' ProductStatusItemLevelIssue (Maybe Text)
psiliResolution
  = lens _psiliResolution
      (\ s a -> s{_psiliResolution = a})

-- | The URL of a web page to help with resolving this issue.
psiliDocumentation :: Lens' ProductStatusItemLevelIssue (Maybe Text)
psiliDocumentation
  = lens _psiliDocumentation
      (\ s a -> s{_psiliDocumentation = a})

-- | The error code of the issue.
psiliCode :: Lens' ProductStatusItemLevelIssue (Maybe Text)
psiliCode
  = lens _psiliCode (\ s a -> s{_psiliCode = a})

-- | How this issue affects serving of the offer.
psiliServability :: Lens' ProductStatusItemLevelIssue (Maybe Text)
psiliServability
  = lens _psiliServability
      (\ s a -> s{_psiliServability = a})

-- | List of country codes (ISO 3166-1 alpha-2) where issue applies to the
-- offer.
psiliApplicableCountries :: Lens' ProductStatusItemLevelIssue [Text]
psiliApplicableCountries
  = lens _psiliApplicableCountries
      (\ s a -> s{_psiliApplicableCountries = a})
      . _Default
      . _Coerce

-- | The attribute\'s name, if the issue is caused by a single attribute.
psiliAttributeName :: Lens' ProductStatusItemLevelIssue (Maybe Text)
psiliAttributeName
  = lens _psiliAttributeName
      (\ s a -> s{_psiliAttributeName = a})

-- | A short issue description in English.
psiliDescription :: Lens' ProductStatusItemLevelIssue (Maybe Text)
psiliDescription
  = lens _psiliDescription
      (\ s a -> s{_psiliDescription = a})

-- | A detailed issue description in English.
psiliDetail :: Lens' ProductStatusItemLevelIssue (Maybe Text)
psiliDetail
  = lens _psiliDetail (\ s a -> s{_psiliDetail = a})

instance FromJSON ProductStatusItemLevelIssue where
        parseJSON
          = withObject "ProductStatusItemLevelIssue"
              (\ o ->
                 ProductStatusItemLevelIssue' <$>
                   (o .:? "destination") <*> (o .:? "resolution") <*>
                     (o .:? "documentation")
                     <*> (o .:? "code")
                     <*> (o .:? "servability")
                     <*> (o .:? "applicableCountries" .!= mempty)
                     <*> (o .:? "attributeName")
                     <*> (o .:? "description")
                     <*> (o .:? "detail"))

instance ToJSON ProductStatusItemLevelIssue where
        toJSON ProductStatusItemLevelIssue'{..}
          = object
              (catMaybes
                 [("destination" .=) <$> _psiliDestination,
                  ("resolution" .=) <$> _psiliResolution,
                  ("documentation" .=) <$> _psiliDocumentation,
                  ("code" .=) <$> _psiliCode,
                  ("servability" .=) <$> _psiliServability,
                  ("applicableCountries" .=) <$>
                    _psiliApplicableCountries,
                  ("attributeName" .=) <$> _psiliAttributeName,
                  ("description" .=) <$> _psiliDescription,
                  ("detail" .=) <$> _psiliDetail])

--
-- /See:/ 'orderLineItemProductVariantAttribute' smart constructor.
data OrderLineItemProductVariantAttribute =
  OrderLineItemProductVariantAttribute'
    { _olipvaDimension :: !(Maybe Text)
    , _olipvaValue :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderLineItemProductVariantAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olipvaDimension'
--
-- * 'olipvaValue'
orderLineItemProductVariantAttribute
    :: OrderLineItemProductVariantAttribute
orderLineItemProductVariantAttribute =
  OrderLineItemProductVariantAttribute'
    {_olipvaDimension = Nothing, _olipvaValue = Nothing}


-- | The dimension of the variant.
olipvaDimension :: Lens' OrderLineItemProductVariantAttribute (Maybe Text)
olipvaDimension
  = lens _olipvaDimension
      (\ s a -> s{_olipvaDimension = a})

-- | The value for the dimension.
olipvaValue :: Lens' OrderLineItemProductVariantAttribute (Maybe Text)
olipvaValue
  = lens _olipvaValue (\ s a -> s{_olipvaValue = a})

instance FromJSON
           OrderLineItemProductVariantAttribute
         where
        parseJSON
          = withObject "OrderLineItemProductVariantAttribute"
              (\ o ->
                 OrderLineItemProductVariantAttribute' <$>
                   (o .:? "dimension") <*> (o .:? "value"))

instance ToJSON OrderLineItemProductVariantAttribute
         where
        toJSON OrderLineItemProductVariantAttribute'{..}
          = object
              (catMaybes
                 [("dimension" .=) <$> _olipvaDimension,
                  ("value" .=) <$> _olipvaValue])

-- | Return policy online object. This is currently used to represent return
-- policies for ads and free listings programs.
--
-- /See:/ 'returnPolicyOnline' smart constructor.
data ReturnPolicyOnline =
  ReturnPolicyOnline'
    { _rpoReturnPolicyURI :: !(Maybe Text)
    , _rpoReturnPolicyId :: !(Maybe Text)
    , _rpoItemConditions :: !(Maybe [ReturnPolicyOnlineItemConditionsItem])
    , _rpoReturnMethods :: !(Maybe [ReturnPolicyOnlineReturnMethodsItem])
    , _rpoCountries :: !(Maybe [Text])
    , _rpoName :: !(Maybe Text)
    , _rpoPolicy :: !(Maybe ReturnPolicyOnlinePolicy)
    , _rpoReturnReasonCategoryInfo :: !(Maybe [ReturnPolicyOnlineReturnReasonCategoryInfo])
    , _rpoLabel :: !(Maybe Text)
    , _rpoRestockingFee :: !(Maybe ReturnPolicyOnlineRestockingFee)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReturnPolicyOnline' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpoReturnPolicyURI'
--
-- * 'rpoReturnPolicyId'
--
-- * 'rpoItemConditions'
--
-- * 'rpoReturnMethods'
--
-- * 'rpoCountries'
--
-- * 'rpoName'
--
-- * 'rpoPolicy'
--
-- * 'rpoReturnReasonCategoryInfo'
--
-- * 'rpoLabel'
--
-- * 'rpoRestockingFee'
returnPolicyOnline
    :: ReturnPolicyOnline
returnPolicyOnline =
  ReturnPolicyOnline'
    { _rpoReturnPolicyURI = Nothing
    , _rpoReturnPolicyId = Nothing
    , _rpoItemConditions = Nothing
    , _rpoReturnMethods = Nothing
    , _rpoCountries = Nothing
    , _rpoName = Nothing
    , _rpoPolicy = Nothing
    , _rpoReturnReasonCategoryInfo = Nothing
    , _rpoLabel = Nothing
    , _rpoRestockingFee = Nothing
    }


-- | The return policy uri. This can used by Google to do a sanity check for
-- the policy.
rpoReturnPolicyURI :: Lens' ReturnPolicyOnline (Maybe Text)
rpoReturnPolicyURI
  = lens _rpoReturnPolicyURI
      (\ s a -> s{_rpoReturnPolicyURI = a})

-- | Output only. Return policy ID generated by Google.
rpoReturnPolicyId :: Lens' ReturnPolicyOnline (Maybe Text)
rpoReturnPolicyId
  = lens _rpoReturnPolicyId
      (\ s a -> s{_rpoReturnPolicyId = a})

-- | The item conditions that are accepted for returns. This is required to
-- not be empty unless the type of return policy is noReturns.
rpoItemConditions :: Lens' ReturnPolicyOnline [ReturnPolicyOnlineItemConditionsItem]
rpoItemConditions
  = lens _rpoItemConditions
      (\ s a -> s{_rpoItemConditions = a})
      . _Default
      . _Coerce

-- | The return methods of how customers can return an item. This value is
-- required to not be empty unless the type of return policy is noReturns.
rpoReturnMethods :: Lens' ReturnPolicyOnline [ReturnPolicyOnlineReturnMethodsItem]
rpoReturnMethods
  = lens _rpoReturnMethods
      (\ s a -> s{_rpoReturnMethods = a})
      . _Default
      . _Coerce

-- | The countries of sale where the return policy is applicable. The values
-- must be a valid 2 letter ISO 3166 code, e.g. \"US\".
rpoCountries :: Lens' ReturnPolicyOnline [Text]
rpoCountries
  = lens _rpoCountries (\ s a -> s{_rpoCountries = a})
      . _Default
      . _Coerce

-- | The name of the policy as shown in Merchant Center.
rpoName :: Lens' ReturnPolicyOnline (Maybe Text)
rpoName = lens _rpoName (\ s a -> s{_rpoName = a})

-- | The return policy.
rpoPolicy :: Lens' ReturnPolicyOnline (Maybe ReturnPolicyOnlinePolicy)
rpoPolicy
  = lens _rpoPolicy (\ s a -> s{_rpoPolicy = a})

-- | The return reason category information. This required to not be empty
-- unless the type of return policy is noReturns.
rpoReturnReasonCategoryInfo :: Lens' ReturnPolicyOnline [ReturnPolicyOnlineReturnReasonCategoryInfo]
rpoReturnReasonCategoryInfo
  = lens _rpoReturnReasonCategoryInfo
      (\ s a -> s{_rpoReturnReasonCategoryInfo = a})
      . _Default
      . _Coerce

-- | The unique user-defined label of the return policy. The same label
-- cannot be used in different return policies for the same country.
-- Policies with the label \'default\' will apply to all products, unless a
-- product specifies a return_policy_label attribute.
rpoLabel :: Lens' ReturnPolicyOnline (Maybe Text)
rpoLabel = lens _rpoLabel (\ s a -> s{_rpoLabel = a})

-- | The restocking fee that applies to all return reason categories. This
-- would be treated as a free restocking fee if the value is not set.
rpoRestockingFee :: Lens' ReturnPolicyOnline (Maybe ReturnPolicyOnlineRestockingFee)
rpoRestockingFee
  = lens _rpoRestockingFee
      (\ s a -> s{_rpoRestockingFee = a})

instance FromJSON ReturnPolicyOnline where
        parseJSON
          = withObject "ReturnPolicyOnline"
              (\ o ->
                 ReturnPolicyOnline' <$>
                   (o .:? "returnPolicyUri") <*>
                     (o .:? "returnPolicyId")
                     <*> (o .:? "itemConditions" .!= mempty)
                     <*> (o .:? "returnMethods" .!= mempty)
                     <*> (o .:? "countries" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "policy")
                     <*> (o .:? "returnReasonCategoryInfo" .!= mempty)
                     <*> (o .:? "label")
                     <*> (o .:? "restockingFee"))

instance ToJSON ReturnPolicyOnline where
        toJSON ReturnPolicyOnline'{..}
          = object
              (catMaybes
                 [("returnPolicyUri" .=) <$> _rpoReturnPolicyURI,
                  ("returnPolicyId" .=) <$> _rpoReturnPolicyId,
                  ("itemConditions" .=) <$> _rpoItemConditions,
                  ("returnMethods" .=) <$> _rpoReturnMethods,
                  ("countries" .=) <$> _rpoCountries,
                  ("name" .=) <$> _rpoName,
                  ("policy" .=) <$> _rpoPolicy,
                  ("returnReasonCategoryInfo" .=) <$>
                    _rpoReturnReasonCategoryInfo,
                  ("label" .=) <$> _rpoLabel,
                  ("restockingFee" .=) <$> _rpoRestockingFee])

--
-- /See:/ 'ordersRefundItemResponse' smart constructor.
data OrdersRefundItemResponse =
  OrdersRefundItemResponse'
    { _orirKind :: !(Maybe Text)
    , _orirExecutionStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersRefundItemResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orirKind'
--
-- * 'orirExecutionStatus'
ordersRefundItemResponse
    :: OrdersRefundItemResponse
ordersRefundItemResponse =
  OrdersRefundItemResponse'
    {_orirKind = Nothing, _orirExecutionStatus = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersRefundItemResponse\".
orirKind :: Lens' OrdersRefundItemResponse (Maybe Text)
orirKind = lens _orirKind (\ s a -> s{_orirKind = a})

-- | The status of the execution. Acceptable values are: - \"\`duplicate\`\"
-- - \"\`executed\`\"
orirExecutionStatus :: Lens' OrdersRefundItemResponse (Maybe Text)
orirExecutionStatus
  = lens _orirExecutionStatus
      (\ s a -> s{_orirExecutionStatus = a})

instance FromJSON OrdersRefundItemResponse where
        parseJSON
          = withObject "OrdersRefundItemResponse"
              (\ o ->
                 OrdersRefundItemResponse' <$>
                   (o .:? "kind") <*> (o .:? "executionStatus"))

instance ToJSON OrdersRefundItemResponse where
        toJSON OrdersRefundItemResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _orirKind,
                  ("executionStatus" .=) <$> _orirExecutionStatus])

--
-- /See:/ 'orderreturnsRejectOperation' smart constructor.
data OrderreturnsRejectOperation =
  OrderreturnsRejectOperation'
    { _ordReason :: !(Maybe Text)
    , _ordReasonText :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderreturnsRejectOperation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ordReason'
--
-- * 'ordReasonText'
orderreturnsRejectOperation
    :: OrderreturnsRejectOperation
orderreturnsRejectOperation =
  OrderreturnsRejectOperation' {_ordReason = Nothing, _ordReasonText = Nothing}


-- | The reason for the return.
ordReason :: Lens' OrderreturnsRejectOperation (Maybe Text)
ordReason
  = lens _ordReason (\ s a -> s{_ordReason = a})

-- | The explanation of the reason.
ordReasonText :: Lens' OrderreturnsRejectOperation (Maybe Text)
ordReasonText
  = lens _ordReasonText
      (\ s a -> s{_ordReasonText = a})

instance FromJSON OrderreturnsRejectOperation where
        parseJSON
          = withObject "OrderreturnsRejectOperation"
              (\ o ->
                 OrderreturnsRejectOperation' <$>
                   (o .:? "reason") <*> (o .:? "reasonText"))

instance ToJSON OrderreturnsRejectOperation where
        toJSON OrderreturnsRejectOperation'{..}
          = object
              (catMaybes
                 [("reason" .=) <$> _ordReason,
                  ("reasonText" .=) <$> _ordReasonText])

--
-- /See:/ 'returnaddressListResponse' smart constructor.
data ReturnaddressListResponse =
  ReturnaddressListResponse'
    { _rlrNextPageToken :: !(Maybe Text)
    , _rlrKind :: !(Maybe Text)
    , _rlrResources :: !(Maybe [ReturnAddress])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReturnaddressListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlrNextPageToken'
--
-- * 'rlrKind'
--
-- * 'rlrResources'
returnaddressListResponse
    :: ReturnaddressListResponse
returnaddressListResponse =
  ReturnaddressListResponse'
    {_rlrNextPageToken = Nothing, _rlrKind = Nothing, _rlrResources = Nothing}


-- | The token for the retrieval of the next page of addresses.
rlrNextPageToken :: Lens' ReturnaddressListResponse (Maybe Text)
rlrNextPageToken
  = lens _rlrNextPageToken
      (\ s a -> s{_rlrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#returnaddressListResponse\".
rlrKind :: Lens' ReturnaddressListResponse (Maybe Text)
rlrKind = lens _rlrKind (\ s a -> s{_rlrKind = a})

rlrResources :: Lens' ReturnaddressListResponse [ReturnAddress]
rlrResources
  = lens _rlrResources (\ s a -> s{_rlrResources = a})
      . _Default
      . _Coerce

instance FromJSON ReturnaddressListResponse where
        parseJSON
          = withObject "ReturnaddressListResponse"
              (\ o ->
                 ReturnaddressListResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "kind") <*>
                     (o .:? "resources" .!= mempty))

instance ToJSON ReturnaddressListResponse where
        toJSON ReturnaddressListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _rlrNextPageToken,
                  ("kind" .=) <$> _rlrKind,
                  ("resources" .=) <$> _rlrResources])

-- | Response message for the ListRepricingRuleReports method.
--
-- /See:/ 'listRepricingRuleReportsResponse' smart constructor.
data ListRepricingRuleReportsResponse =
  ListRepricingRuleReportsResponse'
    { _lrrrrNextPageToken :: !(Maybe Text)
    , _lrrrrRepricingRuleReports :: !(Maybe [RepricingRuleReport])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListRepricingRuleReportsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrrrrNextPageToken'
--
-- * 'lrrrrRepricingRuleReports'
listRepricingRuleReportsResponse
    :: ListRepricingRuleReportsResponse
listRepricingRuleReportsResponse =
  ListRepricingRuleReportsResponse'
    {_lrrrrNextPageToken = Nothing, _lrrrrRepricingRuleReports = Nothing}


-- | A token for retrieving the next page. Its absence means there is no
-- subsequent page.
lrrrrNextPageToken :: Lens' ListRepricingRuleReportsResponse (Maybe Text)
lrrrrNextPageToken
  = lens _lrrrrNextPageToken
      (\ s a -> s{_lrrrrNextPageToken = a})

-- | Daily reports for the given Repricing rule.
lrrrrRepricingRuleReports :: Lens' ListRepricingRuleReportsResponse [RepricingRuleReport]
lrrrrRepricingRuleReports
  = lens _lrrrrRepricingRuleReports
      (\ s a -> s{_lrrrrRepricingRuleReports = a})
      . _Default
      . _Coerce

instance FromJSON ListRepricingRuleReportsResponse
         where
        parseJSON
          = withObject "ListRepricingRuleReportsResponse"
              (\ o ->
                 ListRepricingRuleReportsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "repricingRuleReports" .!= mempty))

instance ToJSON ListRepricingRuleReportsResponse
         where
        toJSON ListRepricingRuleReportsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lrrrrNextPageToken,
                  ("repricingRuleReports" .=) <$>
                    _lrrrrRepricingRuleReports])

--
-- /See:/ 'rateGroup' smart constructor.
data RateGroup =
  RateGroup'
    { _rgCarrierRates :: !(Maybe [CarrierRate])
    , _rgName :: !(Maybe Text)
    , _rgApplicableShippingLabels :: !(Maybe [Text])
    , _rgMainTable :: !(Maybe Table)
    , _rgSingleValue :: !(Maybe Value)
    , _rgSubtables :: !(Maybe [Table])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RateGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgCarrierRates'
--
-- * 'rgName'
--
-- * 'rgApplicableShippingLabels'
--
-- * 'rgMainTable'
--
-- * 'rgSingleValue'
--
-- * 'rgSubtables'
rateGroup
    :: RateGroup
rateGroup =
  RateGroup'
    { _rgCarrierRates = Nothing
    , _rgName = Nothing
    , _rgApplicableShippingLabels = Nothing
    , _rgMainTable = Nothing
    , _rgSingleValue = Nothing
    , _rgSubtables = Nothing
    }


-- | A list of carrier rates that can be referred to by \`mainTable\` or
-- \`singleValue\`.
rgCarrierRates :: Lens' RateGroup [CarrierRate]
rgCarrierRates
  = lens _rgCarrierRates
      (\ s a -> s{_rgCarrierRates = a})
      . _Default
      . _Coerce

-- | Name of the rate group. Optional. If set has to be unique within
-- shipping service.
rgName :: Lens' RateGroup (Maybe Text)
rgName = lens _rgName (\ s a -> s{_rgName = a})

-- | A list of shipping labels defining the products to which this rate group
-- applies to. This is a disjunction: only one of the labels has to match
-- for the rate group to apply. May only be empty for the last rate group
-- of a service. Required.
rgApplicableShippingLabels :: Lens' RateGroup [Text]
rgApplicableShippingLabels
  = lens _rgApplicableShippingLabels
      (\ s a -> s{_rgApplicableShippingLabels = a})
      . _Default
      . _Coerce

-- | A table defining the rate group, when \`singleValue\` is not expressive
-- enough. Can only be set if \`singleValue\` is not set.
rgMainTable :: Lens' RateGroup (Maybe Table)
rgMainTable
  = lens _rgMainTable (\ s a -> s{_rgMainTable = a})

-- | The value of the rate group (e.g. flat rate $10). Can only be set if
-- \`mainTable\` and \`subtables\` are not set.
rgSingleValue :: Lens' RateGroup (Maybe Value)
rgSingleValue
  = lens _rgSingleValue
      (\ s a -> s{_rgSingleValue = a})

-- | A list of subtables referred to by \`mainTable\`. Can only be set if
-- \`mainTable\` is set.
rgSubtables :: Lens' RateGroup [Table]
rgSubtables
  = lens _rgSubtables (\ s a -> s{_rgSubtables = a}) .
      _Default
      . _Coerce

instance FromJSON RateGroup where
        parseJSON
          = withObject "RateGroup"
              (\ o ->
                 RateGroup' <$>
                   (o .:? "carrierRates" .!= mempty) <*> (o .:? "name")
                     <*> (o .:? "applicableShippingLabels" .!= mempty)
                     <*> (o .:? "mainTable")
                     <*> (o .:? "singleValue")
                     <*> (o .:? "subtables" .!= mempty))

instance ToJSON RateGroup where
        toJSON RateGroup'{..}
          = object
              (catMaybes
                 [("carrierRates" .=) <$> _rgCarrierRates,
                  ("name" .=) <$> _rgName,
                  ("applicableShippingLabels" .=) <$>
                    _rgApplicableShippingLabels,
                  ("mainTable" .=) <$> _rgMainTable,
                  ("singleValue" .=) <$> _rgSingleValue,
                  ("subtables" .=) <$> _rgSubtables])

--
-- /See:/ 'orderPromotion' smart constructor.
data OrderPromotion =
  OrderPromotion'
    { _opShortTitle :: !(Maybe Text)
    , _opStartTime :: !(Maybe Text)
    , _opAppliedItems :: !(Maybe [OrderPromotionItem])
    , _opMerchantPromotionId :: !(Maybe Text)
    , _opSubtype :: !(Maybe Text)
    , _opEndTime :: !(Maybe Text)
    , _opTitle :: !(Maybe Text)
    , _opType :: !(Maybe Text)
    , _opApplicableItems :: !(Maybe [OrderPromotionItem])
    , _opPriceValue :: !(Maybe Price)
    , _opTaxValue :: !(Maybe Price)
    , _opFunder :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderPromotion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'opShortTitle'
--
-- * 'opStartTime'
--
-- * 'opAppliedItems'
--
-- * 'opMerchantPromotionId'
--
-- * 'opSubtype'
--
-- * 'opEndTime'
--
-- * 'opTitle'
--
-- * 'opType'
--
-- * 'opApplicableItems'
--
-- * 'opPriceValue'
--
-- * 'opTaxValue'
--
-- * 'opFunder'
orderPromotion
    :: OrderPromotion
orderPromotion =
  OrderPromotion'
    { _opShortTitle = Nothing
    , _opStartTime = Nothing
    , _opAppliedItems = Nothing
    , _opMerchantPromotionId = Nothing
    , _opSubtype = Nothing
    , _opEndTime = Nothing
    , _opTitle = Nothing
    , _opType = Nothing
    , _opApplicableItems = Nothing
    , _opPriceValue = Nothing
    , _opTaxValue = Nothing
    , _opFunder = Nothing
    }


-- | A short title of the promotion to be shown on the checkout page. Do not
-- provide for \`orders.createtestorder\`.
opShortTitle :: Lens' OrderPromotion (Maybe Text)
opShortTitle
  = lens _opShortTitle (\ s a -> s{_opShortTitle = a})

-- | Promotion start time in ISO 8601 format. Date, time, and offset
-- required, e.g., \"2020-01-02T09:00:00+01:00\" or
-- \"2020-01-02T09:00:00Z\".
opStartTime :: Lens' OrderPromotion (Maybe Text)
opStartTime
  = lens _opStartTime (\ s a -> s{_opStartTime = a})

-- | Items that this promotion have been applied to. Do not provide for
-- \`orders.createtestorder\`. This field will be empty for shipping
-- promotions because shipping is not tied to any specific item.
opAppliedItems :: Lens' OrderPromotion [OrderPromotionItem]
opAppliedItems
  = lens _opAppliedItems
      (\ s a -> s{_opAppliedItems = a})
      . _Default
      . _Coerce

-- | Required. This field is used to identify promotions within merchants\'
-- own systems.
opMerchantPromotionId :: Lens' OrderPromotion (Maybe Text)
opMerchantPromotionId
  = lens _opMerchantPromotionId
      (\ s a -> s{_opMerchantPromotionId = a})

-- | Required. The category of the promotion. Only \`moneyOff\` is supported
-- for \`orders.createtestorder\`. Acceptable values are: -
-- \"\`buyMGetMoneyOff\`\" - \"\`buyMGetNMoneyOff\`\" -
-- \"\`buyMGetNPercentOff\`\" - \"\`buyMGetPercentOff\`\" -
-- \"\`freeGift\`\" - \"\`freeGiftWithItemId\`\" -
-- \"\`freeGiftWithValue\`\" - \"\`freeShippingOvernight\`\" -
-- \"\`freeShippingStandard\`\" - \"\`freeShippingTwoDay\`\" -
-- \"\`moneyOff\`\" - \"\`percentOff\`\" - \"\`rewardPoints\`\" -
-- \"\`salePrice\`\"
opSubtype :: Lens' OrderPromotion (Maybe Text)
opSubtype
  = lens _opSubtype (\ s a -> s{_opSubtype = a})

-- | Promotion end time in ISO 8601 format. Date, time, and offset required,
-- e.g., \"2020-01-02T09:00:00+01:00\" or \"2020-01-02T09:00:00Z\".
opEndTime :: Lens' OrderPromotion (Maybe Text)
opEndTime
  = lens _opEndTime (\ s a -> s{_opEndTime = a})

-- | Required. The title of the promotion.
opTitle :: Lens' OrderPromotion (Maybe Text)
opTitle = lens _opTitle (\ s a -> s{_opTitle = a})

-- | Required. The scope of the promotion. Only \`product\` is supported for
-- \`orders.createtestorder\`. Acceptable values are: - \"\`product\`\" -
-- \"\`shipping\`\"
opType :: Lens' OrderPromotion (Maybe Text)
opType = lens _opType (\ s a -> s{_opType = a})

-- | Items that this promotion may be applied to. If empty, there are no
-- restrictions on applicable items and quantity. This field will also be
-- empty for shipping promotions because shipping is not tied to any
-- specific item.
opApplicableItems :: Lens' OrderPromotion [OrderPromotionItem]
opApplicableItems
  = lens _opApplicableItems
      (\ s a -> s{_opApplicableItems = a})
      . _Default
      . _Coerce

-- | Estimated discount applied to price. Amount is pre-tax or post-tax
-- depending on location of order.
opPriceValue :: Lens' OrderPromotion (Maybe Price)
opPriceValue
  = lens _opPriceValue (\ s a -> s{_opPriceValue = a})

-- | Estimated discount applied to tax (if allowed by law). Do not provide
-- for \`orders.createtestorder\`.
opTaxValue :: Lens' OrderPromotion (Maybe Price)
opTaxValue
  = lens _opTaxValue (\ s a -> s{_opTaxValue = a})

-- | Required. The party funding the promotion. Only \`merchant\` is
-- supported for \`orders.createtestorder\`. Acceptable values are: -
-- \"\`google\`\" - \"\`merchant\`\"
opFunder :: Lens' OrderPromotion (Maybe Text)
opFunder = lens _opFunder (\ s a -> s{_opFunder = a})

instance FromJSON OrderPromotion where
        parseJSON
          = withObject "OrderPromotion"
              (\ o ->
                 OrderPromotion' <$>
                   (o .:? "shortTitle") <*> (o .:? "startTime") <*>
                     (o .:? "appliedItems" .!= mempty)
                     <*> (o .:? "merchantPromotionId")
                     <*> (o .:? "subtype")
                     <*> (o .:? "endTime")
                     <*> (o .:? "title")
                     <*> (o .:? "type")
                     <*> (o .:? "applicableItems" .!= mempty)
                     <*> (o .:? "priceValue")
                     <*> (o .:? "taxValue")
                     <*> (o .:? "funder"))

instance ToJSON OrderPromotion where
        toJSON OrderPromotion'{..}
          = object
              (catMaybes
                 [("shortTitle" .=) <$> _opShortTitle,
                  ("startTime" .=) <$> _opStartTime,
                  ("appliedItems" .=) <$> _opAppliedItems,
                  ("merchantPromotionId" .=) <$>
                    _opMerchantPromotionId,
                  ("subtype" .=) <$> _opSubtype,
                  ("endTime" .=) <$> _opEndTime,
                  ("title" .=) <$> _opTitle, ("type" .=) <$> _opType,
                  ("applicableItems" .=) <$> _opApplicableItems,
                  ("priceValue" .=) <$> _opPriceValue,
                  ("taxValue" .=) <$> _opTaxValue,
                  ("funder" .=) <$> _opFunder])

--
-- /See:/ 'orderreturnsProcessRequest' smart constructor.
data OrderreturnsProcessRequest =
  OrderreturnsProcessRequest'
    { _oprReturnItems :: !(Maybe [OrderreturnsReturnItem])
    , _oprRefundShippingFee :: !(Maybe OrderreturnsRefundOperation)
    , _oprFullChargeReturnShippingCost :: !(Maybe Bool)
    , _oprOperationId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderreturnsProcessRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oprReturnItems'
--
-- * 'oprRefundShippingFee'
--
-- * 'oprFullChargeReturnShippingCost'
--
-- * 'oprOperationId'
orderreturnsProcessRequest
    :: OrderreturnsProcessRequest
orderreturnsProcessRequest =
  OrderreturnsProcessRequest'
    { _oprReturnItems = Nothing
    , _oprRefundShippingFee = Nothing
    , _oprFullChargeReturnShippingCost = Nothing
    , _oprOperationId = Nothing
    }


-- | The list of items to return.
oprReturnItems :: Lens' OrderreturnsProcessRequest [OrderreturnsReturnItem]
oprReturnItems
  = lens _oprReturnItems
      (\ s a -> s{_oprReturnItems = a})
      . _Default
      . _Coerce

-- | Refunds for original shipping fee.
oprRefundShippingFee :: Lens' OrderreturnsProcessRequest (Maybe OrderreturnsRefundOperation)
oprRefundShippingFee
  = lens _oprRefundShippingFee
      (\ s a -> s{_oprRefundShippingFee = a})

-- | Option to charge the customer return shipping cost.
oprFullChargeReturnShippingCost :: Lens' OrderreturnsProcessRequest (Maybe Bool)
oprFullChargeReturnShippingCost
  = lens _oprFullChargeReturnShippingCost
      (\ s a -> s{_oprFullChargeReturnShippingCost = a})

-- | [required] The ID of the operation, unique across all operations for a
-- given order return.
oprOperationId :: Lens' OrderreturnsProcessRequest (Maybe Text)
oprOperationId
  = lens _oprOperationId
      (\ s a -> s{_oprOperationId = a})

instance FromJSON OrderreturnsProcessRequest where
        parseJSON
          = withObject "OrderreturnsProcessRequest"
              (\ o ->
                 OrderreturnsProcessRequest' <$>
                   (o .:? "returnItems" .!= mempty) <*>
                     (o .:? "refundShippingFee")
                     <*> (o .:? "fullChargeReturnShippingCost")
                     <*> (o .:? "operationId"))

instance ToJSON OrderreturnsProcessRequest where
        toJSON OrderreturnsProcessRequest'{..}
          = object
              (catMaybes
                 [("returnItems" .=) <$> _oprReturnItems,
                  ("refundShippingFee" .=) <$> _oprRefundShippingFee,
                  ("fullChargeReturnShippingCost" .=) <$>
                    _oprFullChargeReturnShippingCost,
                  ("operationId" .=) <$> _oprOperationId])

--
-- /See:/ 'accountStatusProducts' smart constructor.
data AccountStatusProducts =
  AccountStatusProducts'
    { _aspDestination :: !(Maybe Text)
    , _aspCountry :: !(Maybe Text)
    , _aspChannel :: !(Maybe Text)
    , _aspStatistics :: !(Maybe AccountStatusStatistics)
    , _aspItemLevelIssues :: !(Maybe [AccountStatusItemLevelIssue])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountStatusProducts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aspDestination'
--
-- * 'aspCountry'
--
-- * 'aspChannel'
--
-- * 'aspStatistics'
--
-- * 'aspItemLevelIssues'
accountStatusProducts
    :: AccountStatusProducts
accountStatusProducts =
  AccountStatusProducts'
    { _aspDestination = Nothing
    , _aspCountry = Nothing
    , _aspChannel = Nothing
    , _aspStatistics = Nothing
    , _aspItemLevelIssues = Nothing
    }


-- | The destination the data applies to.
aspDestination :: Lens' AccountStatusProducts (Maybe Text)
aspDestination
  = lens _aspDestination
      (\ s a -> s{_aspDestination = a})

-- | The country the data applies to.
aspCountry :: Lens' AccountStatusProducts (Maybe Text)
aspCountry
  = lens _aspCountry (\ s a -> s{_aspCountry = a})

-- | The channel the data applies to. Acceptable values are: - \"\`local\`\"
-- - \"\`online\`\"
aspChannel :: Lens' AccountStatusProducts (Maybe Text)
aspChannel
  = lens _aspChannel (\ s a -> s{_aspChannel = a})

-- | Aggregated product statistics.
aspStatistics :: Lens' AccountStatusProducts (Maybe AccountStatusStatistics)
aspStatistics
  = lens _aspStatistics
      (\ s a -> s{_aspStatistics = a})

-- | List of item-level issues.
aspItemLevelIssues :: Lens' AccountStatusProducts [AccountStatusItemLevelIssue]
aspItemLevelIssues
  = lens _aspItemLevelIssues
      (\ s a -> s{_aspItemLevelIssues = a})
      . _Default
      . _Coerce

instance FromJSON AccountStatusProducts where
        parseJSON
          = withObject "AccountStatusProducts"
              (\ o ->
                 AccountStatusProducts' <$>
                   (o .:? "destination") <*> (o .:? "country") <*>
                     (o .:? "channel")
                     <*> (o .:? "statistics")
                     <*> (o .:? "itemLevelIssues" .!= mempty))

instance ToJSON AccountStatusProducts where
        toJSON AccountStatusProducts'{..}
          = object
              (catMaybes
                 [("destination" .=) <$> _aspDestination,
                  ("country" .=) <$> _aspCountry,
                  ("channel" .=) <$> _aspChannel,
                  ("statistics" .=) <$> _aspStatistics,
                  ("itemLevelIssues" .=) <$> _aspItemLevelIssues])

-- | A batch entry encoding a single non-batch regional inventory request.
--
-- /See:/ 'regionalinventoryCustomBatchRequestEntry' smart constructor.
data RegionalinventoryCustomBatchRequestEntry =
  RegionalinventoryCustomBatchRequestEntry'
    { _rcbre1MerchantId :: !(Maybe (Textual Word64))
    , _rcbre1RegionalInventory :: !(Maybe RegionalInventory)
    , _rcbre1Method :: !(Maybe Text)
    , _rcbre1ProductId :: !(Maybe Text)
    , _rcbre1BatchId :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionalinventoryCustomBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcbre1MerchantId'
--
-- * 'rcbre1RegionalInventory'
--
-- * 'rcbre1Method'
--
-- * 'rcbre1ProductId'
--
-- * 'rcbre1BatchId'
regionalinventoryCustomBatchRequestEntry
    :: RegionalinventoryCustomBatchRequestEntry
regionalinventoryCustomBatchRequestEntry =
  RegionalinventoryCustomBatchRequestEntry'
    { _rcbre1MerchantId = Nothing
    , _rcbre1RegionalInventory = Nothing
    , _rcbre1Method = Nothing
    , _rcbre1ProductId = Nothing
    , _rcbre1BatchId = Nothing
    }


-- | The ID of the managing account.
rcbre1MerchantId :: Lens' RegionalinventoryCustomBatchRequestEntry (Maybe Word64)
rcbre1MerchantId
  = lens _rcbre1MerchantId
      (\ s a -> s{_rcbre1MerchantId = a})
      . mapping _Coerce

-- | Price and availability of the product.
rcbre1RegionalInventory :: Lens' RegionalinventoryCustomBatchRequestEntry (Maybe RegionalInventory)
rcbre1RegionalInventory
  = lens _rcbre1RegionalInventory
      (\ s a -> s{_rcbre1RegionalInventory = a})

-- | Method of the batch request entry. Acceptable values are: -
-- \"\`insert\`\"
rcbre1Method :: Lens' RegionalinventoryCustomBatchRequestEntry (Maybe Text)
rcbre1Method
  = lens _rcbre1Method (\ s a -> s{_rcbre1Method = a})

-- | The ID of the product for which to update price and availability.
rcbre1ProductId :: Lens' RegionalinventoryCustomBatchRequestEntry (Maybe Text)
rcbre1ProductId
  = lens _rcbre1ProductId
      (\ s a -> s{_rcbre1ProductId = a})

-- | An entry ID, unique within the batch request.
rcbre1BatchId :: Lens' RegionalinventoryCustomBatchRequestEntry (Maybe Word32)
rcbre1BatchId
  = lens _rcbre1BatchId
      (\ s a -> s{_rcbre1BatchId = a})
      . mapping _Coerce

instance FromJSON
           RegionalinventoryCustomBatchRequestEntry
         where
        parseJSON
          = withObject
              "RegionalinventoryCustomBatchRequestEntry"
              (\ o ->
                 RegionalinventoryCustomBatchRequestEntry' <$>
                   (o .:? "merchantId") <*> (o .:? "regionalInventory")
                     <*> (o .:? "method")
                     <*> (o .:? "productId")
                     <*> (o .:? "batchId"))

instance ToJSON
           RegionalinventoryCustomBatchRequestEntry
         where
        toJSON RegionalinventoryCustomBatchRequestEntry'{..}
          = object
              (catMaybes
                 [("merchantId" .=) <$> _rcbre1MerchantId,
                  ("regionalInventory" .=) <$>
                    _rcbre1RegionalInventory,
                  ("method" .=) <$> _rcbre1Method,
                  ("productId" .=) <$> _rcbre1ProductId,
                  ("batchId" .=) <$> _rcbre1BatchId])

--
-- /See:/ 'price' smart constructor.
data Price =
  Price'
    { _pValue :: !(Maybe Text)
    , _pCurrency :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Price' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pValue'
--
-- * 'pCurrency'
price
    :: Price
price = Price' {_pValue = Nothing, _pCurrency = Nothing}


-- | The price represented as a number.
pValue :: Lens' Price (Maybe Text)
pValue = lens _pValue (\ s a -> s{_pValue = a})

-- | The currency of the price.
pCurrency :: Lens' Price (Maybe Text)
pCurrency
  = lens _pCurrency (\ s a -> s{_pCurrency = a})

instance FromJSON Price where
        parseJSON
          = withObject "Price"
              (\ o ->
                 Price' <$> (o .:? "value") <*> (o .:? "currency"))

instance ToJSON Price where
        toJSON Price'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _pValue,
                  ("currency" .=) <$> _pCurrency])

-- | Stats specific to buybox winning rules for product report.
--
-- /See:/ 'repricingProductReportBuyboxWinningProductStats' smart constructor.
newtype RepricingProductReportBuyboxWinningProductStats =
  RepricingProductReportBuyboxWinningProductStats'
    { _rprbwpsBuyboxWinsCount :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RepricingProductReportBuyboxWinningProductStats' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rprbwpsBuyboxWinsCount'
repricingProductReportBuyboxWinningProductStats
    :: RepricingProductReportBuyboxWinningProductStats
repricingProductReportBuyboxWinningProductStats =
  RepricingProductReportBuyboxWinningProductStats'
    {_rprbwpsBuyboxWinsCount = Nothing}


-- | Number of times this product won the buybox with these rules during this
-- time period.
rprbwpsBuyboxWinsCount :: Lens' RepricingProductReportBuyboxWinningProductStats (Maybe Int32)
rprbwpsBuyboxWinsCount
  = lens _rprbwpsBuyboxWinsCount
      (\ s a -> s{_rprbwpsBuyboxWinsCount = a})
      . mapping _Coerce

instance FromJSON
           RepricingProductReportBuyboxWinningProductStats
         where
        parseJSON
          = withObject
              "RepricingProductReportBuyboxWinningProductStats"
              (\ o ->
                 RepricingProductReportBuyboxWinningProductStats' <$>
                   (o .:? "buyboxWinsCount"))

instance ToJSON
           RepricingProductReportBuyboxWinningProductStats
         where
        toJSON
          RepricingProductReportBuyboxWinningProductStats'{..}
          = object
              (catMaybes
                 [("buyboxWinsCount" .=) <$> _rprbwpsBuyboxWinsCount])

--
-- /See:/ 'orderLineItemShippingDetails' smart constructor.
data OrderLineItemShippingDetails =
  OrderLineItemShippingDetails'
    { _olisdShipByDate :: !(Maybe Text)
    , _olisdPickupPromiseInMinutes :: !(Maybe (Textual Word32))
    , _olisdMethod :: !(Maybe OrderLineItemShippingDetailsMethod)
    , _olisdDeliverByDate :: !(Maybe Text)
    , _olisdType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderLineItemShippingDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olisdShipByDate'
--
-- * 'olisdPickupPromiseInMinutes'
--
-- * 'olisdMethod'
--
-- * 'olisdDeliverByDate'
--
-- * 'olisdType'
orderLineItemShippingDetails
    :: OrderLineItemShippingDetails
orderLineItemShippingDetails =
  OrderLineItemShippingDetails'
    { _olisdShipByDate = Nothing
    , _olisdPickupPromiseInMinutes = Nothing
    , _olisdMethod = Nothing
    , _olisdDeliverByDate = Nothing
    , _olisdType = Nothing
    }


-- | Required. The ship by date, in ISO 8601 format.
olisdShipByDate :: Lens' OrderLineItemShippingDetails (Maybe Text)
olisdShipByDate
  = lens _olisdShipByDate
      (\ s a -> s{_olisdShipByDate = a})

-- | The promised time in minutes in which the order will be ready for
-- pickup. This only applies to buy-online-pickup-in-store same-day order.
olisdPickupPromiseInMinutes :: Lens' OrderLineItemShippingDetails (Maybe Word32)
olisdPickupPromiseInMinutes
  = lens _olisdPickupPromiseInMinutes
      (\ s a -> s{_olisdPickupPromiseInMinutes = a})
      . mapping _Coerce

-- | Required. Details of the shipping method.
olisdMethod :: Lens' OrderLineItemShippingDetails (Maybe OrderLineItemShippingDetailsMethod)
olisdMethod
  = lens _olisdMethod (\ s a -> s{_olisdMethod = a})

-- | Required. The delivery by date, in ISO 8601 format.
olisdDeliverByDate :: Lens' OrderLineItemShippingDetails (Maybe Text)
olisdDeliverByDate
  = lens _olisdDeliverByDate
      (\ s a -> s{_olisdDeliverByDate = a})

-- | Type of shipment. Indicates whether \`deliveryDetails\` or
-- \`pickupDetails\` is applicable for this shipment. Acceptable values
-- are: - \"\`delivery\`\" - \"\`pickup\`\"
olisdType :: Lens' OrderLineItemShippingDetails (Maybe Text)
olisdType
  = lens _olisdType (\ s a -> s{_olisdType = a})

instance FromJSON OrderLineItemShippingDetails where
        parseJSON
          = withObject "OrderLineItemShippingDetails"
              (\ o ->
                 OrderLineItemShippingDetails' <$>
                   (o .:? "shipByDate") <*>
                     (o .:? "pickupPromiseInMinutes")
                     <*> (o .:? "method")
                     <*> (o .:? "deliverByDate")
                     <*> (o .:? "type"))

instance ToJSON OrderLineItemShippingDetails where
        toJSON OrderLineItemShippingDetails'{..}
          = object
              (catMaybes
                 [("shipByDate" .=) <$> _olisdShipByDate,
                  ("pickupPromiseInMinutes" .=) <$>
                    _olisdPickupPromiseInMinutes,
                  ("method" .=) <$> _olisdMethod,
                  ("deliverByDate" .=) <$> _olisdDeliverByDate,
                  ("type" .=) <$> _olisdType])

-- | The message for FeaturedProduct.
-- [FeaturedProduct](https:\/\/support.google.com\/merchants\/answer\/9703736)
--
-- /See:/ 'collectionFeaturedProduct' smart constructor.
data CollectionFeaturedProduct =
  CollectionFeaturedProduct'
    { _cfpOfferId :: !(Maybe Text)
    , _cfpX :: !(Maybe (Textual Double))
    , _cfpY :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CollectionFeaturedProduct' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfpOfferId'
--
-- * 'cfpX'
--
-- * 'cfpY'
collectionFeaturedProduct
    :: CollectionFeaturedProduct
collectionFeaturedProduct =
  CollectionFeaturedProduct'
    {_cfpOfferId = Nothing, _cfpX = Nothing, _cfpY = Nothing}


-- | The unique identifier for the product item.
cfpOfferId :: Lens' CollectionFeaturedProduct (Maybe Text)
cfpOfferId
  = lens _cfpOfferId (\ s a -> s{_cfpOfferId = a})

-- | Required. X-coordinate of the product callout on the Shoppable Image.
cfpX :: Lens' CollectionFeaturedProduct (Maybe Double)
cfpX
  = lens _cfpX (\ s a -> s{_cfpX = a}) .
      mapping _Coerce

-- | Required. Y-coordinate of the product callout on the Shoppable Image.
cfpY :: Lens' CollectionFeaturedProduct (Maybe Double)
cfpY
  = lens _cfpY (\ s a -> s{_cfpY = a}) .
      mapping _Coerce

instance FromJSON CollectionFeaturedProduct where
        parseJSON
          = withObject "CollectionFeaturedProduct"
              (\ o ->
                 CollectionFeaturedProduct' <$>
                   (o .:? "offerId") <*> (o .:? "x") <*> (o .:? "y"))

instance ToJSON CollectionFeaturedProduct where
        toJSON CollectionFeaturedProduct'{..}
          = object
              (catMaybes
                 [("offerId" .=) <$> _cfpOfferId, ("x" .=) <$> _cfpX,
                  ("y" .=) <$> _cfpY])

--
-- /See:/ 'pickupCarrierService' smart constructor.
data PickupCarrierService =
  PickupCarrierService'
    { _pcsServiceName :: !(Maybe Text)
    , _pcsCarrierName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PickupCarrierService' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcsServiceName'
--
-- * 'pcsCarrierName'
pickupCarrierService
    :: PickupCarrierService
pickupCarrierService =
  PickupCarrierService' {_pcsServiceName = Nothing, _pcsCarrierName = Nothing}


-- | The name of the pickup service (e.g., \`\"Access point\"\`). Required.
pcsServiceName :: Lens' PickupCarrierService (Maybe Text)
pcsServiceName
  = lens _pcsServiceName
      (\ s a -> s{_pcsServiceName = a})

-- | The name of the pickup carrier (e.g., \`\"UPS\"\`). Required.
pcsCarrierName :: Lens' PickupCarrierService (Maybe Text)
pcsCarrierName
  = lens _pcsCarrierName
      (\ s a -> s{_pcsCarrierName = a})

instance FromJSON PickupCarrierService where
        parseJSON
          = withObject "PickupCarrierService"
              (\ o ->
                 PickupCarrierService' <$>
                   (o .:? "serviceName") <*> (o .:? "carrierName"))

instance ToJSON PickupCarrierService where
        toJSON PickupCarrierService'{..}
          = object
              (catMaybes
                 [("serviceName" .=) <$> _pcsServiceName,
                  ("carrierName" .=) <$> _pcsCarrierName])

--
-- /See:/ 'datafeedsCustomBatchResponse' smart constructor.
data DatafeedsCustomBatchResponse =
  DatafeedsCustomBatchResponse'
    { _datEntries :: !(Maybe [DatafeedsCustomBatchResponseEntry])
    , _datKind :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatafeedsCustomBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'datEntries'
--
-- * 'datKind'
datafeedsCustomBatchResponse
    :: DatafeedsCustomBatchResponse
datafeedsCustomBatchResponse =
  DatafeedsCustomBatchResponse' {_datEntries = Nothing, _datKind = Nothing}


-- | The result of the execution of the batch requests.
datEntries :: Lens' DatafeedsCustomBatchResponse [DatafeedsCustomBatchResponseEntry]
datEntries
  = lens _datEntries (\ s a -> s{_datEntries = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#datafeedsCustomBatchResponse\".
datKind :: Lens' DatafeedsCustomBatchResponse (Maybe Text)
datKind = lens _datKind (\ s a -> s{_datKind = a})

instance FromJSON DatafeedsCustomBatchResponse where
        parseJSON
          = withObject "DatafeedsCustomBatchResponse"
              (\ o ->
                 DatafeedsCustomBatchResponse' <$>
                   (o .:? "entries" .!= mempty) <*> (o .:? "kind"))

instance ToJSON DatafeedsCustomBatchResponse where
        toJSON DatafeedsCustomBatchResponse'{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _datEntries,
                  ("kind" .=) <$> _datKind])

--
-- /See:/ 'invoiceSummary' smart constructor.
data InvoiceSummary =
  InvoiceSummary'
    { _isProductTotal :: !(Maybe Amount)
    , _isAdditionalChargeSummaries :: !(Maybe [InvoiceSummaryAdditionalChargeSummary])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InvoiceSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isProductTotal'
--
-- * 'isAdditionalChargeSummaries'
invoiceSummary
    :: InvoiceSummary
invoiceSummary =
  InvoiceSummary'
    {_isProductTotal = Nothing, _isAdditionalChargeSummaries = Nothing}


-- | [required] Total price for the product.
isProductTotal :: Lens' InvoiceSummary (Maybe Amount)
isProductTotal
  = lens _isProductTotal
      (\ s a -> s{_isProductTotal = a})

-- | Summary of the total amounts of the additional charges.
isAdditionalChargeSummaries :: Lens' InvoiceSummary [InvoiceSummaryAdditionalChargeSummary]
isAdditionalChargeSummaries
  = lens _isAdditionalChargeSummaries
      (\ s a -> s{_isAdditionalChargeSummaries = a})
      . _Default
      . _Coerce

instance FromJSON InvoiceSummary where
        parseJSON
          = withObject "InvoiceSummary"
              (\ o ->
                 InvoiceSummary' <$>
                   (o .:? "productTotal") <*>
                     (o .:? "additionalChargeSummaries" .!= mempty))

instance ToJSON InvoiceSummary where
        toJSON InvoiceSummary'{..}
          = object
              (catMaybes
                 [("productTotal" .=) <$> _isProductTotal,
                  ("additionalChargeSummaries" .=) <$>
                    _isAdditionalChargeSummaries])

-- | Batch entry encoding a single local inventory update request.
--
-- /See:/ 'localinventoryCustomBatchRequestEntry' smart constructor.
data LocalinventoryCustomBatchRequestEntry =
  LocalinventoryCustomBatchRequestEntry'
    { _lLocalInventory :: !(Maybe LocalInventory)
    , _lMerchantId :: !(Maybe (Textual Word64))
    , _lMethod :: !(Maybe Text)
    , _lProductId :: !(Maybe Text)
    , _lBatchId :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocalinventoryCustomBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lLocalInventory'
--
-- * 'lMerchantId'
--
-- * 'lMethod'
--
-- * 'lProductId'
--
-- * 'lBatchId'
localinventoryCustomBatchRequestEntry
    :: LocalinventoryCustomBatchRequestEntry
localinventoryCustomBatchRequestEntry =
  LocalinventoryCustomBatchRequestEntry'
    { _lLocalInventory = Nothing
    , _lMerchantId = Nothing
    , _lMethod = Nothing
    , _lProductId = Nothing
    , _lBatchId = Nothing
    }


-- | Local inventory of the product.
lLocalInventory :: Lens' LocalinventoryCustomBatchRequestEntry (Maybe LocalInventory)
lLocalInventory
  = lens _lLocalInventory
      (\ s a -> s{_lLocalInventory = a})

-- | The ID of the managing account.
lMerchantId :: Lens' LocalinventoryCustomBatchRequestEntry (Maybe Word64)
lMerchantId
  = lens _lMerchantId (\ s a -> s{_lMerchantId = a}) .
      mapping _Coerce

-- | Method of the batch request entry. Acceptable values are: -
-- \"\`insert\`\"
lMethod :: Lens' LocalinventoryCustomBatchRequestEntry (Maybe Text)
lMethod = lens _lMethod (\ s a -> s{_lMethod = a})

-- | The ID of the product for which to update local inventory.
lProductId :: Lens' LocalinventoryCustomBatchRequestEntry (Maybe Text)
lProductId
  = lens _lProductId (\ s a -> s{_lProductId = a})

-- | An entry ID, unique within the batch request.
lBatchId :: Lens' LocalinventoryCustomBatchRequestEntry (Maybe Word32)
lBatchId
  = lens _lBatchId (\ s a -> s{_lBatchId = a}) .
      mapping _Coerce

instance FromJSON
           LocalinventoryCustomBatchRequestEntry
         where
        parseJSON
          = withObject "LocalinventoryCustomBatchRequestEntry"
              (\ o ->
                 LocalinventoryCustomBatchRequestEntry' <$>
                   (o .:? "localInventory") <*> (o .:? "merchantId") <*>
                     (o .:? "method")
                     <*> (o .:? "productId")
                     <*> (o .:? "batchId"))

instance ToJSON LocalinventoryCustomBatchRequestEntry
         where
        toJSON LocalinventoryCustomBatchRequestEntry'{..}
          = object
              (catMaybes
                 [("localInventory" .=) <$> _lLocalInventory,
                  ("merchantId" .=) <$> _lMerchantId,
                  ("method" .=) <$> _lMethod,
                  ("productId" .=) <$> _lProductId,
                  ("batchId" .=) <$> _lBatchId])

-- | Definition of a boundary.
--
-- /See:/ 'repricingRuleRestrictionBoundary' smart constructor.
data RepricingRuleRestrictionBoundary =
  RepricingRuleRestrictionBoundary'
    { _rrrbPriceDelta :: !(Maybe Text)
    , _rrrbPercentageDelta :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RepricingRuleRestrictionBoundary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrrbPriceDelta'
--
-- * 'rrrbPercentageDelta'
repricingRuleRestrictionBoundary
    :: RepricingRuleRestrictionBoundary
repricingRuleRestrictionBoundary =
  RepricingRuleRestrictionBoundary'
    {_rrrbPriceDelta = Nothing, _rrrbPercentageDelta = Nothing}


-- | The price micros relative to the offer selling price. This field is
-- signed. It must be negative in floor. For example, if an offer is
-- selling at $10 and this field is -$2 in floor, the repricing rule only
-- applies if the calculated new price is >= $8.
rrrbPriceDelta :: Lens' RepricingRuleRestrictionBoundary (Maybe Text)
rrrbPriceDelta
  = lens _rrrbPriceDelta
      (\ s a -> s{_rrrbPriceDelta = a})

-- | The percentage delta relative to the offer selling price. This field is
-- signed. It must be negative in floor. When it is used in floor, it
-- should be > -100. For example, if an offer is selling at $10 and this
-- field is -30 in floor, the repricing rule only applies if the calculated
-- new price is >= $7.
rrrbPercentageDelta :: Lens' RepricingRuleRestrictionBoundary (Maybe Int32)
rrrbPercentageDelta
  = lens _rrrbPercentageDelta
      (\ s a -> s{_rrrbPercentageDelta = a})
      . mapping _Coerce

instance FromJSON RepricingRuleRestrictionBoundary
         where
        parseJSON
          = withObject "RepricingRuleRestrictionBoundary"
              (\ o ->
                 RepricingRuleRestrictionBoundary' <$>
                   (o .:? "priceDelta") <*> (o .:? "percentageDelta"))

instance ToJSON RepricingRuleRestrictionBoundary
         where
        toJSON RepricingRuleRestrictionBoundary'{..}
          = object
              (catMaybes
                 [("priceDelta" .=) <$> _rrrbPriceDelta,
                  ("percentageDelta" .=) <$> _rrrbPercentageDelta])

--
-- /See:/ 'posListResponse' smart constructor.
data PosListResponse =
  PosListResponse'
    { _plrlKind :: !(Maybe Text)
    , _plrlResources :: !(Maybe [PosStore])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PosListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrlKind'
--
-- * 'plrlResources'
posListResponse
    :: PosListResponse
posListResponse =
  PosListResponse' {_plrlKind = Nothing, _plrlResources = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#posListResponse\".
plrlKind :: Lens' PosListResponse (Maybe Text)
plrlKind = lens _plrlKind (\ s a -> s{_plrlKind = a})

plrlResources :: Lens' PosListResponse [PosStore]
plrlResources
  = lens _plrlResources
      (\ s a -> s{_plrlResources = a})
      . _Default
      . _Coerce

instance FromJSON PosListResponse where
        parseJSON
          = withObject "PosListResponse"
              (\ o ->
                 PosListResponse' <$>
                   (o .:? "kind") <*> (o .:? "resources" .!= mempty))

instance ToJSON PosListResponse where
        toJSON PosListResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _plrlKind,
                  ("resources" .=) <$> _plrlResources])

-- | Response message for the \`ListAccountLabels\` method.
--
-- /See:/ 'listAccountLabelsResponse' smart constructor.
data ListAccountLabelsResponse =
  ListAccountLabelsResponse'
    { _lalrNextPageToken :: !(Maybe Text)
    , _lalrAccountLabels :: !(Maybe [AccountLabel])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListAccountLabelsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lalrNextPageToken'
--
-- * 'lalrAccountLabels'
listAccountLabelsResponse
    :: ListAccountLabelsResponse
listAccountLabelsResponse =
  ListAccountLabelsResponse'
    {_lalrNextPageToken = Nothing, _lalrAccountLabels = Nothing}


-- | A token, which can be sent as \`page_token\` to retrieve the next page.
-- If this field is omitted, there are no subsequent pages.
lalrNextPageToken :: Lens' ListAccountLabelsResponse (Maybe Text)
lalrNextPageToken
  = lens _lalrNextPageToken
      (\ s a -> s{_lalrNextPageToken = a})

-- | The labels from the specified account.
lalrAccountLabels :: Lens' ListAccountLabelsResponse [AccountLabel]
lalrAccountLabels
  = lens _lalrAccountLabels
      (\ s a -> s{_lalrAccountLabels = a})
      . _Default
      . _Coerce

instance FromJSON ListAccountLabelsResponse where
        parseJSON
          = withObject "ListAccountLabelsResponse"
              (\ o ->
                 ListAccountLabelsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "accountLabels" .!= mempty))

instance ToJSON ListAccountLabelsResponse where
        toJSON ListAccountLabelsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lalrNextPageToken,
                  ("accountLabels" .=) <$> _lalrAccountLabels])

--
-- /See:/ 'orderDeliveryDetails' smart constructor.
data OrderDeliveryDetails =
  OrderDeliveryDetails'
    { _oddAddress :: !(Maybe OrderAddress)
    , _oddPhoneNumber :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderDeliveryDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oddAddress'
--
-- * 'oddPhoneNumber'
orderDeliveryDetails
    :: OrderDeliveryDetails
orderDeliveryDetails =
  OrderDeliveryDetails' {_oddAddress = Nothing, _oddPhoneNumber = Nothing}


-- | The delivery address
oddAddress :: Lens' OrderDeliveryDetails (Maybe OrderAddress)
oddAddress
  = lens _oddAddress (\ s a -> s{_oddAddress = a})

-- | The phone number of the person receiving the delivery.
oddPhoneNumber :: Lens' OrderDeliveryDetails (Maybe Text)
oddPhoneNumber
  = lens _oddPhoneNumber
      (\ s a -> s{_oddPhoneNumber = a})

instance FromJSON OrderDeliveryDetails where
        parseJSON
          = withObject "OrderDeliveryDetails"
              (\ o ->
                 OrderDeliveryDetails' <$>
                   (o .:? "address") <*> (o .:? "phoneNumber"))

instance ToJSON OrderDeliveryDetails where
        toJSON OrderDeliveryDetails'{..}
          = object
              (catMaybes
                 [("address" .=) <$> _oddAddress,
                  ("phoneNumber" .=) <$> _oddPhoneNumber])

--
-- /See:/ 'orderLineItemProductFee' smart constructor.
data OrderLineItemProductFee =
  OrderLineItemProductFee'
    { _olipfAmount :: !(Maybe Price)
    , _olipfName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderLineItemProductFee' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olipfAmount'
--
-- * 'olipfName'
orderLineItemProductFee
    :: OrderLineItemProductFee
orderLineItemProductFee =
  OrderLineItemProductFee' {_olipfAmount = Nothing, _olipfName = Nothing}


-- | Amount of the fee.
olipfAmount :: Lens' OrderLineItemProductFee (Maybe Price)
olipfAmount
  = lens _olipfAmount (\ s a -> s{_olipfAmount = a})

-- | Name of the fee.
olipfName :: Lens' OrderLineItemProductFee (Maybe Text)
olipfName
  = lens _olipfName (\ s a -> s{_olipfName = a})

instance FromJSON OrderLineItemProductFee where
        parseJSON
          = withObject "OrderLineItemProductFee"
              (\ o ->
                 OrderLineItemProductFee' <$>
                   (o .:? "amount") <*> (o .:? "name"))

instance ToJSON OrderLineItemProductFee where
        toJSON OrderLineItemProductFee'{..}
          = object
              (catMaybes
                 [("amount" .=) <$> _olipfAmount,
                  ("name" .=) <$> _olipfName])

--
-- /See:/ 'businessDayConfig' smart constructor.
newtype BusinessDayConfig =
  BusinessDayConfig'
    { _bdcBusinessDays :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BusinessDayConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdcBusinessDays'
businessDayConfig
    :: BusinessDayConfig
businessDayConfig = BusinessDayConfig' {_bdcBusinessDays = Nothing}


-- | Regular business days. May not be empty.
bdcBusinessDays :: Lens' BusinessDayConfig [Text]
bdcBusinessDays
  = lens _bdcBusinessDays
      (\ s a -> s{_bdcBusinessDays = a})
      . _Default
      . _Coerce

instance FromJSON BusinessDayConfig where
        parseJSON
          = withObject "BusinessDayConfig"
              (\ o ->
                 BusinessDayConfig' <$>
                   (o .:? "businessDays" .!= mempty))

instance ToJSON BusinessDayConfig where
        toJSON BusinessDayConfig'{..}
          = object
              (catMaybes
                 [("businessDays" .=) <$> _bdcBusinessDays])

--
-- /See:/ 'settlementTransactionAmountCommission' smart constructor.
data SettlementTransactionAmountCommission =
  SettlementTransactionAmountCommission'
    { _stacCategory :: !(Maybe Text)
    , _stacRate :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SettlementTransactionAmountCommission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stacCategory'
--
-- * 'stacRate'
settlementTransactionAmountCommission
    :: SettlementTransactionAmountCommission
settlementTransactionAmountCommission =
  SettlementTransactionAmountCommission'
    {_stacCategory = Nothing, _stacRate = Nothing}


-- | The category of the commission. Acceptable values are: -
-- \"\`animalsAndPetSupplies\`\" - \"\`dogCatFoodAndCatLitter\`\" -
-- \"\`apparelAndAccessories\`\" - \"\`shoesHandbagsAndSunglasses\`\" -
-- \"\`costumesAndAccessories\`\" - \"\`jewelry\`\" - \"\`watches\`\" -
-- \"\`hobbiesArtsAndCrafts\`\" - \"\`homeAndGarden\`\" -
-- \"\`entertainmentCollectibles\`\" - \"\`collectibleCoins\`\" -
-- \"\`sportsCollectibles\`\" - \"\`sportingGoods\`\" -
-- \"\`toysAndGames\`\" - \"\`musicalInstruments\`\" - \"\`giftCards\`\" -
-- \"\`babyAndToddler\`\" - \"\`babyFoodWipesAndDiapers\`\" -
-- \"\`businessAndIndustrial\`\" - \"\`camerasOpticsAndPhotography\`\" -
-- \"\`consumerElectronics\`\" - \"\`electronicsAccessories\`\" -
-- \"\`personalComputers\`\" - \"\`videoGameConsoles\`\" -
-- \"\`foodAndGrocery\`\" - \"\`beverages\`\" - \"\`tobaccoProducts\`\" -
-- \"\`furniture\`\" - \"\`hardware\`\" - \"\`buildingMaterials\`\" -
-- \"\`tools\`\" - \"\`healthAndPersonalCare\`\" - \"\`beauty\`\" -
-- \"\`householdSupplies\`\" - \"\`kitchenAndDining\`\" -
-- \"\`majorAppliances\`\" - \"\`luggageAndBags\`\" - \"\`media\`\" -
-- \"\`officeSupplies\`\" - \"\`softwareAndVideoGames\`\" -
-- \"\`vehiclePartsAndAccessories\`\" - \"\`vehicleTiresAndWheels\`\" -
-- \"\`vehicles\`\" - \"\`everythingElse\`\"
stacCategory :: Lens' SettlementTransactionAmountCommission (Maybe Text)
stacCategory
  = lens _stacCategory (\ s a -> s{_stacCategory = a})

-- | Rate of the commission in percentage.
stacRate :: Lens' SettlementTransactionAmountCommission (Maybe Text)
stacRate = lens _stacRate (\ s a -> s{_stacRate = a})

instance FromJSON
           SettlementTransactionAmountCommission
         where
        parseJSON
          = withObject "SettlementTransactionAmountCommission"
              (\ o ->
                 SettlementTransactionAmountCommission' <$>
                   (o .:? "category") <*> (o .:? "rate"))

instance ToJSON SettlementTransactionAmountCommission
         where
        toJSON SettlementTransactionAmountCommission'{..}
          = object
              (catMaybes
                 [("category" .=) <$> _stacCategory,
                  ("rate" .=) <$> _stacRate])

-- | Map of inapplicability details.
--
-- /See:/ 'inApplicabilityDetails' smart constructor.
data InApplicabilityDetails =
  InApplicabilityDetails'
    { _iadInApplicableReason :: !(Maybe InApplicabilityDetailsInApplicableReason)
    , _iadInApplicableCount :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InApplicabilityDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iadInApplicableReason'
--
-- * 'iadInApplicableCount'
inApplicabilityDetails
    :: InApplicabilityDetails
inApplicabilityDetails =
  InApplicabilityDetails'
    {_iadInApplicableReason = Nothing, _iadInApplicableCount = Nothing}


-- | Reason code this rule was not applicable.
iadInApplicableReason :: Lens' InApplicabilityDetails (Maybe InApplicabilityDetailsInApplicableReason)
iadInApplicableReason
  = lens _iadInApplicableReason
      (\ s a -> s{_iadInApplicableReason = a})

-- | Count of this inapplicable reason code.
iadInApplicableCount :: Lens' InApplicabilityDetails (Maybe Int64)
iadInApplicableCount
  = lens _iadInApplicableCount
      (\ s a -> s{_iadInApplicableCount = a})
      . mapping _Coerce

instance FromJSON InApplicabilityDetails where
        parseJSON
          = withObject "InApplicabilityDetails"
              (\ o ->
                 InApplicabilityDetails' <$>
                   (o .:? "inapplicableReason") <*>
                     (o .:? "inapplicableCount"))

instance ToJSON InApplicabilityDetails where
        toJSON InApplicabilityDetails'{..}
          = object
              (catMaybes
                 [("inapplicableReason" .=) <$>
                    _iadInApplicableReason,
                  ("inapplicableCount" .=) <$> _iadInApplicableCount])

-- | The IDs of labels that should be assigned to the CSS domain.
--
-- /See:/ 'labelIds' smart constructor.
newtype LabelIds =
  LabelIds'
    { _liLabelIds :: Maybe [Textual Int64]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LabelIds' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liLabelIds'
labelIds
    :: LabelIds
labelIds = LabelIds' {_liLabelIds = Nothing}


-- | The list of label IDs.
liLabelIds :: Lens' LabelIds [Int64]
liLabelIds
  = lens _liLabelIds (\ s a -> s{_liLabelIds = a}) .
      _Default
      . _Coerce

instance FromJSON LabelIds where
        parseJSON
          = withObject "LabelIds"
              (\ o -> LabelIds' <$> (o .:? "labelIds" .!= mempty))

instance ToJSON LabelIds where
        toJSON LabelIds'{..}
          = object
              (catMaybes [("labelIds" .=) <$> _liLabelIds])

--
-- /See:/ 'ordersCancelResponse' smart constructor.
data OrdersCancelResponse =
  OrdersCancelResponse'
    { _ocrKind :: !(Maybe Text)
    , _ocrExecutionStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersCancelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocrKind'
--
-- * 'ocrExecutionStatus'
ordersCancelResponse
    :: OrdersCancelResponse
ordersCancelResponse =
  OrdersCancelResponse' {_ocrKind = Nothing, _ocrExecutionStatus = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersCancelResponse\".
ocrKind :: Lens' OrdersCancelResponse (Maybe Text)
ocrKind = lens _ocrKind (\ s a -> s{_ocrKind = a})

-- | The status of the execution. Acceptable values are: - \"\`duplicate\`\"
-- - \"\`executed\`\"
ocrExecutionStatus :: Lens' OrdersCancelResponse (Maybe Text)
ocrExecutionStatus
  = lens _ocrExecutionStatus
      (\ s a -> s{_ocrExecutionStatus = a})

instance FromJSON OrdersCancelResponse where
        parseJSON
          = withObject "OrdersCancelResponse"
              (\ o ->
                 OrdersCancelResponse' <$>
                   (o .:? "kind") <*> (o .:? "executionStatus"))

instance ToJSON OrdersCancelResponse where
        toJSON OrdersCancelResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _ocrKind,
                  ("executionStatus" .=) <$> _ocrExecutionStatus])

--
-- /See:/ 'ordersSetLineItemMetadataRequest' smart constructor.
data OrdersSetLineItemMetadataRequest =
  OrdersSetLineItemMetadataRequest'
    { _oslimrAnnotations :: !(Maybe [OrderMerchantProvidedAnnotation])
    , _oslimrLineItemId :: !(Maybe Text)
    , _oslimrOperationId :: !(Maybe Text)
    , _oslimrProductId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersSetLineItemMetadataRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oslimrAnnotations'
--
-- * 'oslimrLineItemId'
--
-- * 'oslimrOperationId'
--
-- * 'oslimrProductId'
ordersSetLineItemMetadataRequest
    :: OrdersSetLineItemMetadataRequest
ordersSetLineItemMetadataRequest =
  OrdersSetLineItemMetadataRequest'
    { _oslimrAnnotations = Nothing
    , _oslimrLineItemId = Nothing
    , _oslimrOperationId = Nothing
    , _oslimrProductId = Nothing
    }


oslimrAnnotations :: Lens' OrdersSetLineItemMetadataRequest [OrderMerchantProvidedAnnotation]
oslimrAnnotations
  = lens _oslimrAnnotations
      (\ s a -> s{_oslimrAnnotations = a})
      . _Default
      . _Coerce

-- | The ID of the line item to set metadata. Either lineItemId or productId
-- is required.
oslimrLineItemId :: Lens' OrdersSetLineItemMetadataRequest (Maybe Text)
oslimrLineItemId
  = lens _oslimrLineItemId
      (\ s a -> s{_oslimrLineItemId = a})

-- | The ID of the operation. Unique across all operations for a given order.
oslimrOperationId :: Lens' OrdersSetLineItemMetadataRequest (Maybe Text)
oslimrOperationId
  = lens _oslimrOperationId
      (\ s a -> s{_oslimrOperationId = a})

-- | The ID of the product to set metadata. This is the REST ID used in the
-- products service. Either lineItemId or productId is required.
oslimrProductId :: Lens' OrdersSetLineItemMetadataRequest (Maybe Text)
oslimrProductId
  = lens _oslimrProductId
      (\ s a -> s{_oslimrProductId = a})

instance FromJSON OrdersSetLineItemMetadataRequest
         where
        parseJSON
          = withObject "OrdersSetLineItemMetadataRequest"
              (\ o ->
                 OrdersSetLineItemMetadataRequest' <$>
                   (o .:? "annotations" .!= mempty) <*>
                     (o .:? "lineItemId")
                     <*> (o .:? "operationId")
                     <*> (o .:? "productId"))

instance ToJSON OrdersSetLineItemMetadataRequest
         where
        toJSON OrdersSetLineItemMetadataRequest'{..}
          = object
              (catMaybes
                 [("annotations" .=) <$> _oslimrAnnotations,
                  ("lineItemId" .=) <$> _oslimrLineItemId,
                  ("operationId" .=) <$> _oslimrOperationId,
                  ("productId" .=) <$> _oslimrProductId])

-- | Dimensions according to which metrics are segmented in the response.
-- Values of product dimensions, e.g., offer id, reflect the state of a
-- product at the time of the corresponding event, e.g., impression or
-- order. Segment fields cannot be selected in queries without also
-- selecting at least one metric field. Values are only set for dimensions
-- requested explicitly in the request\'s search query.
--
-- /See:/ 'segments' smart constructor.
data Segments =
  Segments'
    { _sDate :: !(Maybe Date)
    , _sProgram :: !(Maybe SegmentsProgram)
    , _sOfferId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Segments' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sDate'
--
-- * 'sProgram'
--
-- * 'sOfferId'
segments
    :: Segments
segments =
  Segments' {_sDate = Nothing, _sProgram = Nothing, _sOfferId = Nothing}


-- | Date in the merchant timezone to which metrics apply.
sDate :: Lens' Segments (Maybe Date)
sDate = lens _sDate (\ s a -> s{_sDate = a})

-- | Program to which metrics apply, e.g., Free Product Listing.
sProgram :: Lens' Segments (Maybe SegmentsProgram)
sProgram = lens _sProgram (\ s a -> s{_sProgram = a})

-- | Merchant-provided id of the product.
sOfferId :: Lens' Segments (Maybe Text)
sOfferId = lens _sOfferId (\ s a -> s{_sOfferId = a})

instance FromJSON Segments where
        parseJSON
          = withObject "Segments"
              (\ o ->
                 Segments' <$>
                   (o .:? "date") <*> (o .:? "program") <*>
                     (o .:? "offerId"))

instance ToJSON Segments where
        toJSON Segments'{..}
          = object
              (catMaybes
                 [("date" .=) <$> _sDate,
                  ("program" .=) <$> _sProgram,
                  ("offerId" .=) <$> _sOfferId])

-- | Response message for the ListRepricingProductReports method.
--
-- /See:/ 'listRepricingProductReportsResponse' smart constructor.
data ListRepricingProductReportsResponse =
  ListRepricingProductReportsResponse'
    { _lrprrNextPageToken :: !(Maybe Text)
    , _lrprrRepricingProductReports :: !(Maybe [RepricingProductReport])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListRepricingProductReportsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrprrNextPageToken'
--
-- * 'lrprrRepricingProductReports'
listRepricingProductReportsResponse
    :: ListRepricingProductReportsResponse
listRepricingProductReportsResponse =
  ListRepricingProductReportsResponse'
    {_lrprrNextPageToken = Nothing, _lrprrRepricingProductReports = Nothing}


-- | A token for retrieving the next page. Its absence means there is no
-- subsequent page.
lrprrNextPageToken :: Lens' ListRepricingProductReportsResponse (Maybe Text)
lrprrNextPageToken
  = lens _lrprrNextPageToken
      (\ s a -> s{_lrprrNextPageToken = a})

-- | Periodic reports for the given Repricing product.
lrprrRepricingProductReports :: Lens' ListRepricingProductReportsResponse [RepricingProductReport]
lrprrRepricingProductReports
  = lens _lrprrRepricingProductReports
      (\ s a -> s{_lrprrRepricingProductReports = a})
      . _Default
      . _Coerce

instance FromJSON ListRepricingProductReportsResponse
         where
        parseJSON
          = withObject "ListRepricingProductReportsResponse"
              (\ o ->
                 ListRepricingProductReportsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "repricingProductReports" .!= mempty))

instance ToJSON ListRepricingProductReportsResponse
         where
        toJSON ListRepricingProductReportsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lrprrNextPageToken,
                  ("repricingProductReports" .=) <$>
                    _lrprrRepricingProductReports])

-- | Issue associated with the collection.
--
-- /See:/ 'collectionStatusItemLevelIssue' smart constructor.
data CollectionStatusItemLevelIssue =
  CollectionStatusItemLevelIssue'
    { _csiliDestination :: !(Maybe Text)
    , _csiliResolution :: !(Maybe Text)
    , _csiliDocumentation :: !(Maybe Text)
    , _csiliCode :: !(Maybe Text)
    , _csiliServability :: !(Maybe Text)
    , _csiliAttributeName :: !(Maybe Text)
    , _csiliDescription :: !(Maybe Text)
    , _csiliDetail :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CollectionStatusItemLevelIssue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csiliDestination'
--
-- * 'csiliResolution'
--
-- * 'csiliDocumentation'
--
-- * 'csiliCode'
--
-- * 'csiliServability'
--
-- * 'csiliAttributeName'
--
-- * 'csiliDescription'
--
-- * 'csiliDetail'
collectionStatusItemLevelIssue
    :: CollectionStatusItemLevelIssue
collectionStatusItemLevelIssue =
  CollectionStatusItemLevelIssue'
    { _csiliDestination = Nothing
    , _csiliResolution = Nothing
    , _csiliDocumentation = Nothing
    , _csiliCode = Nothing
    , _csiliServability = Nothing
    , _csiliAttributeName = Nothing
    , _csiliDescription = Nothing
    , _csiliDetail = Nothing
    }


-- | The destination the issue applies to.
csiliDestination :: Lens' CollectionStatusItemLevelIssue (Maybe Text)
csiliDestination
  = lens _csiliDestination
      (\ s a -> s{_csiliDestination = a})

-- | Whether the issue can be resolved by the merchant.
csiliResolution :: Lens' CollectionStatusItemLevelIssue (Maybe Text)
csiliResolution
  = lens _csiliResolution
      (\ s a -> s{_csiliResolution = a})

-- | The URL of a web page to help with resolving this issue.
csiliDocumentation :: Lens' CollectionStatusItemLevelIssue (Maybe Text)
csiliDocumentation
  = lens _csiliDocumentation
      (\ s a -> s{_csiliDocumentation = a})

-- | The error code of the issue.
csiliCode :: Lens' CollectionStatusItemLevelIssue (Maybe Text)
csiliCode
  = lens _csiliCode (\ s a -> s{_csiliCode = a})

-- | How this issue affects the serving of the collection.
csiliServability :: Lens' CollectionStatusItemLevelIssue (Maybe Text)
csiliServability
  = lens _csiliServability
      (\ s a -> s{_csiliServability = a})

-- | The attribute\'s name, if the issue is caused by a single attribute.
csiliAttributeName :: Lens' CollectionStatusItemLevelIssue (Maybe Text)
csiliAttributeName
  = lens _csiliAttributeName
      (\ s a -> s{_csiliAttributeName = a})

-- | A short issue description in English.
csiliDescription :: Lens' CollectionStatusItemLevelIssue (Maybe Text)
csiliDescription
  = lens _csiliDescription
      (\ s a -> s{_csiliDescription = a})

-- | A detailed issue description in English.
csiliDetail :: Lens' CollectionStatusItemLevelIssue (Maybe Text)
csiliDetail
  = lens _csiliDetail (\ s a -> s{_csiliDetail = a})

instance FromJSON CollectionStatusItemLevelIssue
         where
        parseJSON
          = withObject "CollectionStatusItemLevelIssue"
              (\ o ->
                 CollectionStatusItemLevelIssue' <$>
                   (o .:? "destination") <*> (o .:? "resolution") <*>
                     (o .:? "documentation")
                     <*> (o .:? "code")
                     <*> (o .:? "servability")
                     <*> (o .:? "attributeName")
                     <*> (o .:? "description")
                     <*> (o .:? "detail"))

instance ToJSON CollectionStatusItemLevelIssue where
        toJSON CollectionStatusItemLevelIssue'{..}
          = object
              (catMaybes
                 [("destination" .=) <$> _csiliDestination,
                  ("resolution" .=) <$> _csiliResolution,
                  ("documentation" .=) <$> _csiliDocumentation,
                  ("code" .=) <$> _csiliCode,
                  ("servability" .=) <$> _csiliServability,
                  ("attributeName" .=) <$> _csiliAttributeName,
                  ("description" .=) <$> _csiliDescription,
                  ("detail" .=) <$> _csiliDetail])

--
-- /See:/ 'accountsListLinksResponse' smart constructor.
data AccountsListLinksResponse =
  AccountsListLinksResponse'
    { _allrNextPageToken :: !(Maybe Text)
    , _allrKind :: !(Maybe Text)
    , _allrLinks :: !(Maybe [LinkedAccount])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsListLinksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'allrNextPageToken'
--
-- * 'allrKind'
--
-- * 'allrLinks'
accountsListLinksResponse
    :: AccountsListLinksResponse
accountsListLinksResponse =
  AccountsListLinksResponse'
    {_allrNextPageToken = Nothing, _allrKind = Nothing, _allrLinks = Nothing}


-- | The token for the retrieval of the next page of links.
allrNextPageToken :: Lens' AccountsListLinksResponse (Maybe Text)
allrNextPageToken
  = lens _allrNextPageToken
      (\ s a -> s{_allrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#accountsListLinksResponse\".
allrKind :: Lens' AccountsListLinksResponse (Maybe Text)
allrKind = lens _allrKind (\ s a -> s{_allrKind = a})

-- | The list of available links.
allrLinks :: Lens' AccountsListLinksResponse [LinkedAccount]
allrLinks
  = lens _allrLinks (\ s a -> s{_allrLinks = a}) .
      _Default
      . _Coerce

instance FromJSON AccountsListLinksResponse where
        parseJSON
          = withObject "AccountsListLinksResponse"
              (\ o ->
                 AccountsListLinksResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "kind") <*>
                     (o .:? "links" .!= mempty))

instance ToJSON AccountsListLinksResponse where
        toJSON AccountsListLinksResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _allrNextPageToken,
                  ("kind" .=) <$> _allrKind,
                  ("links" .=) <$> _allrLinks])

--
-- /See:/ 'ordersRejectReturnLineItemResponse' smart constructor.
data OrdersRejectReturnLineItemResponse =
  OrdersRejectReturnLineItemResponse'
    { _ordKind :: !(Maybe Text)
    , _ordExecutionStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersRejectReturnLineItemResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ordKind'
--
-- * 'ordExecutionStatus'
ordersRejectReturnLineItemResponse
    :: OrdersRejectReturnLineItemResponse
ordersRejectReturnLineItemResponse =
  OrdersRejectReturnLineItemResponse'
    {_ordKind = Nothing, _ordExecutionStatus = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersRejectReturnLineItemResponse\".
ordKind :: Lens' OrdersRejectReturnLineItemResponse (Maybe Text)
ordKind = lens _ordKind (\ s a -> s{_ordKind = a})

-- | The status of the execution. Acceptable values are: - \"\`duplicate\`\"
-- - \"\`executed\`\"
ordExecutionStatus :: Lens' OrdersRejectReturnLineItemResponse (Maybe Text)
ordExecutionStatus
  = lens _ordExecutionStatus
      (\ s a -> s{_ordExecutionStatus = a})

instance FromJSON OrdersRejectReturnLineItemResponse
         where
        parseJSON
          = withObject "OrdersRejectReturnLineItemResponse"
              (\ o ->
                 OrdersRejectReturnLineItemResponse' <$>
                   (o .:? "kind") <*> (o .:? "executionStatus"))

instance ToJSON OrdersRejectReturnLineItemResponse
         where
        toJSON OrdersRejectReturnLineItemResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _ordKind,
                  ("executionStatus" .=) <$> _ordExecutionStatus])

--
-- /See:/ 'testOrder' smart constructor.
data TestOrder =
  TestOrder'
    { _toPredefinedEmail :: !(Maybe Text)
    , _toKind :: !(Maybe Text)
    , _toPredefinedPickupDetails :: !(Maybe Text)
    , _toLineItems :: !(Maybe [TestOrderLineItem])
    , _toDeliveryDetails :: !(Maybe TestOrderDeliveryDetails)
    , _toShippingOption :: !(Maybe Text)
    , _toPredefinedDeliveryAddress :: !(Maybe Text)
    , _toEnableOrderinvoices :: !(Maybe Bool)
    , _toPromotions :: !(Maybe [OrderPromotion])
    , _toPredefinedBillingAddress :: !(Maybe Text)
    , _toNotificationMode :: !(Maybe Text)
    , _toPickupDetails :: !(Maybe TestOrderPickupDetails)
    , _toShippingCost :: !(Maybe Price)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestOrder' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'toPredefinedEmail'
--
-- * 'toKind'
--
-- * 'toPredefinedPickupDetails'
--
-- * 'toLineItems'
--
-- * 'toDeliveryDetails'
--
-- * 'toShippingOption'
--
-- * 'toPredefinedDeliveryAddress'
--
-- * 'toEnableOrderinvoices'
--
-- * 'toPromotions'
--
-- * 'toPredefinedBillingAddress'
--
-- * 'toNotificationMode'
--
-- * 'toPickupDetails'
--
-- * 'toShippingCost'
testOrder
    :: TestOrder
testOrder =
  TestOrder'
    { _toPredefinedEmail = Nothing
    , _toKind = Nothing
    , _toPredefinedPickupDetails = Nothing
    , _toLineItems = Nothing
    , _toDeliveryDetails = Nothing
    , _toShippingOption = Nothing
    , _toPredefinedDeliveryAddress = Nothing
    , _toEnableOrderinvoices = Nothing
    , _toPromotions = Nothing
    , _toPredefinedBillingAddress = Nothing
    , _toNotificationMode = Nothing
    , _toPickupDetails = Nothing
    , _toShippingCost = Nothing
    }


-- | Required. Email address of the customer. Acceptable values are: -
-- \"\`pog.dwight.schrute\'gmail.com\`\" -
-- \"\`pog.jim.halpert\'gmail.com\`\" -
-- \"\`penpog.pam.beesly\'gmail.comding\`\"
toPredefinedEmail :: Lens' TestOrder (Maybe Text)
toPredefinedEmail
  = lens _toPredefinedEmail
      (\ s a -> s{_toPredefinedEmail = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"\`content#testOrder\`\"
toKind :: Lens' TestOrder (Maybe Text)
toKind = lens _toKind (\ s a -> s{_toKind = a})

-- | Identifier of one of the predefined pickup details. Required for orders
-- containing line items with shipping type \`pickup\`. Acceptable values
-- are: - \"\`dwight\`\" - \"\`jim\`\" - \"\`pam\`\"
toPredefinedPickupDetails :: Lens' TestOrder (Maybe Text)
toPredefinedPickupDetails
  = lens _toPredefinedPickupDetails
      (\ s a -> s{_toPredefinedPickupDetails = a})

-- | Required. Line items that are ordered. At least one line item must be
-- provided.
toLineItems :: Lens' TestOrder [TestOrderLineItem]
toLineItems
  = lens _toLineItems (\ s a -> s{_toLineItems = a}) .
      _Default
      . _Coerce

-- | Overrides the predefined delivery details if provided.
toDeliveryDetails :: Lens' TestOrder (Maybe TestOrderDeliveryDetails)
toDeliveryDetails
  = lens _toDeliveryDetails
      (\ s a -> s{_toDeliveryDetails = a})

-- | Required. The requested shipping option. Acceptable values are: -
-- \"\`economy\`\" - \"\`expedited\`\" - \"\`oneDay\`\" - \"\`sameDay\`\" -
-- \"\`standard\`\" - \"\`twoDay\`\"
toShippingOption :: Lens' TestOrder (Maybe Text)
toShippingOption
  = lens _toShippingOption
      (\ s a -> s{_toShippingOption = a})

-- | Required. Identifier of one of the predefined delivery addresses for the
-- delivery. Acceptable values are: - \"\`dwight\`\" - \"\`jim\`\" -
-- \"\`pam\`\"
toPredefinedDeliveryAddress :: Lens' TestOrder (Maybe Text)
toPredefinedDeliveryAddress
  = lens _toPredefinedDeliveryAddress
      (\ s a -> s{_toPredefinedDeliveryAddress = a})

-- | Whether the orderinvoices service should support this order.
toEnableOrderinvoices :: Lens' TestOrder (Maybe Bool)
toEnableOrderinvoices
  = lens _toEnableOrderinvoices
      (\ s a -> s{_toEnableOrderinvoices = a})

-- | Promotions associated with the order.
toPromotions :: Lens' TestOrder [OrderPromotion]
toPromotions
  = lens _toPromotions (\ s a -> s{_toPromotions = a})
      . _Default
      . _Coerce

-- | Required. The billing address. Acceptable values are: - \"\`dwight\`\" -
-- \"\`jim\`\" - \"\`pam\`\"
toPredefinedBillingAddress :: Lens' TestOrder (Maybe Text)
toPredefinedBillingAddress
  = lens _toPredefinedBillingAddress
      (\ s a -> s{_toPredefinedBillingAddress = a})

-- | Restricted. Do not use.
toNotificationMode :: Lens' TestOrder (Maybe Text)
toNotificationMode
  = lens _toNotificationMode
      (\ s a -> s{_toNotificationMode = a})

-- | Overrides the predefined pickup details if provided.
toPickupDetails :: Lens' TestOrder (Maybe TestOrderPickupDetails)
toPickupDetails
  = lens _toPickupDetails
      (\ s a -> s{_toPickupDetails = a})

-- | Required. The price of shipping for all items. Shipping tax is
-- automatically calculated for orders where marketplace facilitator tax
-- laws are applicable. Otherwise, tax settings from Merchant Center are
-- applied. Note that shipping is not taxed in certain states.
toShippingCost :: Lens' TestOrder (Maybe Price)
toShippingCost
  = lens _toShippingCost
      (\ s a -> s{_toShippingCost = a})

instance FromJSON TestOrder where
        parseJSON
          = withObject "TestOrder"
              (\ o ->
                 TestOrder' <$>
                   (o .:? "predefinedEmail") <*> (o .:? "kind") <*>
                     (o .:? "predefinedPickupDetails")
                     <*> (o .:? "lineItems" .!= mempty)
                     <*> (o .:? "deliveryDetails")
                     <*> (o .:? "shippingOption")
                     <*> (o .:? "predefinedDeliveryAddress")
                     <*> (o .:? "enableOrderinvoices")
                     <*> (o .:? "promotions" .!= mempty)
                     <*> (o .:? "predefinedBillingAddress")
                     <*> (o .:? "notificationMode")
                     <*> (o .:? "pickupDetails")
                     <*> (o .:? "shippingCost"))

instance ToJSON TestOrder where
        toJSON TestOrder'{..}
          = object
              (catMaybes
                 [("predefinedEmail" .=) <$> _toPredefinedEmail,
                  ("kind" .=) <$> _toKind,
                  ("predefinedPickupDetails" .=) <$>
                    _toPredefinedPickupDetails,
                  ("lineItems" .=) <$> _toLineItems,
                  ("deliveryDetails" .=) <$> _toDeliveryDetails,
                  ("shippingOption" .=) <$> _toShippingOption,
                  ("predefinedDeliveryAddress" .=) <$>
                    _toPredefinedDeliveryAddress,
                  ("enableOrderinvoices" .=) <$>
                    _toEnableOrderinvoices,
                  ("promotions" .=) <$> _toPromotions,
                  ("predefinedBillingAddress" .=) <$>
                    _toPredefinedBillingAddress,
                  ("notificationMode" .=) <$> _toNotificationMode,
                  ("pickupDetails" .=) <$> _toPickupDetails,
                  ("shippingCost" .=) <$> _toShippingCost])

--
-- /See:/ 'cutoffTime' smart constructor.
data CutoffTime =
  CutoffTime'
    { _ctHour :: !(Maybe (Textual Word32))
    , _ctTimezone :: !(Maybe Text)
    , _ctMinute :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CutoffTime' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctHour'
--
-- * 'ctTimezone'
--
-- * 'ctMinute'
cutoffTime
    :: CutoffTime
cutoffTime =
  CutoffTime' {_ctHour = Nothing, _ctTimezone = Nothing, _ctMinute = Nothing}


-- | Hour of the cutoff time until which an order has to be placed to be
-- processed in the same day. Required.
ctHour :: Lens' CutoffTime (Maybe Word32)
ctHour
  = lens _ctHour (\ s a -> s{_ctHour = a}) .
      mapping _Coerce

-- | Timezone identifier for the cutoff time. A list of identifiers can be
-- found in the AdWords API documentation. E.g. \"Europe\/Zurich\".
-- Required.
ctTimezone :: Lens' CutoffTime (Maybe Text)
ctTimezone
  = lens _ctTimezone (\ s a -> s{_ctTimezone = a})

-- | Minute of the cutoff time until which an order has to be placed to be
-- processed in the same day. Required.
ctMinute :: Lens' CutoffTime (Maybe Word32)
ctMinute
  = lens _ctMinute (\ s a -> s{_ctMinute = a}) .
      mapping _Coerce

instance FromJSON CutoffTime where
        parseJSON
          = withObject "CutoffTime"
              (\ o ->
                 CutoffTime' <$>
                   (o .:? "hour") <*> (o .:? "timezone") <*>
                     (o .:? "minute"))

instance ToJSON CutoffTime where
        toJSON CutoffTime'{..}
          = object
              (catMaybes
                 [("hour" .=) <$> _ctHour,
                  ("timezone" .=) <$> _ctTimezone,
                  ("minute" .=) <$> _ctMinute])

-- | A batch entry encoding a single non-batch datafeedstatuses response.
--
-- /See:/ 'datafeedstatusesCustomBatchResponseEntry' smart constructor.
data DatafeedstatusesCustomBatchResponseEntry =
  DatafeedstatusesCustomBatchResponseEntry'
    { _datErrors :: !(Maybe Errors)
    , _datDatafeedStatus :: !(Maybe DatafeedStatus)
    , _datBatchId :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatafeedstatusesCustomBatchResponseEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'datErrors'
--
-- * 'datDatafeedStatus'
--
-- * 'datBatchId'
datafeedstatusesCustomBatchResponseEntry
    :: DatafeedstatusesCustomBatchResponseEntry
datafeedstatusesCustomBatchResponseEntry =
  DatafeedstatusesCustomBatchResponseEntry'
    {_datErrors = Nothing, _datDatafeedStatus = Nothing, _datBatchId = Nothing}


-- | A list of errors defined if and only if the request failed.
datErrors :: Lens' DatafeedstatusesCustomBatchResponseEntry (Maybe Errors)
datErrors
  = lens _datErrors (\ s a -> s{_datErrors = a})

-- | The requested data feed status. Defined if and only if the request was
-- successful.
datDatafeedStatus :: Lens' DatafeedstatusesCustomBatchResponseEntry (Maybe DatafeedStatus)
datDatafeedStatus
  = lens _datDatafeedStatus
      (\ s a -> s{_datDatafeedStatus = a})

-- | The ID of the request entry this entry responds to.
datBatchId :: Lens' DatafeedstatusesCustomBatchResponseEntry (Maybe Word32)
datBatchId
  = lens _datBatchId (\ s a -> s{_datBatchId = a}) .
      mapping _Coerce

instance FromJSON
           DatafeedstatusesCustomBatchResponseEntry
         where
        parseJSON
          = withObject
              "DatafeedstatusesCustomBatchResponseEntry"
              (\ o ->
                 DatafeedstatusesCustomBatchResponseEntry' <$>
                   (o .:? "errors") <*> (o .:? "datafeedStatus") <*>
                     (o .:? "batchId"))

instance ToJSON
           DatafeedstatusesCustomBatchResponseEntry
         where
        toJSON DatafeedstatusesCustomBatchResponseEntry'{..}
          = object
              (catMaybes
                 [("errors" .=) <$> _datErrors,
                  ("datafeedStatus" .=) <$> _datDatafeedStatus,
                  ("batchId" .=) <$> _datBatchId])

--
-- /See:/ 'orderRefund' smart constructor.
data OrderRefund =
  OrderRefund'
    { _orrAmount :: !(Maybe Price)
    , _orrActor :: !(Maybe Text)
    , _orrReason :: !(Maybe Text)
    , _orrCreationDate :: !(Maybe Text)
    , _orrReasonText :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderRefund' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orrAmount'
--
-- * 'orrActor'
--
-- * 'orrReason'
--
-- * 'orrCreationDate'
--
-- * 'orrReasonText'
orderRefund
    :: OrderRefund
orderRefund =
  OrderRefund'
    { _orrAmount = Nothing
    , _orrActor = Nothing
    , _orrReason = Nothing
    , _orrCreationDate = Nothing
    , _orrReasonText = Nothing
    }


-- | The amount that is refunded.
orrAmount :: Lens' OrderRefund (Maybe Price)
orrAmount
  = lens _orrAmount (\ s a -> s{_orrAmount = a})

-- | The actor that created the refund. Acceptable values are: -
-- \"\`customer\`\" - \"\`googleBot\`\" - \"\`googleCustomerService\`\" -
-- \"\`googlePayments\`\" - \"\`googleSabre\`\" - \"\`merchant\`\"
orrActor :: Lens' OrderRefund (Maybe Text)
orrActor = lens _orrActor (\ s a -> s{_orrActor = a})

-- | The reason for the refund. Acceptable values are: - \"\`adjustment\`\" -
-- \"\`autoPostInternal\`\" - \"\`autoPostInvalidBillingAddress\`\" -
-- \"\`autoPostNoInventory\`\" - \"\`autoPostPriceError\`\" -
-- \"\`autoPostUndeliverableShippingAddress\`\" - \"\`couponAbuse\`\" -
-- \"\`courtesyAdjustment\`\" - \"\`customerCanceled\`\" -
-- \"\`customerDiscretionaryReturn\`\" -
-- \"\`customerInitiatedMerchantCancel\`\" -
-- \"\`customerSupportRequested\`\" - \"\`deliveredLateByCarrier\`\" -
-- \"\`deliveredTooLate\`\" - \"\`expiredItem\`\" -
-- \"\`failToPushOrderGoogleError\`\" -
-- \"\`failToPushOrderMerchantError\`\" -
-- \"\`failToPushOrderMerchantFulfillmentError\`\" -
-- \"\`failToPushOrderToMerchant\`\" -
-- \"\`failToPushOrderToMerchantOutOfStock\`\" - \"\`feeAdjustment\`\" -
-- \"\`invalidCoupon\`\" - \"\`lateShipmentCredit\`\" -
-- \"\`malformedShippingAddress\`\" - \"\`merchantDidNotShipOnTime\`\" -
-- \"\`noInventory\`\" - \"\`orderTimeout\`\" - \"\`other\`\" -
-- \"\`paymentAbuse\`\" - \"\`paymentDeclined\`\" - \"\`priceAdjustment\`\"
-- - \"\`priceError\`\" - \"\`productArrivedDamaged\`\" -
-- \"\`productNotAsDescribed\`\" - \"\`promoReallocation\`\" -
-- \"\`qualityNotAsExpected\`\" - \"\`returnRefundAbuse\`\" -
-- \"\`shippingCostAdjustment\`\" - \"\`shippingPriceError\`\" -
-- \"\`taxAdjustment\`\" - \"\`taxError\`\" -
-- \"\`undeliverableShippingAddress\`\" - \"\`unsupportedPoBoxAddress\`\" -
-- \"\`wrongProductShipped\`\"
orrReason :: Lens' OrderRefund (Maybe Text)
orrReason
  = lens _orrReason (\ s a -> s{_orrReason = a})

-- | Date on which the item has been created, in ISO 8601 format.
orrCreationDate :: Lens' OrderRefund (Maybe Text)
orrCreationDate
  = lens _orrCreationDate
      (\ s a -> s{_orrCreationDate = a})

-- | The explanation of the reason.
orrReasonText :: Lens' OrderRefund (Maybe Text)
orrReasonText
  = lens _orrReasonText
      (\ s a -> s{_orrReasonText = a})

instance FromJSON OrderRefund where
        parseJSON
          = withObject "OrderRefund"
              (\ o ->
                 OrderRefund' <$>
                   (o .:? "amount") <*> (o .:? "actor") <*>
                     (o .:? "reason")
                     <*> (o .:? "creationDate")
                     <*> (o .:? "reasonText"))

instance ToJSON OrderRefund where
        toJSON OrderRefund'{..}
          = object
              (catMaybes
                 [("amount" .=) <$> _orrAmount,
                  ("actor" .=) <$> _orrActor,
                  ("reason" .=) <$> _orrReason,
                  ("creationDate" .=) <$> _orrCreationDate,
                  ("reasonText" .=) <$> _orrReasonText])

--
-- /See:/ 'testOrderLineItemProduct' smart constructor.
data TestOrderLineItemProduct =
  TestOrderLineItemProduct'
    { _tolipImageLink :: !(Maybe Text)
    , _tolipFees :: !(Maybe [OrderLineItemProductFee])
    , _tolipBrand :: !(Maybe Text)
    , _tolipTargetCountry :: !(Maybe Text)
    , _tolipGtin :: !(Maybe Text)
    , _tolipItemGroupId :: !(Maybe Text)
    , _tolipOfferId :: !(Maybe Text)
    , _tolipPrice :: !(Maybe Price)
    , _tolipVariantAttributes :: !(Maybe [OrderLineItemProductVariantAttribute])
    , _tolipTitle :: !(Maybe Text)
    , _tolipContentLanguage :: !(Maybe Text)
    , _tolipMpn :: !(Maybe Text)
    , _tolipCondition :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestOrderLineItemProduct' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tolipImageLink'
--
-- * 'tolipFees'
--
-- * 'tolipBrand'
--
-- * 'tolipTargetCountry'
--
-- * 'tolipGtin'
--
-- * 'tolipItemGroupId'
--
-- * 'tolipOfferId'
--
-- * 'tolipPrice'
--
-- * 'tolipVariantAttributes'
--
-- * 'tolipTitle'
--
-- * 'tolipContentLanguage'
--
-- * 'tolipMpn'
--
-- * 'tolipCondition'
testOrderLineItemProduct
    :: TestOrderLineItemProduct
testOrderLineItemProduct =
  TestOrderLineItemProduct'
    { _tolipImageLink = Nothing
    , _tolipFees = Nothing
    , _tolipBrand = Nothing
    , _tolipTargetCountry = Nothing
    , _tolipGtin = Nothing
    , _tolipItemGroupId = Nothing
    , _tolipOfferId = Nothing
    , _tolipPrice = Nothing
    , _tolipVariantAttributes = Nothing
    , _tolipTitle = Nothing
    , _tolipContentLanguage = Nothing
    , _tolipMpn = Nothing
    , _tolipCondition = Nothing
    }


-- | Required. URL of an image of the item.
tolipImageLink :: Lens' TestOrderLineItemProduct (Maybe Text)
tolipImageLink
  = lens _tolipImageLink
      (\ s a -> s{_tolipImageLink = a})

-- | Fees for the item. Optional.
tolipFees :: Lens' TestOrderLineItemProduct [OrderLineItemProductFee]
tolipFees
  = lens _tolipFees (\ s a -> s{_tolipFees = a}) .
      _Default
      . _Coerce

-- | Required. Brand of the item.
tolipBrand :: Lens' TestOrderLineItemProduct (Maybe Text)
tolipBrand
  = lens _tolipBrand (\ s a -> s{_tolipBrand = a})

-- | Required. The CLDR territory \/\/ code of the target country of the
-- product.
tolipTargetCountry :: Lens' TestOrderLineItemProduct (Maybe Text)
tolipTargetCountry
  = lens _tolipTargetCountry
      (\ s a -> s{_tolipTargetCountry = a})

-- | Global Trade Item Number (GTIN) of the item. Optional.
tolipGtin :: Lens' TestOrderLineItemProduct (Maybe Text)
tolipGtin
  = lens _tolipGtin (\ s a -> s{_tolipGtin = a})

-- | Shared identifier for all variants of the same product. Optional.
tolipItemGroupId :: Lens' TestOrderLineItemProduct (Maybe Text)
tolipItemGroupId
  = lens _tolipItemGroupId
      (\ s a -> s{_tolipItemGroupId = a})

-- | Required. An identifier of the item.
tolipOfferId :: Lens' TestOrderLineItemProduct (Maybe Text)
tolipOfferId
  = lens _tolipOfferId (\ s a -> s{_tolipOfferId = a})

-- | Required. The price for the product. Tax is automatically calculated for
-- orders where marketplace facilitator tax laws are applicable. Otherwise,
-- tax settings from Merchant Center are applied.
tolipPrice :: Lens' TestOrderLineItemProduct (Maybe Price)
tolipPrice
  = lens _tolipPrice (\ s a -> s{_tolipPrice = a})

-- | Variant attributes for the item. Optional.
tolipVariantAttributes :: Lens' TestOrderLineItemProduct [OrderLineItemProductVariantAttribute]
tolipVariantAttributes
  = lens _tolipVariantAttributes
      (\ s a -> s{_tolipVariantAttributes = a})
      . _Default
      . _Coerce

-- | Required. The title of the product.
tolipTitle :: Lens' TestOrderLineItemProduct (Maybe Text)
tolipTitle
  = lens _tolipTitle (\ s a -> s{_tolipTitle = a})

-- | Required. The two-letter ISO 639-1 language code for the item.
-- Acceptable values are: - \"\`en\`\" - \"\`fr\`\"
tolipContentLanguage :: Lens' TestOrderLineItemProduct (Maybe Text)
tolipContentLanguage
  = lens _tolipContentLanguage
      (\ s a -> s{_tolipContentLanguage = a})

-- | Manufacturer Part Number (MPN) of the item. Optional.
tolipMpn :: Lens' TestOrderLineItemProduct (Maybe Text)
tolipMpn = lens _tolipMpn (\ s a -> s{_tolipMpn = a})

-- | Required. Condition or state of the item. Acceptable values are: -
-- \"\`new\`\"
tolipCondition :: Lens' TestOrderLineItemProduct (Maybe Text)
tolipCondition
  = lens _tolipCondition
      (\ s a -> s{_tolipCondition = a})

instance FromJSON TestOrderLineItemProduct where
        parseJSON
          = withObject "TestOrderLineItemProduct"
              (\ o ->
                 TestOrderLineItemProduct' <$>
                   (o .:? "imageLink") <*> (o .:? "fees" .!= mempty) <*>
                     (o .:? "brand")
                     <*> (o .:? "targetCountry")
                     <*> (o .:? "gtin")
                     <*> (o .:? "itemGroupId")
                     <*> (o .:? "offerId")
                     <*> (o .:? "price")
                     <*> (o .:? "variantAttributes" .!= mempty)
                     <*> (o .:? "title")
                     <*> (o .:? "contentLanguage")
                     <*> (o .:? "mpn")
                     <*> (o .:? "condition"))

instance ToJSON TestOrderLineItemProduct where
        toJSON TestOrderLineItemProduct'{..}
          = object
              (catMaybes
                 [("imageLink" .=) <$> _tolipImageLink,
                  ("fees" .=) <$> _tolipFees,
                  ("brand" .=) <$> _tolipBrand,
                  ("targetCountry" .=) <$> _tolipTargetCountry,
                  ("gtin" .=) <$> _tolipGtin,
                  ("itemGroupId" .=) <$> _tolipItemGroupId,
                  ("offerId" .=) <$> _tolipOfferId,
                  ("price" .=) <$> _tolipPrice,
                  ("variantAttributes" .=) <$> _tolipVariantAttributes,
                  ("title" .=) <$> _tolipTitle,
                  ("contentLanguage" .=) <$> _tolipContentLanguage,
                  ("mpn" .=) <$> _tolipMpn,
                  ("condition" .=) <$> _tolipCondition])

-- | Represents a geographic region that you can use as a target with both
-- the \`RegionalInventory\` and \`ShippingSettings\` services. You can
-- define regions as collections of either postal codes or, in some
-- countries, using predefined geotargets.
--
-- /See:/ 'region' smart constructor.
data Region =
  Region'
    { _r1MerchantId :: !(Maybe (Textual Int64))
    , _r1PostalCodeArea :: !(Maybe RegionPostalCodeArea)
    , _r1RegionalInventoryEligible :: !(Maybe Bool)
    , _r1RegionId :: !(Maybe Text)
    , _r1GeotargetArea :: !(Maybe RegionGeoTargetArea)
    , _r1ShippingEligible :: !(Maybe Bool)
    , _r1DisplayName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Region' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'r1MerchantId'
--
-- * 'r1PostalCodeArea'
--
-- * 'r1RegionalInventoryEligible'
--
-- * 'r1RegionId'
--
-- * 'r1GeotargetArea'
--
-- * 'r1ShippingEligible'
--
-- * 'r1DisplayName'
region
    :: Region
region =
  Region'
    { _r1MerchantId = Nothing
    , _r1PostalCodeArea = Nothing
    , _r1RegionalInventoryEligible = Nothing
    , _r1RegionId = Nothing
    , _r1GeotargetArea = Nothing
    , _r1ShippingEligible = Nothing
    , _r1DisplayName = Nothing
    }


-- | Output only. Immutable. Merchant that owns the region.
r1MerchantId :: Lens' Region (Maybe Int64)
r1MerchantId
  = lens _r1MerchantId (\ s a -> s{_r1MerchantId = a})
      . mapping _Coerce

-- | A list of postal codes that defines the region area.
r1PostalCodeArea :: Lens' Region (Maybe RegionPostalCodeArea)
r1PostalCodeArea
  = lens _r1PostalCodeArea
      (\ s a -> s{_r1PostalCodeArea = a})

-- | Output only. Indicates if the region is eligible to use in the Regional
-- Inventory configuration.
r1RegionalInventoryEligible :: Lens' Region (Maybe Bool)
r1RegionalInventoryEligible
  = lens _r1RegionalInventoryEligible
      (\ s a -> s{_r1RegionalInventoryEligible = a})

-- | Output only. Immutable. The ID uniquely identifying each region.
r1RegionId :: Lens' Region (Maybe Text)
r1RegionId
  = lens _r1RegionId (\ s a -> s{_r1RegionId = a})

-- | A list of geotargets that defines the region area.
r1GeotargetArea :: Lens' Region (Maybe RegionGeoTargetArea)
r1GeotargetArea
  = lens _r1GeotargetArea
      (\ s a -> s{_r1GeotargetArea = a})

-- | Output only. Indicates if the region is eligible to use in the Shipping
-- Services configuration.
r1ShippingEligible :: Lens' Region (Maybe Bool)
r1ShippingEligible
  = lens _r1ShippingEligible
      (\ s a -> s{_r1ShippingEligible = a})

-- | The display name of the region.
r1DisplayName :: Lens' Region (Maybe Text)
r1DisplayName
  = lens _r1DisplayName
      (\ s a -> s{_r1DisplayName = a})

instance FromJSON Region where
        parseJSON
          = withObject "Region"
              (\ o ->
                 Region' <$>
                   (o .:? "merchantId") <*> (o .:? "postalCodeArea") <*>
                     (o .:? "regionalInventoryEligible")
                     <*> (o .:? "regionId")
                     <*> (o .:? "geotargetArea")
                     <*> (o .:? "shippingEligible")
                     <*> (o .:? "displayName"))

instance ToJSON Region where
        toJSON Region'{..}
          = object
              (catMaybes
                 [("merchantId" .=) <$> _r1MerchantId,
                  ("postalCodeArea" .=) <$> _r1PostalCodeArea,
                  ("regionalInventoryEligible" .=) <$>
                    _r1RegionalInventoryEligible,
                  ("regionId" .=) <$> _r1RegionId,
                  ("geotargetArea" .=) <$> _r1GeotargetArea,
                  ("shippingEligible" .=) <$> _r1ShippingEligible,
                  ("displayName" .=) <$> _r1DisplayName])

--
-- /See:/ 'accounttaxCustomBatchResponse' smart constructor.
data AccounttaxCustomBatchResponse =
  AccounttaxCustomBatchResponse'
    { _acbr1Entries :: !(Maybe [AccounttaxCustomBatchResponseEntry])
    , _acbr1Kind :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccounttaxCustomBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acbr1Entries'
--
-- * 'acbr1Kind'
accounttaxCustomBatchResponse
    :: AccounttaxCustomBatchResponse
accounttaxCustomBatchResponse =
  AccounttaxCustomBatchResponse' {_acbr1Entries = Nothing, _acbr1Kind = Nothing}


-- | The result of the execution of the batch requests.
acbr1Entries :: Lens' AccounttaxCustomBatchResponse [AccounttaxCustomBatchResponseEntry]
acbr1Entries
  = lens _acbr1Entries (\ s a -> s{_acbr1Entries = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#accounttaxCustomBatchResponse\".
acbr1Kind :: Lens' AccounttaxCustomBatchResponse (Maybe Text)
acbr1Kind
  = lens _acbr1Kind (\ s a -> s{_acbr1Kind = a})

instance FromJSON AccounttaxCustomBatchResponse where
        parseJSON
          = withObject "AccounttaxCustomBatchResponse"
              (\ o ->
                 AccounttaxCustomBatchResponse' <$>
                   (o .:? "entries" .!= mempty) <*> (o .:? "kind"))

instance ToJSON AccounttaxCustomBatchResponse where
        toJSON AccounttaxCustomBatchResponse'{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _acbr1Entries,
                  ("kind" .=) <$> _acbr1Kind])

-- | A range of postal codes that defines the region area.
--
-- /See:/ 'regionPostalCodeAreaPostalCodeRange' smart constructor.
data RegionPostalCodeAreaPostalCodeRange =
  RegionPostalCodeAreaPostalCodeRange'
    { _rpcapcrBegin :: !(Maybe Text)
    , _rpcapcrEnd :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionPostalCodeAreaPostalCodeRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpcapcrBegin'
--
-- * 'rpcapcrEnd'
regionPostalCodeAreaPostalCodeRange
    :: RegionPostalCodeAreaPostalCodeRange
regionPostalCodeAreaPostalCodeRange =
  RegionPostalCodeAreaPostalCodeRange'
    {_rpcapcrBegin = Nothing, _rpcapcrEnd = Nothing}


-- | Required. A postal code or a pattern of the form prefix* denoting the
-- inclusive lower bound of the range defining the area. Examples values:
-- \"94108\", \"9410*\", \"9*\".
rpcapcrBegin :: Lens' RegionPostalCodeAreaPostalCodeRange (Maybe Text)
rpcapcrBegin
  = lens _rpcapcrBegin (\ s a -> s{_rpcapcrBegin = a})

-- | Optional. A postal code or a pattern of the form prefix* denoting the
-- inclusive upper bound of the range defining the area. It must have the
-- same length as postalCodeRangeBegin: if postalCodeRangeBegin is a postal
-- code then postalCodeRangeEnd must be a postal code too; if
-- postalCodeRangeBegin is a pattern then postalCodeRangeEnd must be a
-- pattern with the same prefix length. Optional: if not set, then the area
-- is defined as being all the postal codes matching postalCodeRangeBegin.
rpcapcrEnd :: Lens' RegionPostalCodeAreaPostalCodeRange (Maybe Text)
rpcapcrEnd
  = lens _rpcapcrEnd (\ s a -> s{_rpcapcrEnd = a})

instance FromJSON RegionPostalCodeAreaPostalCodeRange
         where
        parseJSON
          = withObject "RegionPostalCodeAreaPostalCodeRange"
              (\ o ->
                 RegionPostalCodeAreaPostalCodeRange' <$>
                   (o .:? "begin") <*> (o .:? "end"))

instance ToJSON RegionPostalCodeAreaPostalCodeRange
         where
        toJSON RegionPostalCodeAreaPostalCodeRange'{..}
          = object
              (catMaybes
                 [("begin" .=) <$> _rpcapcrBegin,
                  ("end" .=) <$> _rpcapcrEnd])

--
-- /See:/ 'accountsClaimWebsiteResponse' smart constructor.
newtype AccountsClaimWebsiteResponse =
  AccountsClaimWebsiteResponse'
    { _acwrKind :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsClaimWebsiteResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwrKind'
accountsClaimWebsiteResponse
    :: AccountsClaimWebsiteResponse
accountsClaimWebsiteResponse =
  AccountsClaimWebsiteResponse' {_acwrKind = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#accountsClaimWebsiteResponse\".
acwrKind :: Lens' AccountsClaimWebsiteResponse (Maybe Text)
acwrKind = lens _acwrKind (\ s a -> s{_acwrKind = a})

instance FromJSON AccountsClaimWebsiteResponse where
        parseJSON
          = withObject "AccountsClaimWebsiteResponse"
              (\ o ->
                 AccountsClaimWebsiteResponse' <$> (o .:? "kind"))

instance ToJSON AccountsClaimWebsiteResponse where
        toJSON AccountsClaimWebsiteResponse'{..}
          = object (catMaybes [("kind" .=) <$> _acwrKind])

--
-- /See:/ 'orderAddress' smart constructor.
data OrderAddress =
  OrderAddress'
    { _oaRecipientName :: !(Maybe Text)
    , _oaStreetAddress :: !(Maybe [Text])
    , _oaCountry :: !(Maybe Text)
    , _oaPostalCode :: !(Maybe Text)
    , _oaLocality :: !(Maybe Text)
    , _oaIsPostOfficeBox :: !(Maybe Bool)
    , _oaFullAddress :: !(Maybe [Text])
    , _oaRegion :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderAddress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oaRecipientName'
--
-- * 'oaStreetAddress'
--
-- * 'oaCountry'
--
-- * 'oaPostalCode'
--
-- * 'oaLocality'
--
-- * 'oaIsPostOfficeBox'
--
-- * 'oaFullAddress'
--
-- * 'oaRegion'
orderAddress
    :: OrderAddress
orderAddress =
  OrderAddress'
    { _oaRecipientName = Nothing
    , _oaStreetAddress = Nothing
    , _oaCountry = Nothing
    , _oaPostalCode = Nothing
    , _oaLocality = Nothing
    , _oaIsPostOfficeBox = Nothing
    , _oaFullAddress = Nothing
    , _oaRegion = Nothing
    }


-- | Name of the recipient.
oaRecipientName :: Lens' OrderAddress (Maybe Text)
oaRecipientName
  = lens _oaRecipientName
      (\ s a -> s{_oaRecipientName = a})

-- | Street-level part of the address.
oaStreetAddress :: Lens' OrderAddress [Text]
oaStreetAddress
  = lens _oaStreetAddress
      (\ s a -> s{_oaStreetAddress = a})
      . _Default
      . _Coerce

-- | CLDR country code (e.g. \"US\").
oaCountry :: Lens' OrderAddress (Maybe Text)
oaCountry
  = lens _oaCountry (\ s a -> s{_oaCountry = a})

-- | Postal Code or ZIP (e.g. \"94043\").
oaPostalCode :: Lens' OrderAddress (Maybe Text)
oaPostalCode
  = lens _oaPostalCode (\ s a -> s{_oaPostalCode = a})

-- | City, town or commune. May also include dependent localities or
-- sublocalities (e.g. neighborhoods or suburbs).
oaLocality :: Lens' OrderAddress (Maybe Text)
oaLocality
  = lens _oaLocality (\ s a -> s{_oaLocality = a})

-- | Whether the address is a post office box.
oaIsPostOfficeBox :: Lens' OrderAddress (Maybe Bool)
oaIsPostOfficeBox
  = lens _oaIsPostOfficeBox
      (\ s a -> s{_oaIsPostOfficeBox = a})

-- | Strings representing the lines of the printed label for mailing the
-- order, for example: John Smith 1600 Amphitheatre Parkway Mountain View,
-- CA, 94043 United States
oaFullAddress :: Lens' OrderAddress [Text]
oaFullAddress
  = lens _oaFullAddress
      (\ s a -> s{_oaFullAddress = a})
      . _Default
      . _Coerce

-- | Top-level administrative subdivision of the country. For example, a
-- state like California (\"CA\") or a province like Quebec (\"QC\").
oaRegion :: Lens' OrderAddress (Maybe Text)
oaRegion = lens _oaRegion (\ s a -> s{_oaRegion = a})

instance FromJSON OrderAddress where
        parseJSON
          = withObject "OrderAddress"
              (\ o ->
                 OrderAddress' <$>
                   (o .:? "recipientName") <*>
                     (o .:? "streetAddress" .!= mempty)
                     <*> (o .:? "country")
                     <*> (o .:? "postalCode")
                     <*> (o .:? "locality")
                     <*> (o .:? "isPostOfficeBox")
                     <*> (o .:? "fullAddress" .!= mempty)
                     <*> (o .:? "region"))

instance ToJSON OrderAddress where
        toJSON OrderAddress'{..}
          = object
              (catMaybes
                 [("recipientName" .=) <$> _oaRecipientName,
                  ("streetAddress" .=) <$> _oaStreetAddress,
                  ("country" .=) <$> _oaCountry,
                  ("postalCode" .=) <$> _oaPostalCode,
                  ("locality" .=) <$> _oaLocality,
                  ("isPostOfficeBox" .=) <$> _oaIsPostOfficeBox,
                  ("fullAddress" .=) <$> _oaFullAddress,
                  ("region" .=) <$> _oaRegion])

--
-- /See:/ 'returnpolicyCustomBatchRequestEntry' smart constructor.
data ReturnpolicyCustomBatchRequestEntry =
  ReturnpolicyCustomBatchRequestEntry'
    { _ret1ReturnPolicyId :: !(Maybe Text)
    , _ret1MerchantId :: !(Maybe (Textual Word64))
    , _ret1Method :: !(Maybe Text)
    , _ret1ReturnPolicy :: !(Maybe ReturnPolicy)
    , _ret1BatchId :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReturnpolicyCustomBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ret1ReturnPolicyId'
--
-- * 'ret1MerchantId'
--
-- * 'ret1Method'
--
-- * 'ret1ReturnPolicy'
--
-- * 'ret1BatchId'
returnpolicyCustomBatchRequestEntry
    :: ReturnpolicyCustomBatchRequestEntry
returnpolicyCustomBatchRequestEntry =
  ReturnpolicyCustomBatchRequestEntry'
    { _ret1ReturnPolicyId = Nothing
    , _ret1MerchantId = Nothing
    , _ret1Method = Nothing
    , _ret1ReturnPolicy = Nothing
    , _ret1BatchId = Nothing
    }


-- | The return policy ID. This should be set only if the method is
-- \`delete\` or \`get\`.
ret1ReturnPolicyId :: Lens' ReturnpolicyCustomBatchRequestEntry (Maybe Text)
ret1ReturnPolicyId
  = lens _ret1ReturnPolicyId
      (\ s a -> s{_ret1ReturnPolicyId = a})

-- | The Merchant Center account ID.
ret1MerchantId :: Lens' ReturnpolicyCustomBatchRequestEntry (Maybe Word64)
ret1MerchantId
  = lens _ret1MerchantId
      (\ s a -> s{_ret1MerchantId = a})
      . mapping _Coerce

-- | Method of the batch request entry. Acceptable values are: -
-- \"\`delete\`\" - \"\`get\`\" - \"\`insert\`\"
ret1Method :: Lens' ReturnpolicyCustomBatchRequestEntry (Maybe Text)
ret1Method
  = lens _ret1Method (\ s a -> s{_ret1Method = a})

-- | The return policy to submit. This should be set only if the method is
-- \`insert\`.
ret1ReturnPolicy :: Lens' ReturnpolicyCustomBatchRequestEntry (Maybe ReturnPolicy)
ret1ReturnPolicy
  = lens _ret1ReturnPolicy
      (\ s a -> s{_ret1ReturnPolicy = a})

-- | An entry ID, unique within the batch request.
ret1BatchId :: Lens' ReturnpolicyCustomBatchRequestEntry (Maybe Word32)
ret1BatchId
  = lens _ret1BatchId (\ s a -> s{_ret1BatchId = a}) .
      mapping _Coerce

instance FromJSON ReturnpolicyCustomBatchRequestEntry
         where
        parseJSON
          = withObject "ReturnpolicyCustomBatchRequestEntry"
              (\ o ->
                 ReturnpolicyCustomBatchRequestEntry' <$>
                   (o .:? "returnPolicyId") <*> (o .:? "merchantId") <*>
                     (o .:? "method")
                     <*> (o .:? "returnPolicy")
                     <*> (o .:? "batchId"))

instance ToJSON ReturnpolicyCustomBatchRequestEntry
         where
        toJSON ReturnpolicyCustomBatchRequestEntry'{..}
          = object
              (catMaybes
                 [("returnPolicyId" .=) <$> _ret1ReturnPolicyId,
                  ("merchantId" .=) <$> _ret1MerchantId,
                  ("method" .=) <$> _ret1Method,
                  ("returnPolicy" .=) <$> _ret1ReturnPolicy,
                  ("batchId" .=) <$> _ret1BatchId])

--
-- /See:/ 'ordersCustomBatchRequestEntryCreateTestReturnReturnItem' smart constructor.
data OrdersCustomBatchRequestEntryCreateTestReturnReturnItem =
  OrdersCustomBatchRequestEntryCreateTestReturnReturnItem'
    { _ocbrectrriQuantity :: !(Maybe (Textual Word32))
    , _ocbrectrriLineItemId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersCustomBatchRequestEntryCreateTestReturnReturnItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocbrectrriQuantity'
--
-- * 'ocbrectrriLineItemId'
ordersCustomBatchRequestEntryCreateTestReturnReturnItem
    :: OrdersCustomBatchRequestEntryCreateTestReturnReturnItem
ordersCustomBatchRequestEntryCreateTestReturnReturnItem =
  OrdersCustomBatchRequestEntryCreateTestReturnReturnItem'
    {_ocbrectrriQuantity = Nothing, _ocbrectrriLineItemId = Nothing}


-- | Quantity that is returned.
ocbrectrriQuantity :: Lens' OrdersCustomBatchRequestEntryCreateTestReturnReturnItem (Maybe Word32)
ocbrectrriQuantity
  = lens _ocbrectrriQuantity
      (\ s a -> s{_ocbrectrriQuantity = a})
      . mapping _Coerce

-- | The ID of the line item to return.
ocbrectrriLineItemId :: Lens' OrdersCustomBatchRequestEntryCreateTestReturnReturnItem (Maybe Text)
ocbrectrriLineItemId
  = lens _ocbrectrriLineItemId
      (\ s a -> s{_ocbrectrriLineItemId = a})

instance FromJSON
           OrdersCustomBatchRequestEntryCreateTestReturnReturnItem
         where
        parseJSON
          = withObject
              "OrdersCustomBatchRequestEntryCreateTestReturnReturnItem"
              (\ o ->
                 OrdersCustomBatchRequestEntryCreateTestReturnReturnItem'
                   <$> (o .:? "quantity") <*> (o .:? "lineItemId"))

instance ToJSON
           OrdersCustomBatchRequestEntryCreateTestReturnReturnItem
         where
        toJSON
          OrdersCustomBatchRequestEntryCreateTestReturnReturnItem'{..}
          = object
              (catMaybes
                 [("quantity" .=) <$> _ocbrectrriQuantity,
                  ("lineItemId" .=) <$> _ocbrectrriLineItemId])

--
-- /See:/ 'productUnitPricingBaseMeasure' smart constructor.
data ProductUnitPricingBaseMeasure =
  ProductUnitPricingBaseMeasure'
    { _pupbmValue :: !(Maybe (Textual Int64))
    , _pupbmUnit :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductUnitPricingBaseMeasure' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pupbmValue'
--
-- * 'pupbmUnit'
productUnitPricingBaseMeasure
    :: ProductUnitPricingBaseMeasure
productUnitPricingBaseMeasure =
  ProductUnitPricingBaseMeasure' {_pupbmValue = Nothing, _pupbmUnit = Nothing}


-- | The denominator of the unit price.
pupbmValue :: Lens' ProductUnitPricingBaseMeasure (Maybe Int64)
pupbmValue
  = lens _pupbmValue (\ s a -> s{_pupbmValue = a}) .
      mapping _Coerce

-- | The unit of the denominator.
pupbmUnit :: Lens' ProductUnitPricingBaseMeasure (Maybe Text)
pupbmUnit
  = lens _pupbmUnit (\ s a -> s{_pupbmUnit = a})

instance FromJSON ProductUnitPricingBaseMeasure where
        parseJSON
          = withObject "ProductUnitPricingBaseMeasure"
              (\ o ->
                 ProductUnitPricingBaseMeasure' <$>
                   (o .:? "value") <*> (o .:? "unit"))

instance ToJSON ProductUnitPricingBaseMeasure where
        toJSON ProductUnitPricingBaseMeasure'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _pupbmValue,
                  ("unit" .=) <$> _pupbmUnit])

--
-- /See:/ 'liaSettingsGetAccessibleGmbAccountsResponse' smart constructor.
data LiaSettingsGetAccessibleGmbAccountsResponse =
  LiaSettingsGetAccessibleGmbAccountsResponse'
    { _lsgagarGmbAccounts :: !(Maybe [GmbAccountsGmbAccount])
    , _lsgagarKind :: !(Maybe Text)
    , _lsgagarAccountId :: !(Maybe (Textual Word64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiaSettingsGetAccessibleGmbAccountsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsgagarGmbAccounts'
--
-- * 'lsgagarKind'
--
-- * 'lsgagarAccountId'
liaSettingsGetAccessibleGmbAccountsResponse
    :: LiaSettingsGetAccessibleGmbAccountsResponse
liaSettingsGetAccessibleGmbAccountsResponse =
  LiaSettingsGetAccessibleGmbAccountsResponse'
    { _lsgagarGmbAccounts = Nothing
    , _lsgagarKind = Nothing
    , _lsgagarAccountId = Nothing
    }


-- | A list of GMB accounts which are available to the merchant.
lsgagarGmbAccounts :: Lens' LiaSettingsGetAccessibleGmbAccountsResponse [GmbAccountsGmbAccount]
lsgagarGmbAccounts
  = lens _lsgagarGmbAccounts
      (\ s a -> s{_lsgagarGmbAccounts = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#liasettingsGetAccessibleGmbAccountsResponse\".
lsgagarKind :: Lens' LiaSettingsGetAccessibleGmbAccountsResponse (Maybe Text)
lsgagarKind
  = lens _lsgagarKind (\ s a -> s{_lsgagarKind = a})

-- | The ID of the Merchant Center account.
lsgagarAccountId :: Lens' LiaSettingsGetAccessibleGmbAccountsResponse (Maybe Word64)
lsgagarAccountId
  = lens _lsgagarAccountId
      (\ s a -> s{_lsgagarAccountId = a})
      . mapping _Coerce

instance FromJSON
           LiaSettingsGetAccessibleGmbAccountsResponse
         where
        parseJSON
          = withObject
              "LiaSettingsGetAccessibleGmbAccountsResponse"
              (\ o ->
                 LiaSettingsGetAccessibleGmbAccountsResponse' <$>
                   (o .:? "gmbAccounts" .!= mempty) <*> (o .:? "kind")
                     <*> (o .:? "accountId"))

instance ToJSON
           LiaSettingsGetAccessibleGmbAccountsResponse
         where
        toJSON
          LiaSettingsGetAccessibleGmbAccountsResponse'{..}
          = object
              (catMaybes
                 [("gmbAccounts" .=) <$> _lsgagarGmbAccounts,
                  ("kind" .=) <$> _lsgagarKind,
                  ("accountId" .=) <$> _lsgagarAccountId])

--
-- /See:/ 'datafeedsListResponse' smart constructor.
data DatafeedsListResponse =
  DatafeedsListResponse'
    { _dlrNextPageToken :: !(Maybe Text)
    , _dlrKind :: !(Maybe Text)
    , _dlrResources :: !(Maybe [Datafeed])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatafeedsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlrNextPageToken'
--
-- * 'dlrKind'
--
-- * 'dlrResources'
datafeedsListResponse
    :: DatafeedsListResponse
datafeedsListResponse =
  DatafeedsListResponse'
    {_dlrNextPageToken = Nothing, _dlrKind = Nothing, _dlrResources = Nothing}


-- | The token for the retrieval of the next page of datafeeds.
dlrNextPageToken :: Lens' DatafeedsListResponse (Maybe Text)
dlrNextPageToken
  = lens _dlrNextPageToken
      (\ s a -> s{_dlrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#datafeedsListResponse\".
dlrKind :: Lens' DatafeedsListResponse (Maybe Text)
dlrKind = lens _dlrKind (\ s a -> s{_dlrKind = a})

dlrResources :: Lens' DatafeedsListResponse [Datafeed]
dlrResources
  = lens _dlrResources (\ s a -> s{_dlrResources = a})
      . _Default
      . _Coerce

instance FromJSON DatafeedsListResponse where
        parseJSON
          = withObject "DatafeedsListResponse"
              (\ o ->
                 DatafeedsListResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "kind") <*>
                     (o .:? "resources" .!= mempty))

instance ToJSON DatafeedsListResponse where
        toJSON DatafeedsListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _dlrNextPageToken,
                  ("kind" .=) <$> _dlrKind,
                  ("resources" .=) <$> _dlrResources])

-- | Represents how many items are in the shipment for the given shipment_id
-- and line_item_id.
--
-- /See:/ 'orderTrackingSignalShipmentLineItemMApping' smart constructor.
data OrderTrackingSignalShipmentLineItemMApping =
  OrderTrackingSignalShipmentLineItemMApping'
    { _otsslimaShipmentId :: !(Maybe Text)
    , _otsslimaQuantity :: !(Maybe (Textual Int64))
    , _otsslimaLineItemId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderTrackingSignalShipmentLineItemMApping' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'otsslimaShipmentId'
--
-- * 'otsslimaQuantity'
--
-- * 'otsslimaLineItemId'
orderTrackingSignalShipmentLineItemMApping
    :: OrderTrackingSignalShipmentLineItemMApping
orderTrackingSignalShipmentLineItemMApping =
  OrderTrackingSignalShipmentLineItemMApping'
    { _otsslimaShipmentId = Nothing
    , _otsslimaQuantity = Nothing
    , _otsslimaLineItemId = Nothing
    }


-- | Required. The shipment ID.
otsslimaShipmentId :: Lens' OrderTrackingSignalShipmentLineItemMApping (Maybe Text)
otsslimaShipmentId
  = lens _otsslimaShipmentId
      (\ s a -> s{_otsslimaShipmentId = a})

-- | Required. The line item quantity in the shipment.
otsslimaQuantity :: Lens' OrderTrackingSignalShipmentLineItemMApping (Maybe Int64)
otsslimaQuantity
  = lens _otsslimaQuantity
      (\ s a -> s{_otsslimaQuantity = a})
      . mapping _Coerce

-- | Required. The line item ID.
otsslimaLineItemId :: Lens' OrderTrackingSignalShipmentLineItemMApping (Maybe Text)
otsslimaLineItemId
  = lens _otsslimaLineItemId
      (\ s a -> s{_otsslimaLineItemId = a})

instance FromJSON
           OrderTrackingSignalShipmentLineItemMApping
         where
        parseJSON
          = withObject
              "OrderTrackingSignalShipmentLineItemMApping"
              (\ o ->
                 OrderTrackingSignalShipmentLineItemMApping' <$>
                   (o .:? "shipmentId") <*> (o .:? "quantity") <*>
                     (o .:? "lineItemId"))

instance ToJSON
           OrderTrackingSignalShipmentLineItemMApping
         where
        toJSON
          OrderTrackingSignalShipmentLineItemMApping'{..}
          = object
              (catMaybes
                 [("shipmentId" .=) <$> _otsslimaShipmentId,
                  ("quantity" .=) <$> _otsslimaQuantity,
                  ("lineItemId" .=) <$> _otsslimaLineItemId])

--
-- /See:/ 'transitTableTransitTimeRowTransitTimeValue' smart constructor.
data TransitTableTransitTimeRowTransitTimeValue =
  TransitTableTransitTimeRowTransitTimeValue'
    { _ttttrttvMinTransitTimeInDays :: !(Maybe (Textual Word32))
    , _ttttrttvMaxTransitTimeInDays :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TransitTableTransitTimeRowTransitTimeValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttttrttvMinTransitTimeInDays'
--
-- * 'ttttrttvMaxTransitTimeInDays'
transitTableTransitTimeRowTransitTimeValue
    :: TransitTableTransitTimeRowTransitTimeValue
transitTableTransitTimeRowTransitTimeValue =
  TransitTableTransitTimeRowTransitTimeValue'
    { _ttttrttvMinTransitTimeInDays = Nothing
    , _ttttrttvMaxTransitTimeInDays = Nothing
    }


-- | Transit time range (min-max) in business days. 0 means same day
-- delivery, 1 means next day delivery.
ttttrttvMinTransitTimeInDays :: Lens' TransitTableTransitTimeRowTransitTimeValue (Maybe Word32)
ttttrttvMinTransitTimeInDays
  = lens _ttttrttvMinTransitTimeInDays
      (\ s a -> s{_ttttrttvMinTransitTimeInDays = a})
      . mapping _Coerce

-- | Must be greater than or equal to \`minTransitTimeInDays\`.
ttttrttvMaxTransitTimeInDays :: Lens' TransitTableTransitTimeRowTransitTimeValue (Maybe Word32)
ttttrttvMaxTransitTimeInDays
  = lens _ttttrttvMaxTransitTimeInDays
      (\ s a -> s{_ttttrttvMaxTransitTimeInDays = a})
      . mapping _Coerce

instance FromJSON
           TransitTableTransitTimeRowTransitTimeValue
         where
        parseJSON
          = withObject
              "TransitTableTransitTimeRowTransitTimeValue"
              (\ o ->
                 TransitTableTransitTimeRowTransitTimeValue' <$>
                   (o .:? "minTransitTimeInDays") <*>
                     (o .:? "maxTransitTimeInDays"))

instance ToJSON
           TransitTableTransitTimeRowTransitTimeValue
         where
        toJSON
          TransitTableTransitTimeRowTransitTimeValue'{..}
          = object
              (catMaybes
                 [("minTransitTimeInDays" .=) <$>
                    _ttttrttvMinTransitTimeInDays,
                  ("maxTransitTimeInDays" .=) <$>
                    _ttttrttvMaxTransitTimeInDays])

--
-- /See:/ 'accountStatusStatistics' smart constructor.
data AccountStatusStatistics =
  AccountStatusStatistics'
    { _assPending :: !(Maybe (Textual Int64))
    , _assExpiring :: !(Maybe (Textual Int64))
    , _assActive :: !(Maybe (Textual Int64))
    , _assDisApproved :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountStatusStatistics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'assPending'
--
-- * 'assExpiring'
--
-- * 'assActive'
--
-- * 'assDisApproved'
accountStatusStatistics
    :: AccountStatusStatistics
accountStatusStatistics =
  AccountStatusStatistics'
    { _assPending = Nothing
    , _assExpiring = Nothing
    , _assActive = Nothing
    , _assDisApproved = Nothing
    }


-- | Number of pending offers.
assPending :: Lens' AccountStatusStatistics (Maybe Int64)
assPending
  = lens _assPending (\ s a -> s{_assPending = a}) .
      mapping _Coerce

-- | Number of expiring offers.
assExpiring :: Lens' AccountStatusStatistics (Maybe Int64)
assExpiring
  = lens _assExpiring (\ s a -> s{_assExpiring = a}) .
      mapping _Coerce

-- | Number of active offers.
assActive :: Lens' AccountStatusStatistics (Maybe Int64)
assActive
  = lens _assActive (\ s a -> s{_assActive = a}) .
      mapping _Coerce

-- | Number of disapproved offers.
assDisApproved :: Lens' AccountStatusStatistics (Maybe Int64)
assDisApproved
  = lens _assDisApproved
      (\ s a -> s{_assDisApproved = a})
      . mapping _Coerce

instance FromJSON AccountStatusStatistics where
        parseJSON
          = withObject "AccountStatusStatistics"
              (\ o ->
                 AccountStatusStatistics' <$>
                   (o .:? "pending") <*> (o .:? "expiring") <*>
                     (o .:? "active")
                     <*> (o .:? "disapproved"))

instance ToJSON AccountStatusStatistics where
        toJSON AccountStatusStatistics'{..}
          = object
              (catMaybes
                 [("pending" .=) <$> _assPending,
                  ("expiring" .=) <$> _assExpiring,
                  ("active" .=) <$> _assActive,
                  ("disapproved" .=) <$> _assDisApproved])

-- | A batch entry encoding a single non-batch products response.
--
-- /See:/ 'productsCustomBatchResponseEntry' smart constructor.
data ProductsCustomBatchResponseEntry =
  ProductsCustomBatchResponseEntry'
    { _pcbre1Kind :: !(Maybe Text)
    , _pcbre1Product :: !(Maybe Product)
    , _pcbre1Errors :: !(Maybe Errors)
    , _pcbre1BatchId :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductsCustomBatchResponseEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcbre1Kind'
--
-- * 'pcbre1Product'
--
-- * 'pcbre1Errors'
--
-- * 'pcbre1BatchId'
productsCustomBatchResponseEntry
    :: ProductsCustomBatchResponseEntry
productsCustomBatchResponseEntry =
  ProductsCustomBatchResponseEntry'
    { _pcbre1Kind = Nothing
    , _pcbre1Product = Nothing
    , _pcbre1Errors = Nothing
    , _pcbre1BatchId = Nothing
    }


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"\`content#productsCustomBatchResponseEntry\`\"
pcbre1Kind :: Lens' ProductsCustomBatchResponseEntry (Maybe Text)
pcbre1Kind
  = lens _pcbre1Kind (\ s a -> s{_pcbre1Kind = a})

-- | The inserted product. Only defined if the method is \`insert\` and if
-- the request was successful.
pcbre1Product :: Lens' ProductsCustomBatchResponseEntry (Maybe Product)
pcbre1Product
  = lens _pcbre1Product
      (\ s a -> s{_pcbre1Product = a})

-- | A list of errors defined if and only if the request failed.
pcbre1Errors :: Lens' ProductsCustomBatchResponseEntry (Maybe Errors)
pcbre1Errors
  = lens _pcbre1Errors (\ s a -> s{_pcbre1Errors = a})

-- | The ID of the request entry this entry responds to.
pcbre1BatchId :: Lens' ProductsCustomBatchResponseEntry (Maybe Word32)
pcbre1BatchId
  = lens _pcbre1BatchId
      (\ s a -> s{_pcbre1BatchId = a})
      . mapping _Coerce

instance FromJSON ProductsCustomBatchResponseEntry
         where
        parseJSON
          = withObject "ProductsCustomBatchResponseEntry"
              (\ o ->
                 ProductsCustomBatchResponseEntry' <$>
                   (o .:? "kind") <*> (o .:? "product") <*>
                     (o .:? "errors")
                     <*> (o .:? "batchId"))

instance ToJSON ProductsCustomBatchResponseEntry
         where
        toJSON ProductsCustomBatchResponseEntry'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _pcbre1Kind,
                  ("product" .=) <$> _pcbre1Product,
                  ("errors" .=) <$> _pcbre1Errors,
                  ("batchId" .=) <$> _pcbre1BatchId])

-- | Required product attributes are primarily defined by the products data
-- specification. See the Products Data Specification Help Center article
-- for information. Some attributes are country-specific, so make sure you
-- select the appropriate country in the drop-down selector at the top of
-- the page. Product data. After inserting, updating, or deleting a
-- product, it may take several minutes before changes take effect.
--
-- /See:/ 'product' smart constructor.
data Product =
  Product'
    { _prorDisplayAdsLink :: !(Maybe Text)
    , _prorCustomLabel1 :: !(Maybe Text)
    , _prorShippingWidth :: !(Maybe ProductShippingDimension)
    , _prorImageLink :: !(Maybe Text)
    , _prorIncludedDestinations :: !(Maybe [Text])
    , _prorDisplayAdsValue :: !(Maybe (Textual Double))
    , _prorCanonicalLink :: !(Maybe Text)
    , _prorLoyaltyPoints :: !(Maybe LoyaltyPoints)
    , _prorAdditionalImageLinks :: !(Maybe [Text])
    , _prorExcludedDestinations :: !(Maybe [Text])
    , _prorColor :: !(Maybe Text)
    , _prorCustomLabel0 :: !(Maybe Text)
    , _prorKind :: !(Maybe Text)
    , _prorMinHandlingTime :: !(Maybe (Textual Int64))
    , _prorMultipack :: !(Maybe (Textual Int64))
    , _prorPattern :: !(Maybe Text)
    , _prorLink :: !(Maybe Text)
    , _prorProductHighlights :: !(Maybe [Text])
    , _prorProductTypes :: !(Maybe [Text])
    , _prorSizeSystem :: !(Maybe Text)
    , _prorUnitPricingBaseMeasure :: !(Maybe ProductUnitPricingBaseMeasure)
    , _prorTaxes :: !(Maybe [ProductTax])
    , _prorMaterial :: !(Maybe Text)
    , _prorInstallment :: !(Maybe Installment)
    , _prorChannel :: !(Maybe Text)
    , _prorIdentifierExists :: !(Maybe Bool)
    , _prorBrand :: !(Maybe Text)
    , _prorUnitPricingMeasure :: !(Maybe ProductUnitPricingMeasure)
    , _prorShoppingAdsExcludedCountries :: !(Maybe [Text])
    , _prorSalePrice :: !(Maybe Price)
    , _prorCostOfGoodsSold :: !(Maybe Price)
    , _prorShippingLength :: !(Maybe ProductShippingDimension)
    , _prorCustomLabel3 :: !(Maybe Text)
    , _prorMaxHandlingTime :: !(Maybe (Textual Int64))
    , _prorAvailability :: !(Maybe Text)
    , _prorMinEnergyEfficiencyClass :: !(Maybe Text)
    , _prorTargetCountry :: !(Maybe Text)
    , _prorShippingLabel :: !(Maybe Text)
    , _prorAdsRedirect :: !(Maybe Text)
    , _prorCustomAttributes :: !(Maybe [CustomAttribute])
    , _prorGtin :: !(Maybe Text)
    , _prorAgeGroup :: !(Maybe Text)
    , _prorDisplayAdsTitle :: !(Maybe Text)
    , _prorTransitTimeLabel :: !(Maybe Text)
    , _prorMaxEnergyEfficiencyClass :: !(Maybe Text)
    , _prorGender :: !(Maybe Text)
    , _prorExpirationDate :: !(Maybe Text)
    , _prorItemGroupId :: !(Maybe Text)
    , _prorSalePriceEffectiveDate :: !(Maybe Text)
    , _prorCustomLabel2 :: !(Maybe Text)
    , _prorGoogleProductCategory :: !(Maybe Text)
    , _prorShipping :: !(Maybe [ProductShipping])
    , _prorShippingWeight :: !(Maybe ProductShippingWeight)
    , _prorSellOnGoogleQuantity :: !(Maybe (Textual Int64))
    , _prorTaxCategory :: !(Maybe Text)
    , _prorShippingHeight :: !(Maybe ProductShippingDimension)
    , _prorAvailabilityDate :: !(Maybe Text)
    , _prorSource :: !(Maybe Text)
    , _prorOfferId :: !(Maybe Text)
    , _prorId :: !(Maybe Text)
    , _prorPrice :: !(Maybe Price)
    , _prorPromotionIds :: !(Maybe [Text])
    , _prorSizeType :: !(Maybe Text)
    , _prorMobileLink :: !(Maybe Text)
    , _prorSubscriptionCost :: !(Maybe ProductSubscriptionCost)
    , _prorTitle :: !(Maybe Text)
    , _prorAdult :: !(Maybe Bool)
    , _prorContentLanguage :: !(Maybe Text)
    , _prorAdsLabels :: !(Maybe [Text])
    , _prorEnergyEfficiencyClass :: !(Maybe Text)
    , _prorDisplayAdsSimilarIds :: !(Maybe [Text])
    , _prorMpn :: !(Maybe Text)
    , _prorCondition :: !(Maybe Text)
    , _prorSizes :: !(Maybe [Text])
    , _prorIsBundle :: !(Maybe Bool)
    , _prorDescription :: !(Maybe Text)
    , _prorCustomLabel4 :: !(Maybe Text)
    , _prorDisplayAdsId :: !(Maybe Text)
    , _prorProductDetails :: !(Maybe [ProductProductDetail])
    , _prorAdsGrouping :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Product' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prorDisplayAdsLink'
--
-- * 'prorCustomLabel1'
--
-- * 'prorShippingWidth'
--
-- * 'prorImageLink'
--
-- * 'prorIncludedDestinations'
--
-- * 'prorDisplayAdsValue'
--
-- * 'prorCanonicalLink'
--
-- * 'prorLoyaltyPoints'
--
-- * 'prorAdditionalImageLinks'
--
-- * 'prorExcludedDestinations'
--
-- * 'prorColor'
--
-- * 'prorCustomLabel0'
--
-- * 'prorKind'
--
-- * 'prorMinHandlingTime'
--
-- * 'prorMultipack'
--
-- * 'prorPattern'
--
-- * 'prorLink'
--
-- * 'prorProductHighlights'
--
-- * 'prorProductTypes'
--
-- * 'prorSizeSystem'
--
-- * 'prorUnitPricingBaseMeasure'
--
-- * 'prorTaxes'
--
-- * 'prorMaterial'
--
-- * 'prorInstallment'
--
-- * 'prorChannel'
--
-- * 'prorIdentifierExists'
--
-- * 'prorBrand'
--
-- * 'prorUnitPricingMeasure'
--
-- * 'prorShoppingAdsExcludedCountries'
--
-- * 'prorSalePrice'
--
-- * 'prorCostOfGoodsSold'
--
-- * 'prorShippingLength'
--
-- * 'prorCustomLabel3'
--
-- * 'prorMaxHandlingTime'
--
-- * 'prorAvailability'
--
-- * 'prorMinEnergyEfficiencyClass'
--
-- * 'prorTargetCountry'
--
-- * 'prorShippingLabel'
--
-- * 'prorAdsRedirect'
--
-- * 'prorCustomAttributes'
--
-- * 'prorGtin'
--
-- * 'prorAgeGroup'
--
-- * 'prorDisplayAdsTitle'
--
-- * 'prorTransitTimeLabel'
--
-- * 'prorMaxEnergyEfficiencyClass'
--
-- * 'prorGender'
--
-- * 'prorExpirationDate'
--
-- * 'prorItemGroupId'
--
-- * 'prorSalePriceEffectiveDate'
--
-- * 'prorCustomLabel2'
--
-- * 'prorGoogleProductCategory'
--
-- * 'prorShipping'
--
-- * 'prorShippingWeight'
--
-- * 'prorSellOnGoogleQuantity'
--
-- * 'prorTaxCategory'
--
-- * 'prorShippingHeight'
--
-- * 'prorAvailabilityDate'
--
-- * 'prorSource'
--
-- * 'prorOfferId'
--
-- * 'prorId'
--
-- * 'prorPrice'
--
-- * 'prorPromotionIds'
--
-- * 'prorSizeType'
--
-- * 'prorMobileLink'
--
-- * 'prorSubscriptionCost'
--
-- * 'prorTitle'
--
-- * 'prorAdult'
--
-- * 'prorContentLanguage'
--
-- * 'prorAdsLabels'
--
-- * 'prorEnergyEfficiencyClass'
--
-- * 'prorDisplayAdsSimilarIds'
--
-- * 'prorMpn'
--
-- * 'prorCondition'
--
-- * 'prorSizes'
--
-- * 'prorIsBundle'
--
-- * 'prorDescription'
--
-- * 'prorCustomLabel4'
--
-- * 'prorDisplayAdsId'
--
-- * 'prorProductDetails'
--
-- * 'prorAdsGrouping'
product
    :: Product
product =
  Product'
    { _prorDisplayAdsLink = Nothing
    , _prorCustomLabel1 = Nothing
    , _prorShippingWidth = Nothing
    , _prorImageLink = Nothing
    , _prorIncludedDestinations = Nothing
    , _prorDisplayAdsValue = Nothing
    , _prorCanonicalLink = Nothing
    , _prorLoyaltyPoints = Nothing
    , _prorAdditionalImageLinks = Nothing
    , _prorExcludedDestinations = Nothing
    , _prorColor = Nothing
    , _prorCustomLabel0 = Nothing
    , _prorKind = Nothing
    , _prorMinHandlingTime = Nothing
    , _prorMultipack = Nothing
    , _prorPattern = Nothing
    , _prorLink = Nothing
    , _prorProductHighlights = Nothing
    , _prorProductTypes = Nothing
    , _prorSizeSystem = Nothing
    , _prorUnitPricingBaseMeasure = Nothing
    , _prorTaxes = Nothing
    , _prorMaterial = Nothing
    , _prorInstallment = Nothing
    , _prorChannel = Nothing
    , _prorIdentifierExists = Nothing
    , _prorBrand = Nothing
    , _prorUnitPricingMeasure = Nothing
    , _prorShoppingAdsExcludedCountries = Nothing
    , _prorSalePrice = Nothing
    , _prorCostOfGoodsSold = Nothing
    , _prorShippingLength = Nothing
    , _prorCustomLabel3 = Nothing
    , _prorMaxHandlingTime = Nothing
    , _prorAvailability = Nothing
    , _prorMinEnergyEfficiencyClass = Nothing
    , _prorTargetCountry = Nothing
    , _prorShippingLabel = Nothing
    , _prorAdsRedirect = Nothing
    , _prorCustomAttributes = Nothing
    , _prorGtin = Nothing
    , _prorAgeGroup = Nothing
    , _prorDisplayAdsTitle = Nothing
    , _prorTransitTimeLabel = Nothing
    , _prorMaxEnergyEfficiencyClass = Nothing
    , _prorGender = Nothing
    , _prorExpirationDate = Nothing
    , _prorItemGroupId = Nothing
    , _prorSalePriceEffectiveDate = Nothing
    , _prorCustomLabel2 = Nothing
    , _prorGoogleProductCategory = Nothing
    , _prorShipping = Nothing
    , _prorShippingWeight = Nothing
    , _prorSellOnGoogleQuantity = Nothing
    , _prorTaxCategory = Nothing
    , _prorShippingHeight = Nothing
    , _prorAvailabilityDate = Nothing
    , _prorSource = Nothing
    , _prorOfferId = Nothing
    , _prorId = Nothing
    , _prorPrice = Nothing
    , _prorPromotionIds = Nothing
    , _prorSizeType = Nothing
    , _prorMobileLink = Nothing
    , _prorSubscriptionCost = Nothing
    , _prorTitle = Nothing
    , _prorAdult = Nothing
    , _prorContentLanguage = Nothing
    , _prorAdsLabels = Nothing
    , _prorEnergyEfficiencyClass = Nothing
    , _prorDisplayAdsSimilarIds = Nothing
    , _prorMpn = Nothing
    , _prorCondition = Nothing
    , _prorSizes = Nothing
    , _prorIsBundle = Nothing
    , _prorDescription = Nothing
    , _prorCustomLabel4 = Nothing
    , _prorDisplayAdsId = Nothing
    , _prorProductDetails = Nothing
    , _prorAdsGrouping = Nothing
    }


-- | URL directly to your item\'s landing page for dynamic remarketing
-- campaigns.
prorDisplayAdsLink :: Lens' Product (Maybe Text)
prorDisplayAdsLink
  = lens _prorDisplayAdsLink
      (\ s a -> s{_prorDisplayAdsLink = a})

-- | Custom label 1 for custom grouping of items in a Shopping campaign.
prorCustomLabel1 :: Lens' Product (Maybe Text)
prorCustomLabel1
  = lens _prorCustomLabel1
      (\ s a -> s{_prorCustomLabel1 = a})

-- | Width of the item for shipping.
prorShippingWidth :: Lens' Product (Maybe ProductShippingDimension)
prorShippingWidth
  = lens _prorShippingWidth
      (\ s a -> s{_prorShippingWidth = a})

-- | URL of an image of the item.
prorImageLink :: Lens' Product (Maybe Text)
prorImageLink
  = lens _prorImageLink
      (\ s a -> s{_prorImageLink = a})

-- | The list of destinations to include for this target (corresponds to
-- checked check boxes in Merchant Center). Default destinations are always
-- included unless provided in \`excludedDestinations\`.
prorIncludedDestinations :: Lens' Product [Text]
prorIncludedDestinations
  = lens _prorIncludedDestinations
      (\ s a -> s{_prorIncludedDestinations = a})
      . _Default
      . _Coerce

-- | Offer margin for dynamic remarketing campaigns.
prorDisplayAdsValue :: Lens' Product (Maybe Double)
prorDisplayAdsValue
  = lens _prorDisplayAdsValue
      (\ s a -> s{_prorDisplayAdsValue = a})
      . mapping _Coerce

-- | URL for the canonical version of your item\'s landing page.
prorCanonicalLink :: Lens' Product (Maybe Text)
prorCanonicalLink
  = lens _prorCanonicalLink
      (\ s a -> s{_prorCanonicalLink = a})

-- | Loyalty points that users receive after purchasing the item. Japan only.
prorLoyaltyPoints :: Lens' Product (Maybe LoyaltyPoints)
prorLoyaltyPoints
  = lens _prorLoyaltyPoints
      (\ s a -> s{_prorLoyaltyPoints = a})

-- | Additional URLs of images of the item.
prorAdditionalImageLinks :: Lens' Product [Text]
prorAdditionalImageLinks
  = lens _prorAdditionalImageLinks
      (\ s a -> s{_prorAdditionalImageLinks = a})
      . _Default
      . _Coerce

-- | The list of destinations to exclude for this target (corresponds to
-- unchecked check boxes in Merchant Center).
prorExcludedDestinations :: Lens' Product [Text]
prorExcludedDestinations
  = lens _prorExcludedDestinations
      (\ s a -> s{_prorExcludedDestinations = a})
      . _Default
      . _Coerce

-- | Color of the item.
prorColor :: Lens' Product (Maybe Text)
prorColor
  = lens _prorColor (\ s a -> s{_prorColor = a})

-- | Custom label 0 for custom grouping of items in a Shopping campaign.
prorCustomLabel0 :: Lens' Product (Maybe Text)
prorCustomLabel0
  = lens _prorCustomLabel0
      (\ s a -> s{_prorCustomLabel0 = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"\`content#product\`\"
prorKind :: Lens' Product (Maybe Text)
prorKind = lens _prorKind (\ s a -> s{_prorKind = a})

-- | Minimal product handling time (in business days).
prorMinHandlingTime :: Lens' Product (Maybe Int64)
prorMinHandlingTime
  = lens _prorMinHandlingTime
      (\ s a -> s{_prorMinHandlingTime = a})
      . mapping _Coerce

-- | The number of identical products in a merchant-defined multipack.
prorMultipack :: Lens' Product (Maybe Int64)
prorMultipack
  = lens _prorMultipack
      (\ s a -> s{_prorMultipack = a})
      . mapping _Coerce

-- | The item\'s pattern (e.g. polka dots).
prorPattern :: Lens' Product (Maybe Text)
prorPattern
  = lens _prorPattern (\ s a -> s{_prorPattern = a})

-- | URL directly linking to your item\'s page on your website.
prorLink :: Lens' Product (Maybe Text)
prorLink = lens _prorLink (\ s a -> s{_prorLink = a})

-- | Bullet points describing the most relevant highlights of a product.
prorProductHighlights :: Lens' Product [Text]
prorProductHighlights
  = lens _prorProductHighlights
      (\ s a -> s{_prorProductHighlights = a})
      . _Default
      . _Coerce

-- | Categories of the item (formatted as in products data specification).
prorProductTypes :: Lens' Product [Text]
prorProductTypes
  = lens _prorProductTypes
      (\ s a -> s{_prorProductTypes = a})
      . _Default
      . _Coerce

-- | System in which the size is specified. Recommended for apparel items.
prorSizeSystem :: Lens' Product (Maybe Text)
prorSizeSystem
  = lens _prorSizeSystem
      (\ s a -> s{_prorSizeSystem = a})

-- | The preference of the denominator of the unit price.
prorUnitPricingBaseMeasure :: Lens' Product (Maybe ProductUnitPricingBaseMeasure)
prorUnitPricingBaseMeasure
  = lens _prorUnitPricingBaseMeasure
      (\ s a -> s{_prorUnitPricingBaseMeasure = a})

-- | Tax information.
prorTaxes :: Lens' Product [ProductTax]
prorTaxes
  = lens _prorTaxes (\ s a -> s{_prorTaxes = a}) .
      _Default
      . _Coerce

-- | The material of which the item is made.
prorMaterial :: Lens' Product (Maybe Text)
prorMaterial
  = lens _prorMaterial (\ s a -> s{_prorMaterial = a})

-- | Number and amount of installments to pay for an item.
prorInstallment :: Lens' Product (Maybe Installment)
prorInstallment
  = lens _prorInstallment
      (\ s a -> s{_prorInstallment = a})

-- | Required. The item\'s channel (online or local). Acceptable values are:
-- - \"\`local\`\" - \"\`online\`\"
prorChannel :: Lens' Product (Maybe Text)
prorChannel
  = lens _prorChannel (\ s a -> s{_prorChannel = a})

-- | False when the item does not have unique product identifiers appropriate
-- to its category, such as GTIN, MPN, and brand. Required according to the
-- Unique Product Identifier Rules for all target countries except for
-- Canada.
prorIdentifierExists :: Lens' Product (Maybe Bool)
prorIdentifierExists
  = lens _prorIdentifierExists
      (\ s a -> s{_prorIdentifierExists = a})

-- | Brand of the item.
prorBrand :: Lens' Product (Maybe Text)
prorBrand
  = lens _prorBrand (\ s a -> s{_prorBrand = a})

-- | The measure and dimension of an item.
prorUnitPricingMeasure :: Lens' Product (Maybe ProductUnitPricingMeasure)
prorUnitPricingMeasure
  = lens _prorUnitPricingMeasure
      (\ s a -> s{_prorUnitPricingMeasure = a})

-- | List of country codes (ISO 3166-1 alpha-2) to exclude the offer from
-- Shopping Ads destination. Countries from this list are removed from
-- countries configured in MC feed settings.
prorShoppingAdsExcludedCountries :: Lens' Product [Text]
prorShoppingAdsExcludedCountries
  = lens _prorShoppingAdsExcludedCountries
      (\ s a -> s{_prorShoppingAdsExcludedCountries = a})
      . _Default
      . _Coerce

-- | Advertised sale price of the item.
prorSalePrice :: Lens' Product (Maybe Price)
prorSalePrice
  = lens _prorSalePrice
      (\ s a -> s{_prorSalePrice = a})

-- | Cost of goods sold. Used for gross profit reporting.
prorCostOfGoodsSold :: Lens' Product (Maybe Price)
prorCostOfGoodsSold
  = lens _prorCostOfGoodsSold
      (\ s a -> s{_prorCostOfGoodsSold = a})

-- | Length of the item for shipping.
prorShippingLength :: Lens' Product (Maybe ProductShippingDimension)
prorShippingLength
  = lens _prorShippingLength
      (\ s a -> s{_prorShippingLength = a})

-- | Custom label 3 for custom grouping of items in a Shopping campaign.
prorCustomLabel3 :: Lens' Product (Maybe Text)
prorCustomLabel3
  = lens _prorCustomLabel3
      (\ s a -> s{_prorCustomLabel3 = a})

-- | Maximal product handling time (in business days).
prorMaxHandlingTime :: Lens' Product (Maybe Int64)
prorMaxHandlingTime
  = lens _prorMaxHandlingTime
      (\ s a -> s{_prorMaxHandlingTime = a})
      . mapping _Coerce

-- | Availability status of the item.
prorAvailability :: Lens' Product (Maybe Text)
prorAvailability
  = lens _prorAvailability
      (\ s a -> s{_prorAvailability = a})

-- | The energy efficiency class as defined in EU directive 2010\/30\/EU.
prorMinEnergyEfficiencyClass :: Lens' Product (Maybe Text)
prorMinEnergyEfficiencyClass
  = lens _prorMinEnergyEfficiencyClass
      (\ s a -> s{_prorMinEnergyEfficiencyClass = a})

-- | Required. The CLDR territory code for the item.
prorTargetCountry :: Lens' Product (Maybe Text)
prorTargetCountry
  = lens _prorTargetCountry
      (\ s a -> s{_prorTargetCountry = a})

-- | The shipping label of the product, used to group product in
-- account-level shipping rules.
prorShippingLabel :: Lens' Product (Maybe Text)
prorShippingLabel
  = lens _prorShippingLabel
      (\ s a -> s{_prorShippingLabel = a})

-- | Allows advertisers to override the item URL when the product is shown
-- within the context of Product Ads.
prorAdsRedirect :: Lens' Product (Maybe Text)
prorAdsRedirect
  = lens _prorAdsRedirect
      (\ s a -> s{_prorAdsRedirect = a})

-- | A list of custom (merchant-provided) attributes. It can also be used for
-- submitting any attribute of the feed specification in its generic form
-- (e.g., \`{ \"name\": \"size type\", \"value\": \"regular\" }\`). This is
-- useful for submitting attributes not explicitly exposed by the API, such
-- as additional attributes used for Buy on Google (formerly known as
-- Shopping Actions).
prorCustomAttributes :: Lens' Product [CustomAttribute]
prorCustomAttributes
  = lens _prorCustomAttributes
      (\ s a -> s{_prorCustomAttributes = a})
      . _Default
      . _Coerce

-- | Global Trade Item Number (GTIN) of the item.
prorGtin :: Lens' Product (Maybe Text)
prorGtin = lens _prorGtin (\ s a -> s{_prorGtin = a})

-- | Target age group of the item.
prorAgeGroup :: Lens' Product (Maybe Text)
prorAgeGroup
  = lens _prorAgeGroup (\ s a -> s{_prorAgeGroup = a})

-- | Title of an item for dynamic remarketing campaigns.
prorDisplayAdsTitle :: Lens' Product (Maybe Text)
prorDisplayAdsTitle
  = lens _prorDisplayAdsTitle
      (\ s a -> s{_prorDisplayAdsTitle = a})

-- | The transit time label of the product, used to group product in
-- account-level transit time tables.
prorTransitTimeLabel :: Lens' Product (Maybe Text)
prorTransitTimeLabel
  = lens _prorTransitTimeLabel
      (\ s a -> s{_prorTransitTimeLabel = a})

-- | The energy efficiency class as defined in EU directive 2010\/30\/EU.
prorMaxEnergyEfficiencyClass :: Lens' Product (Maybe Text)
prorMaxEnergyEfficiencyClass
  = lens _prorMaxEnergyEfficiencyClass
      (\ s a -> s{_prorMaxEnergyEfficiencyClass = a})

-- | Target gender of the item.
prorGender :: Lens' Product (Maybe Text)
prorGender
  = lens _prorGender (\ s a -> s{_prorGender = a})

-- | Date on which the item should expire, as specified upon insertion, in
-- ISO 8601 format. The actual expiration date in Google Shopping is
-- exposed in \`productstatuses\` as \`googleExpirationDate\` and might be
-- earlier if \`expirationDate\` is too far in the future.
prorExpirationDate :: Lens' Product (Maybe Text)
prorExpirationDate
  = lens _prorExpirationDate
      (\ s a -> s{_prorExpirationDate = a})

-- | Shared identifier for all variants of the same product.
prorItemGroupId :: Lens' Product (Maybe Text)
prorItemGroupId
  = lens _prorItemGroupId
      (\ s a -> s{_prorItemGroupId = a})

-- | Date range during which the item is on sale (see products data
-- specification ).
prorSalePriceEffectiveDate :: Lens' Product (Maybe Text)
prorSalePriceEffectiveDate
  = lens _prorSalePriceEffectiveDate
      (\ s a -> s{_prorSalePriceEffectiveDate = a})

-- | Custom label 2 for custom grouping of items in a Shopping campaign.
prorCustomLabel2 :: Lens' Product (Maybe Text)
prorCustomLabel2
  = lens _prorCustomLabel2
      (\ s a -> s{_prorCustomLabel2 = a})

-- | Google\'s category of the item (see [Google product
-- taxonomy](https:\/\/support.google.com\/merchants\/answer\/1705911)).
-- When querying products, this field will contain the user provided value.
-- There is currently no way to get back the auto assigned google product
-- categories through the API.
prorGoogleProductCategory :: Lens' Product (Maybe Text)
prorGoogleProductCategory
  = lens _prorGoogleProductCategory
      (\ s a -> s{_prorGoogleProductCategory = a})

-- | Shipping rules.
prorShipping :: Lens' Product [ProductShipping]
prorShipping
  = lens _prorShipping (\ s a -> s{_prorShipping = a})
      . _Default
      . _Coerce

-- | Weight of the item for shipping.
prorShippingWeight :: Lens' Product (Maybe ProductShippingWeight)
prorShippingWeight
  = lens _prorShippingWeight
      (\ s a -> s{_prorShippingWeight = a})

-- | The quantity of the product that is available for selling on Google.
-- Supported only for online products.
prorSellOnGoogleQuantity :: Lens' Product (Maybe Int64)
prorSellOnGoogleQuantity
  = lens _prorSellOnGoogleQuantity
      (\ s a -> s{_prorSellOnGoogleQuantity = a})
      . mapping _Coerce

-- | The tax category of the product, used to configure detailed tax nexus in
-- account-level tax settings.
prorTaxCategory :: Lens' Product (Maybe Text)
prorTaxCategory
  = lens _prorTaxCategory
      (\ s a -> s{_prorTaxCategory = a})

-- | Height of the item for shipping.
prorShippingHeight :: Lens' Product (Maybe ProductShippingDimension)
prorShippingHeight
  = lens _prorShippingHeight
      (\ s a -> s{_prorShippingHeight = a})

-- | The day a pre-ordered product becomes available for delivery, in ISO
-- 8601 format.
prorAvailabilityDate :: Lens' Product (Maybe Text)
prorAvailabilityDate
  = lens _prorAvailabilityDate
      (\ s a -> s{_prorAvailabilityDate = a})

-- | The source of the offer, i.e., how the offer was created. Acceptable
-- values are: - \"\`api\`\" - \"\`crawl\`\" - \"\`feed\`\"
prorSource :: Lens' Product (Maybe Text)
prorSource
  = lens _prorSource (\ s a -> s{_prorSource = a})

-- | Required. A unique identifier for the item. Leading and trailing
-- whitespaces are stripped and multiple whitespaces are replaced by a
-- single whitespace upon submission. Only valid unicode characters are
-- accepted. See the products feed specification for details. *Note:*
-- Content API methods that operate on products take the REST ID of the
-- product, *not* this identifier.
prorOfferId :: Lens' Product (Maybe Text)
prorOfferId
  = lens _prorOfferId (\ s a -> s{_prorOfferId = a})

-- | The REST ID of the product. Content API methods that operate on products
-- take this as their \`productId\` parameter. The REST ID for a product is
-- of the form channel:contentLanguage: targetCountry: offerId.
prorId :: Lens' Product (Maybe Text)
prorId = lens _prorId (\ s a -> s{_prorId = a})

-- | Price of the item.
prorPrice :: Lens' Product (Maybe Price)
prorPrice
  = lens _prorPrice (\ s a -> s{_prorPrice = a})

-- | The unique ID of a promotion.
prorPromotionIds :: Lens' Product [Text]
prorPromotionIds
  = lens _prorPromotionIds
      (\ s a -> s{_prorPromotionIds = a})
      . _Default
      . _Coerce

-- | The cut of the item. Recommended for apparel items.
prorSizeType :: Lens' Product (Maybe Text)
prorSizeType
  = lens _prorSizeType (\ s a -> s{_prorSizeType = a})

-- | URL for the mobile-optimized version of your item\'s landing page.
prorMobileLink :: Lens' Product (Maybe Text)
prorMobileLink
  = lens _prorMobileLink
      (\ s a -> s{_prorMobileLink = a})

-- | Number of periods (months or years) and amount of payment per period for
-- an item with an associated subscription contract.
prorSubscriptionCost :: Lens' Product (Maybe ProductSubscriptionCost)
prorSubscriptionCost
  = lens _prorSubscriptionCost
      (\ s a -> s{_prorSubscriptionCost = a})

-- | Title of the item.
prorTitle :: Lens' Product (Maybe Text)
prorTitle
  = lens _prorTitle (\ s a -> s{_prorTitle = a})

-- | Should be set to true if the item is targeted towards adults.
prorAdult :: Lens' Product (Maybe Bool)
prorAdult
  = lens _prorAdult (\ s a -> s{_prorAdult = a})

-- | Required. The two-letter ISO 639-1 language code for the item.
prorContentLanguage :: Lens' Product (Maybe Text)
prorContentLanguage
  = lens _prorContentLanguage
      (\ s a -> s{_prorContentLanguage = a})

-- | Similar to ads_grouping, but only works on CPC.
prorAdsLabels :: Lens' Product [Text]
prorAdsLabels
  = lens _prorAdsLabels
      (\ s a -> s{_prorAdsLabels = a})
      . _Default
      . _Coerce

-- | The energy efficiency class as defined in EU directive 2010\/30\/EU.
prorEnergyEfficiencyClass :: Lens' Product (Maybe Text)
prorEnergyEfficiencyClass
  = lens _prorEnergyEfficiencyClass
      (\ s a -> s{_prorEnergyEfficiencyClass = a})

-- | Advertiser-specified recommendations.
prorDisplayAdsSimilarIds :: Lens' Product [Text]
prorDisplayAdsSimilarIds
  = lens _prorDisplayAdsSimilarIds
      (\ s a -> s{_prorDisplayAdsSimilarIds = a})
      . _Default
      . _Coerce

-- | Manufacturer Part Number (MPN) of the item.
prorMpn :: Lens' Product (Maybe Text)
prorMpn = lens _prorMpn (\ s a -> s{_prorMpn = a})

-- | Condition or state of the item.
prorCondition :: Lens' Product (Maybe Text)
prorCondition
  = lens _prorCondition
      (\ s a -> s{_prorCondition = a})

-- | Size of the item. Only one value is allowed. For variants with different
-- sizes, insert a separate product for each size with the same
-- \`itemGroupId\` value (see size definition).
prorSizes :: Lens' Product [Text]
prorSizes
  = lens _prorSizes (\ s a -> s{_prorSizes = a}) .
      _Default
      . _Coerce

-- | Whether the item is a merchant-defined bundle. A bundle is a custom
-- grouping of different products sold by a merchant for a single price.
prorIsBundle :: Lens' Product (Maybe Bool)
prorIsBundle
  = lens _prorIsBundle (\ s a -> s{_prorIsBundle = a})

-- | Description of the item.
prorDescription :: Lens' Product (Maybe Text)
prorDescription
  = lens _prorDescription
      (\ s a -> s{_prorDescription = a})

-- | Custom label 4 for custom grouping of items in a Shopping campaign.
prorCustomLabel4 :: Lens' Product (Maybe Text)
prorCustomLabel4
  = lens _prorCustomLabel4
      (\ s a -> s{_prorCustomLabel4 = a})

-- | An identifier for an item for dynamic remarketing campaigns.
prorDisplayAdsId :: Lens' Product (Maybe Text)
prorDisplayAdsId
  = lens _prorDisplayAdsId
      (\ s a -> s{_prorDisplayAdsId = a})

-- | Technical specification or additional product details.
prorProductDetails :: Lens' Product [ProductProductDetail]
prorProductDetails
  = lens _prorProductDetails
      (\ s a -> s{_prorProductDetails = a})
      . _Default
      . _Coerce

-- | Used to group items in an arbitrary way. Only for CPA%, discouraged
-- otherwise.
prorAdsGrouping :: Lens' Product (Maybe Text)
prorAdsGrouping
  = lens _prorAdsGrouping
      (\ s a -> s{_prorAdsGrouping = a})

instance FromJSON Product where
        parseJSON
          = withObject "Product"
              (\ o ->
                 Product' <$>
                   (o .:? "displayAdsLink") <*> (o .:? "customLabel1")
                     <*> (o .:? "shippingWidth")
                     <*> (o .:? "imageLink")
                     <*> (o .:? "includedDestinations" .!= mempty)
                     <*> (o .:? "displayAdsValue")
                     <*> (o .:? "canonicalLink")
                     <*> (o .:? "loyaltyPoints")
                     <*> (o .:? "additionalImageLinks" .!= mempty)
                     <*> (o .:? "excludedDestinations" .!= mempty)
                     <*> (o .:? "color")
                     <*> (o .:? "customLabel0")
                     <*> (o .:? "kind")
                     <*> (o .:? "minHandlingTime")
                     <*> (o .:? "multipack")
                     <*> (o .:? "pattern")
                     <*> (o .:? "link")
                     <*> (o .:? "productHighlights" .!= mempty)
                     <*> (o .:? "productTypes" .!= mempty)
                     <*> (o .:? "sizeSystem")
                     <*> (o .:? "unitPricingBaseMeasure")
                     <*> (o .:? "taxes" .!= mempty)
                     <*> (o .:? "material")
                     <*> (o .:? "installment")
                     <*> (o .:? "channel")
                     <*> (o .:? "identifierExists")
                     <*> (o .:? "brand")
                     <*> (o .:? "unitPricingMeasure")
                     <*> (o .:? "shoppingAdsExcludedCountries" .!= mempty)
                     <*> (o .:? "salePrice")
                     <*> (o .:? "costOfGoodsSold")
                     <*> (o .:? "shippingLength")
                     <*> (o .:? "customLabel3")
                     <*> (o .:? "maxHandlingTime")
                     <*> (o .:? "availability")
                     <*> (o .:? "minEnergyEfficiencyClass")
                     <*> (o .:? "targetCountry")
                     <*> (o .:? "shippingLabel")
                     <*> (o .:? "adsRedirect")
                     <*> (o .:? "customAttributes" .!= mempty)
                     <*> (o .:? "gtin")
                     <*> (o .:? "ageGroup")
                     <*> (o .:? "displayAdsTitle")
                     <*> (o .:? "transitTimeLabel")
                     <*> (o .:? "maxEnergyEfficiencyClass")
                     <*> (o .:? "gender")
                     <*> (o .:? "expirationDate")
                     <*> (o .:? "itemGroupId")
                     <*> (o .:? "salePriceEffectiveDate")
                     <*> (o .:? "customLabel2")
                     <*> (o .:? "googleProductCategory")
                     <*> (o .:? "shipping" .!= mempty)
                     <*> (o .:? "shippingWeight")
                     <*> (o .:? "sellOnGoogleQuantity")
                     <*> (o .:? "taxCategory")
                     <*> (o .:? "shippingHeight")
                     <*> (o .:? "availabilityDate")
                     <*> (o .:? "source")
                     <*> (o .:? "offerId")
                     <*> (o .:? "id")
                     <*> (o .:? "price")
                     <*> (o .:? "promotionIds" .!= mempty)
                     <*> (o .:? "sizeType")
                     <*> (o .:? "mobileLink")
                     <*> (o .:? "subscriptionCost")
                     <*> (o .:? "title")
                     <*> (o .:? "adult")
                     <*> (o .:? "contentLanguage")
                     <*> (o .:? "adsLabels" .!= mempty)
                     <*> (o .:? "energyEfficiencyClass")
                     <*> (o .:? "displayAdsSimilarIds" .!= mempty)
                     <*> (o .:? "mpn")
                     <*> (o .:? "condition")
                     <*> (o .:? "sizes" .!= mempty)
                     <*> (o .:? "isBundle")
                     <*> (o .:? "description")
                     <*> (o .:? "customLabel4")
                     <*> (o .:? "displayAdsId")
                     <*> (o .:? "productDetails" .!= mempty)
                     <*> (o .:? "adsGrouping"))

instance ToJSON Product where
        toJSON Product'{..}
          = object
              (catMaybes
                 [("displayAdsLink" .=) <$> _prorDisplayAdsLink,
                  ("customLabel1" .=) <$> _prorCustomLabel1,
                  ("shippingWidth" .=) <$> _prorShippingWidth,
                  ("imageLink" .=) <$> _prorImageLink,
                  ("includedDestinations" .=) <$>
                    _prorIncludedDestinations,
                  ("displayAdsValue" .=) <$> _prorDisplayAdsValue,
                  ("canonicalLink" .=) <$> _prorCanonicalLink,
                  ("loyaltyPoints" .=) <$> _prorLoyaltyPoints,
                  ("additionalImageLinks" .=) <$>
                    _prorAdditionalImageLinks,
                  ("excludedDestinations" .=) <$>
                    _prorExcludedDestinations,
                  ("color" .=) <$> _prorColor,
                  ("customLabel0" .=) <$> _prorCustomLabel0,
                  ("kind" .=) <$> _prorKind,
                  ("minHandlingTime" .=) <$> _prorMinHandlingTime,
                  ("multipack" .=) <$> _prorMultipack,
                  ("pattern" .=) <$> _prorPattern,
                  ("link" .=) <$> _prorLink,
                  ("productHighlights" .=) <$> _prorProductHighlights,
                  ("productTypes" .=) <$> _prorProductTypes,
                  ("sizeSystem" .=) <$> _prorSizeSystem,
                  ("unitPricingBaseMeasure" .=) <$>
                    _prorUnitPricingBaseMeasure,
                  ("taxes" .=) <$> _prorTaxes,
                  ("material" .=) <$> _prorMaterial,
                  ("installment" .=) <$> _prorInstallment,
                  ("channel" .=) <$> _prorChannel,
                  ("identifierExists" .=) <$> _prorIdentifierExists,
                  ("brand" .=) <$> _prorBrand,
                  ("unitPricingMeasure" .=) <$>
                    _prorUnitPricingMeasure,
                  ("shoppingAdsExcludedCountries" .=) <$>
                    _prorShoppingAdsExcludedCountries,
                  ("salePrice" .=) <$> _prorSalePrice,
                  ("costOfGoodsSold" .=) <$> _prorCostOfGoodsSold,
                  ("shippingLength" .=) <$> _prorShippingLength,
                  ("customLabel3" .=) <$> _prorCustomLabel3,
                  ("maxHandlingTime" .=) <$> _prorMaxHandlingTime,
                  ("availability" .=) <$> _prorAvailability,
                  ("minEnergyEfficiencyClass" .=) <$>
                    _prorMinEnergyEfficiencyClass,
                  ("targetCountry" .=) <$> _prorTargetCountry,
                  ("shippingLabel" .=) <$> _prorShippingLabel,
                  ("adsRedirect" .=) <$> _prorAdsRedirect,
                  ("customAttributes" .=) <$> _prorCustomAttributes,
                  ("gtin" .=) <$> _prorGtin,
                  ("ageGroup" .=) <$> _prorAgeGroup,
                  ("displayAdsTitle" .=) <$> _prorDisplayAdsTitle,
                  ("transitTimeLabel" .=) <$> _prorTransitTimeLabel,
                  ("maxEnergyEfficiencyClass" .=) <$>
                    _prorMaxEnergyEfficiencyClass,
                  ("gender" .=) <$> _prorGender,
                  ("expirationDate" .=) <$> _prorExpirationDate,
                  ("itemGroupId" .=) <$> _prorItemGroupId,
                  ("salePriceEffectiveDate" .=) <$>
                    _prorSalePriceEffectiveDate,
                  ("customLabel2" .=) <$> _prorCustomLabel2,
                  ("googleProductCategory" .=) <$>
                    _prorGoogleProductCategory,
                  ("shipping" .=) <$> _prorShipping,
                  ("shippingWeight" .=) <$> _prorShippingWeight,
                  ("sellOnGoogleQuantity" .=) <$>
                    _prorSellOnGoogleQuantity,
                  ("taxCategory" .=) <$> _prorTaxCategory,
                  ("shippingHeight" .=) <$> _prorShippingHeight,
                  ("availabilityDate" .=) <$> _prorAvailabilityDate,
                  ("source" .=) <$> _prorSource,
                  ("offerId" .=) <$> _prorOfferId,
                  ("id" .=) <$> _prorId, ("price" .=) <$> _prorPrice,
                  ("promotionIds" .=) <$> _prorPromotionIds,
                  ("sizeType" .=) <$> _prorSizeType,
                  ("mobileLink" .=) <$> _prorMobileLink,
                  ("subscriptionCost" .=) <$> _prorSubscriptionCost,
                  ("title" .=) <$> _prorTitle,
                  ("adult" .=) <$> _prorAdult,
                  ("contentLanguage" .=) <$> _prorContentLanguage,
                  ("adsLabels" .=) <$> _prorAdsLabels,
                  ("energyEfficiencyClass" .=) <$>
                    _prorEnergyEfficiencyClass,
                  ("displayAdsSimilarIds" .=) <$>
                    _prorDisplayAdsSimilarIds,
                  ("mpn" .=) <$> _prorMpn,
                  ("condition" .=) <$> _prorCondition,
                  ("sizes" .=) <$> _prorSizes,
                  ("isBundle" .=) <$> _prorIsBundle,
                  ("description" .=) <$> _prorDescription,
                  ("customLabel4" .=) <$> _prorCustomLabel4,
                  ("displayAdsId" .=) <$> _prorDisplayAdsId,
                  ("productDetails" .=) <$> _prorProductDetails,
                  ("adsGrouping" .=) <$> _prorAdsGrouping])

-- | Settlement reports detail order-level and item-level credits and debits
-- between you and Google.
--
-- /See:/ 'settlementReport' smart constructor.
data SettlementReport =
  SettlementReport'
    { _srTransferDate :: !(Maybe Text)
    , _srKind :: !(Maybe Text)
    , _srEndDate :: !(Maybe Text)
    , _srStartDate :: !(Maybe Text)
    , _srTransferAmount :: !(Maybe Price)
    , _srPreviousBalance :: !(Maybe Price)
    , _srTransferIds :: !(Maybe [Text])
    , _srSettlementId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SettlementReport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srTransferDate'
--
-- * 'srKind'
--
-- * 'srEndDate'
--
-- * 'srStartDate'
--
-- * 'srTransferAmount'
--
-- * 'srPreviousBalance'
--
-- * 'srTransferIds'
--
-- * 'srSettlementId'
settlementReport
    :: SettlementReport
settlementReport =
  SettlementReport'
    { _srTransferDate = Nothing
    , _srKind = Nothing
    , _srEndDate = Nothing
    , _srStartDate = Nothing
    , _srTransferAmount = Nothing
    , _srPreviousBalance = Nothing
    , _srTransferIds = Nothing
    , _srSettlementId = Nothing
    }


-- | Date on which transfer for this payment was initiated by Google, in ISO
-- 8601 format.
srTransferDate :: Lens' SettlementReport (Maybe Text)
srTransferDate
  = lens _srTransferDate
      (\ s a -> s{_srTransferDate = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"\`content#settlementReport\`\"
srKind :: Lens' SettlementReport (Maybe Text)
srKind = lens _srKind (\ s a -> s{_srKind = a})

-- | The end date on which all transactions are included in the report, in
-- ISO 8601 format.
srEndDate :: Lens' SettlementReport (Maybe Text)
srEndDate
  = lens _srEndDate (\ s a -> s{_srEndDate = a})

-- | The start date on which all transactions are included in the report, in
-- ISO 8601 format.
srStartDate :: Lens' SettlementReport (Maybe Text)
srStartDate
  = lens _srStartDate (\ s a -> s{_srStartDate = a})

-- | The money due to the merchant.
srTransferAmount :: Lens' SettlementReport (Maybe Price)
srTransferAmount
  = lens _srTransferAmount
      (\ s a -> s{_srTransferAmount = a})

-- | The residual amount from the previous invoice. This is set only if the
-- previous invoices are not paid because of negative balance.
srPreviousBalance :: Lens' SettlementReport (Maybe Price)
srPreviousBalance
  = lens _srPreviousBalance
      (\ s a -> s{_srPreviousBalance = a})

-- | The list of bank identifiers used for the transfer. e.g. Trace ID for
-- Federal Automated Clearing House (ACH). This may also be known as the
-- Wire ID.
srTransferIds :: Lens' SettlementReport [Text]
srTransferIds
  = lens _srTransferIds
      (\ s a -> s{_srTransferIds = a})
      . _Default
      . _Coerce

-- | The ID of the settlement report.
srSettlementId :: Lens' SettlementReport (Maybe Text)
srSettlementId
  = lens _srSettlementId
      (\ s a -> s{_srSettlementId = a})

instance FromJSON SettlementReport where
        parseJSON
          = withObject "SettlementReport"
              (\ o ->
                 SettlementReport' <$>
                   (o .:? "transferDate") <*> (o .:? "kind") <*>
                     (o .:? "endDate")
                     <*> (o .:? "startDate")
                     <*> (o .:? "transferAmount")
                     <*> (o .:? "previousBalance")
                     <*> (o .:? "transferIds" .!= mempty)
                     <*> (o .:? "settlementId"))

instance ToJSON SettlementReport where
        toJSON SettlementReport'{..}
          = object
              (catMaybes
                 [("transferDate" .=) <$> _srTransferDate,
                  ("kind" .=) <$> _srKind,
                  ("endDate" .=) <$> _srEndDate,
                  ("startDate" .=) <$> _srStartDate,
                  ("transferAmount" .=) <$> _srTransferAmount,
                  ("previousBalance" .=) <$> _srPreviousBalance,
                  ("transferIds" .=) <$> _srTransferIds,
                  ("settlementId" .=) <$> _srSettlementId])

--
-- /See:/ 'liaSettingsCustomBatchRequestEntry' smart constructor.
data LiaSettingsCustomBatchRequestEntry =
  LiaSettingsCustomBatchRequestEntry'
    { _liaGmbEmail :: !(Maybe Text)
    , _liaContactEmail :: !(Maybe Text)
    , _liaMerchantId :: !(Maybe (Textual Word64))
    , _liaCountry :: !(Maybe Text)
    , _liaLiaSettings :: !(Maybe LiaSettings)
    , _liaAccountId :: !(Maybe (Textual Word64))
    , _liaMethod :: !(Maybe Text)
    , _liaContactName :: !(Maybe Text)
    , _liaPosExternalAccountId :: !(Maybe Text)
    , _liaPosDataProviderId :: !(Maybe (Textual Word64))
    , _liaBatchId :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiaSettingsCustomBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liaGmbEmail'
--
-- * 'liaContactEmail'
--
-- * 'liaMerchantId'
--
-- * 'liaCountry'
--
-- * 'liaLiaSettings'
--
-- * 'liaAccountId'
--
-- * 'liaMethod'
--
-- * 'liaContactName'
--
-- * 'liaPosExternalAccountId'
--
-- * 'liaPosDataProviderId'
--
-- * 'liaBatchId'
liaSettingsCustomBatchRequestEntry
    :: LiaSettingsCustomBatchRequestEntry
liaSettingsCustomBatchRequestEntry =
  LiaSettingsCustomBatchRequestEntry'
    { _liaGmbEmail = Nothing
    , _liaContactEmail = Nothing
    , _liaMerchantId = Nothing
    , _liaCountry = Nothing
    , _liaLiaSettings = Nothing
    , _liaAccountId = Nothing
    , _liaMethod = Nothing
    , _liaContactName = Nothing
    , _liaPosExternalAccountId = Nothing
    , _liaPosDataProviderId = Nothing
    , _liaBatchId = Nothing
    }


-- | The GMB account. Required only for RequestGmbAccess.
liaGmbEmail :: Lens' LiaSettingsCustomBatchRequestEntry (Maybe Text)
liaGmbEmail
  = lens _liaGmbEmail (\ s a -> s{_liaGmbEmail = a})

-- | Inventory validation contact email. Required only for
-- SetInventoryValidationContact.
liaContactEmail :: Lens' LiaSettingsCustomBatchRequestEntry (Maybe Text)
liaContactEmail
  = lens _liaContactEmail
      (\ s a -> s{_liaContactEmail = a})

-- | The ID of the managing account.
liaMerchantId :: Lens' LiaSettingsCustomBatchRequestEntry (Maybe Word64)
liaMerchantId
  = lens _liaMerchantId
      (\ s a -> s{_liaMerchantId = a})
      . mapping _Coerce

-- | The country code. Required only for RequestInventoryVerification.
liaCountry :: Lens' LiaSettingsCustomBatchRequestEntry (Maybe Text)
liaCountry
  = lens _liaCountry (\ s a -> s{_liaCountry = a})

-- | The account Lia settings to update. Only defined if the method is
-- \`update\`.
liaLiaSettings :: Lens' LiaSettingsCustomBatchRequestEntry (Maybe LiaSettings)
liaLiaSettings
  = lens _liaLiaSettings
      (\ s a -> s{_liaLiaSettings = a})

-- | The ID of the account for which to get\/update account LIA settings.
liaAccountId :: Lens' LiaSettingsCustomBatchRequestEntry (Maybe Word64)
liaAccountId
  = lens _liaAccountId (\ s a -> s{_liaAccountId = a})
      . mapping _Coerce

-- | The method of the batch entry. Acceptable values are: - \"\`get\`\" -
-- \"\`getAccessibleGmbAccounts\`\" - \"\`requestGmbAccess\`\" -
-- \"\`requestInventoryVerification\`\" -
-- \"\`setInventoryVerificationContact\`\" - \"\`update\`\"
liaMethod :: Lens' LiaSettingsCustomBatchRequestEntry (Maybe Text)
liaMethod
  = lens _liaMethod (\ s a -> s{_liaMethod = a})

-- | Inventory validation contact name. Required only for
-- SetInventoryValidationContact.
liaContactName :: Lens' LiaSettingsCustomBatchRequestEntry (Maybe Text)
liaContactName
  = lens _liaContactName
      (\ s a -> s{_liaContactName = a})

-- | The account ID by which this merchant is known to the POS provider.
liaPosExternalAccountId :: Lens' LiaSettingsCustomBatchRequestEntry (Maybe Text)
liaPosExternalAccountId
  = lens _liaPosExternalAccountId
      (\ s a -> s{_liaPosExternalAccountId = a})

-- | The ID of POS data provider. Required only for SetPosProvider.
liaPosDataProviderId :: Lens' LiaSettingsCustomBatchRequestEntry (Maybe Word64)
liaPosDataProviderId
  = lens _liaPosDataProviderId
      (\ s a -> s{_liaPosDataProviderId = a})
      . mapping _Coerce

-- | An entry ID, unique within the batch request.
liaBatchId :: Lens' LiaSettingsCustomBatchRequestEntry (Maybe Word32)
liaBatchId
  = lens _liaBatchId (\ s a -> s{_liaBatchId = a}) .
      mapping _Coerce

instance FromJSON LiaSettingsCustomBatchRequestEntry
         where
        parseJSON
          = withObject "LiaSettingsCustomBatchRequestEntry"
              (\ o ->
                 LiaSettingsCustomBatchRequestEntry' <$>
                   (o .:? "gmbEmail") <*> (o .:? "contactEmail") <*>
                     (o .:? "merchantId")
                     <*> (o .:? "country")
                     <*> (o .:? "liaSettings")
                     <*> (o .:? "accountId")
                     <*> (o .:? "method")
                     <*> (o .:? "contactName")
                     <*> (o .:? "posExternalAccountId")
                     <*> (o .:? "posDataProviderId")
                     <*> (o .:? "batchId"))

instance ToJSON LiaSettingsCustomBatchRequestEntry
         where
        toJSON LiaSettingsCustomBatchRequestEntry'{..}
          = object
              (catMaybes
                 [("gmbEmail" .=) <$> _liaGmbEmail,
                  ("contactEmail" .=) <$> _liaContactEmail,
                  ("merchantId" .=) <$> _liaMerchantId,
                  ("country" .=) <$> _liaCountry,
                  ("liaSettings" .=) <$> _liaLiaSettings,
                  ("accountId" .=) <$> _liaAccountId,
                  ("method" .=) <$> _liaMethod,
                  ("contactName" .=) <$> _liaContactName,
                  ("posExternalAccountId" .=) <$>
                    _liaPosExternalAccountId,
                  ("posDataProviderId" .=) <$> _liaPosDataProviderId,
                  ("batchId" .=) <$> _liaBatchId])

-- | A list of errors returned by a failed batch entry.
--
-- /See:/ 'errors' smart constructor.
data Errors =
  Errors'
    { _errCode :: !(Maybe (Textual Word32))
    , _errMessage :: !(Maybe Text)
    , _errErrors :: !(Maybe [Error'])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Errors' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'errCode'
--
-- * 'errMessage'
--
-- * 'errErrors'
errors
    :: Errors
errors =
  Errors' {_errCode = Nothing, _errMessage = Nothing, _errErrors = Nothing}


-- | The HTTP status of the first error in \`errors\`.
errCode :: Lens' Errors (Maybe Word32)
errCode
  = lens _errCode (\ s a -> s{_errCode = a}) .
      mapping _Coerce

-- | The message of the first error in \`errors\`.
errMessage :: Lens' Errors (Maybe Text)
errMessage
  = lens _errMessage (\ s a -> s{_errMessage = a})

-- | A list of errors.
errErrors :: Lens' Errors [Error']
errErrors
  = lens _errErrors (\ s a -> s{_errErrors = a}) .
      _Default
      . _Coerce

instance FromJSON Errors where
        parseJSON
          = withObject "Errors"
              (\ o ->
                 Errors' <$>
                   (o .:? "code") <*> (o .:? "message") <*>
                     (o .:? "errors" .!= mempty))

instance ToJSON Errors where
        toJSON Errors'{..}
          = object
              (catMaybes
                 [("code" .=) <$> _errCode,
                  ("message" .=) <$> _errMessage,
                  ("errors" .=) <$> _errErrors])

--
-- /See:/ 'liaInventorySettings' smart constructor.
data LiaInventorySettings =
  LiaInventorySettings'
    { _lisInventoryVerificationContactName :: !(Maybe Text)
    , _lisStatus :: !(Maybe Text)
    , _lisInventoryVerificationContactEmail :: !(Maybe Text)
    , _lisInventoryVerificationContactStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiaInventorySettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lisInventoryVerificationContactName'
--
-- * 'lisStatus'
--
-- * 'lisInventoryVerificationContactEmail'
--
-- * 'lisInventoryVerificationContactStatus'
liaInventorySettings
    :: LiaInventorySettings
liaInventorySettings =
  LiaInventorySettings'
    { _lisInventoryVerificationContactName = Nothing
    , _lisStatus = Nothing
    , _lisInventoryVerificationContactEmail = Nothing
    , _lisInventoryVerificationContactStatus = Nothing
    }


-- | The name of the contact for the inventory verification process.
lisInventoryVerificationContactName :: Lens' LiaInventorySettings (Maybe Text)
lisInventoryVerificationContactName
  = lens _lisInventoryVerificationContactName
      (\ s a ->
         s{_lisInventoryVerificationContactName = a})

-- | The status of the inventory verification process. Acceptable values are:
-- - \"\`active\`\" - \"\`inactive\`\" - \"\`pending\`\"
lisStatus :: Lens' LiaInventorySettings (Maybe Text)
lisStatus
  = lens _lisStatus (\ s a -> s{_lisStatus = a})

-- | The email of the contact for the inventory verification process.
lisInventoryVerificationContactEmail :: Lens' LiaInventorySettings (Maybe Text)
lisInventoryVerificationContactEmail
  = lens _lisInventoryVerificationContactEmail
      (\ s a ->
         s{_lisInventoryVerificationContactEmail = a})

-- | The status of the verification contact. Acceptable values are: -
-- \"\`active\`\" - \"\`inactive\`\" - \"\`pending\`\"
lisInventoryVerificationContactStatus :: Lens' LiaInventorySettings (Maybe Text)
lisInventoryVerificationContactStatus
  = lens _lisInventoryVerificationContactStatus
      (\ s a ->
         s{_lisInventoryVerificationContactStatus = a})

instance FromJSON LiaInventorySettings where
        parseJSON
          = withObject "LiaInventorySettings"
              (\ o ->
                 LiaInventorySettings' <$>
                   (o .:? "inventoryVerificationContactName") <*>
                     (o .:? "status")
                     <*> (o .:? "inventoryVerificationContactEmail")
                     <*> (o .:? "inventoryVerificationContactStatus"))

instance ToJSON LiaInventorySettings where
        toJSON LiaInventorySettings'{..}
          = object
              (catMaybes
                 [("inventoryVerificationContactName" .=) <$>
                    _lisInventoryVerificationContactName,
                  ("status" .=) <$> _lisStatus,
                  ("inventoryVerificationContactEmail" .=) <$>
                    _lisInventoryVerificationContactEmail,
                  ("inventoryVerificationContactStatus" .=) <$>
                    _lisInventoryVerificationContactStatus])

-- | A list of geotargets that defines the region area.
--
-- /See:/ 'regionGeoTargetArea' smart constructor.
newtype RegionGeoTargetArea =
  RegionGeoTargetArea'
    { _rgtaGeotargetCriteriaIds :: Maybe [Textual Int64]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionGeoTargetArea' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgtaGeotargetCriteriaIds'
regionGeoTargetArea
    :: RegionGeoTargetArea
regionGeoTargetArea = RegionGeoTargetArea' {_rgtaGeotargetCriteriaIds = Nothing}


-- | Required. A non-empty list of [location
-- IDs](https:\/\/developers.google.com\/adwords\/api\/docs\/appendix\/geotargeting).
-- They must all be of the same location type (e.g., state).
rgtaGeotargetCriteriaIds :: Lens' RegionGeoTargetArea [Int64]
rgtaGeotargetCriteriaIds
  = lens _rgtaGeotargetCriteriaIds
      (\ s a -> s{_rgtaGeotargetCriteriaIds = a})
      . _Default
      . _Coerce

instance FromJSON RegionGeoTargetArea where
        parseJSON
          = withObject "RegionGeoTargetArea"
              (\ o ->
                 RegionGeoTargetArea' <$>
                   (o .:? "geotargetCriteriaIds" .!= mempty))

instance ToJSON RegionGeoTargetArea where
        toJSON RegionGeoTargetArea'{..}
          = object
              (catMaybes
                 [("geotargetCriteriaIds" .=) <$>
                    _rgtaGeotargetCriteriaIds])

-- | A batch entry encoding a single non-batch accountstatuses response.
--
-- /See:/ 'accountstatusesCustomBatchResponseEntry' smart constructor.
data AccountstatusesCustomBatchResponseEntry =
  AccountstatusesCustomBatchResponseEntry'
    { _aaAccountStatus :: !(Maybe AccountStatus)
    , _aaErrors :: !(Maybe Errors)
    , _aaBatchId :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountstatusesCustomBatchResponseEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaAccountStatus'
--
-- * 'aaErrors'
--
-- * 'aaBatchId'
accountstatusesCustomBatchResponseEntry
    :: AccountstatusesCustomBatchResponseEntry
accountstatusesCustomBatchResponseEntry =
  AccountstatusesCustomBatchResponseEntry'
    {_aaAccountStatus = Nothing, _aaErrors = Nothing, _aaBatchId = Nothing}


-- | The requested account status. Defined if and only if the request was
-- successful.
aaAccountStatus :: Lens' AccountstatusesCustomBatchResponseEntry (Maybe AccountStatus)
aaAccountStatus
  = lens _aaAccountStatus
      (\ s a -> s{_aaAccountStatus = a})

-- | A list of errors defined if and only if the request failed.
aaErrors :: Lens' AccountstatusesCustomBatchResponseEntry (Maybe Errors)
aaErrors = lens _aaErrors (\ s a -> s{_aaErrors = a})

-- | The ID of the request entry this entry responds to.
aaBatchId :: Lens' AccountstatusesCustomBatchResponseEntry (Maybe Word32)
aaBatchId
  = lens _aaBatchId (\ s a -> s{_aaBatchId = a}) .
      mapping _Coerce

instance FromJSON
           AccountstatusesCustomBatchResponseEntry
         where
        parseJSON
          = withObject
              "AccountstatusesCustomBatchResponseEntry"
              (\ o ->
                 AccountstatusesCustomBatchResponseEntry' <$>
                   (o .:? "accountStatus") <*> (o .:? "errors") <*>
                     (o .:? "batchId"))

instance ToJSON
           AccountstatusesCustomBatchResponseEntry
         where
        toJSON AccountstatusesCustomBatchResponseEntry'{..}
          = object
              (catMaybes
                 [("accountStatus" .=) <$> _aaAccountStatus,
                  ("errors" .=) <$> _aaErrors,
                  ("batchId" .=) <$> _aaBatchId])

--
-- /See:/ 'ordersCancelLineItemResponse' smart constructor.
data OrdersCancelLineItemResponse =
  OrdersCancelLineItemResponse'
    { _oclirKind :: !(Maybe Text)
    , _oclirExecutionStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersCancelLineItemResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oclirKind'
--
-- * 'oclirExecutionStatus'
ordersCancelLineItemResponse
    :: OrdersCancelLineItemResponse
ordersCancelLineItemResponse =
  OrdersCancelLineItemResponse'
    {_oclirKind = Nothing, _oclirExecutionStatus = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersCancelLineItemResponse\".
oclirKind :: Lens' OrdersCancelLineItemResponse (Maybe Text)
oclirKind
  = lens _oclirKind (\ s a -> s{_oclirKind = a})

-- | The status of the execution. Acceptable values are: - \"\`duplicate\`\"
-- - \"\`executed\`\"
oclirExecutionStatus :: Lens' OrdersCancelLineItemResponse (Maybe Text)
oclirExecutionStatus
  = lens _oclirExecutionStatus
      (\ s a -> s{_oclirExecutionStatus = a})

instance FromJSON OrdersCancelLineItemResponse where
        parseJSON
          = withObject "OrdersCancelLineItemResponse"
              (\ o ->
                 OrdersCancelLineItemResponse' <$>
                   (o .:? "kind") <*> (o .:? "executionStatus"))

instance ToJSON OrdersCancelLineItemResponse where
        toJSON OrdersCancelLineItemResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _oclirKind,
                  ("executionStatus" .=) <$> _oclirExecutionStatus])

--
-- /See:/ 'holidayCutoff' smart constructor.
data HolidayCutoff =
  HolidayCutoff'
    { _hcDeadlineHour :: !(Maybe (Textual Word32))
    , _hcDeadlineTimezone :: !(Maybe Text)
    , _hcVisibleFromDate :: !(Maybe Text)
    , _hcHolidayId :: !(Maybe Text)
    , _hcDeadlineDate :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HolidayCutoff' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hcDeadlineHour'
--
-- * 'hcDeadlineTimezone'
--
-- * 'hcVisibleFromDate'
--
-- * 'hcHolidayId'
--
-- * 'hcDeadlineDate'
holidayCutoff
    :: HolidayCutoff
holidayCutoff =
  HolidayCutoff'
    { _hcDeadlineHour = Nothing
    , _hcDeadlineTimezone = Nothing
    , _hcVisibleFromDate = Nothing
    , _hcHolidayId = Nothing
    , _hcDeadlineDate = Nothing
    }


-- | Hour of the day on the deadline date until which the order has to be
-- placed to qualify for the delivery guarantee. Possible values are: 0
-- (midnight), 1, ..., 12 (noon), 13, ..., 23. Required.
hcDeadlineHour :: Lens' HolidayCutoff (Maybe Word32)
hcDeadlineHour
  = lens _hcDeadlineHour
      (\ s a -> s{_hcDeadlineHour = a})
      . mapping _Coerce

-- | Timezone identifier for the deadline hour. A list of identifiers can be
-- found in the AdWords API documentation. E.g. \"Europe\/Zurich\".
-- Required.
hcDeadlineTimezone :: Lens' HolidayCutoff (Maybe Text)
hcDeadlineTimezone
  = lens _hcDeadlineTimezone
      (\ s a -> s{_hcDeadlineTimezone = a})

-- | Date on which the deadline will become visible to consumers in ISO 8601
-- format. E.g. \"2016-10-31\" for 31st October 2016. Required.
hcVisibleFromDate :: Lens' HolidayCutoff (Maybe Text)
hcVisibleFromDate
  = lens _hcVisibleFromDate
      (\ s a -> s{_hcVisibleFromDate = a})

-- | Unique identifier for the holiday. Required.
hcHolidayId :: Lens' HolidayCutoff (Maybe Text)
hcHolidayId
  = lens _hcHolidayId (\ s a -> s{_hcHolidayId = a})

-- | Date of the order deadline, in ISO 8601 format. E.g. \"2016-11-29\" for
-- 29th November 2016. Required.
hcDeadlineDate :: Lens' HolidayCutoff (Maybe Text)
hcDeadlineDate
  = lens _hcDeadlineDate
      (\ s a -> s{_hcDeadlineDate = a})

instance FromJSON HolidayCutoff where
        parseJSON
          = withObject "HolidayCutoff"
              (\ o ->
                 HolidayCutoff' <$>
                   (o .:? "deadlineHour") <*> (o .:? "deadlineTimezone")
                     <*> (o .:? "visibleFromDate")
                     <*> (o .:? "holidayId")
                     <*> (o .:? "deadlineDate"))

instance ToJSON HolidayCutoff where
        toJSON HolidayCutoff'{..}
          = object
              (catMaybes
                 [("deadlineHour" .=) <$> _hcDeadlineHour,
                  ("deadlineTimezone" .=) <$> _hcDeadlineTimezone,
                  ("visibleFromDate" .=) <$> _hcVisibleFromDate,
                  ("holidayId" .=) <$> _hcHolidayId,
                  ("deadlineDate" .=) <$> _hcDeadlineDate])

--
-- /See:/ 'testOrderLineItem' smart constructor.
data TestOrderLineItem =
  TestOrderLineItem'
    { _toliQuantityOrdered :: !(Maybe (Textual Word32))
    , _toliReturnInfo :: !(Maybe OrderLineItemReturnInfo)
    , _toliShippingDetails :: !(Maybe OrderLineItemShippingDetails)
    , _toliProduct :: !(Maybe TestOrderLineItemProduct)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestOrderLineItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'toliQuantityOrdered'
--
-- * 'toliReturnInfo'
--
-- * 'toliShippingDetails'
--
-- * 'toliProduct'
testOrderLineItem
    :: TestOrderLineItem
testOrderLineItem =
  TestOrderLineItem'
    { _toliQuantityOrdered = Nothing
    , _toliReturnInfo = Nothing
    , _toliShippingDetails = Nothing
    , _toliProduct = Nothing
    }


-- | Required. Number of items ordered.
toliQuantityOrdered :: Lens' TestOrderLineItem (Maybe Word32)
toliQuantityOrdered
  = lens _toliQuantityOrdered
      (\ s a -> s{_toliQuantityOrdered = a})
      . mapping _Coerce

-- | Required. Details of the return policy for the line item.
toliReturnInfo :: Lens' TestOrderLineItem (Maybe OrderLineItemReturnInfo)
toliReturnInfo
  = lens _toliReturnInfo
      (\ s a -> s{_toliReturnInfo = a})

-- | Required. Details of the requested shipping for the line item.
toliShippingDetails :: Lens' TestOrderLineItem (Maybe OrderLineItemShippingDetails)
toliShippingDetails
  = lens _toliShippingDetails
      (\ s a -> s{_toliShippingDetails = a})

-- | Required. Product data from the time of the order placement.
toliProduct :: Lens' TestOrderLineItem (Maybe TestOrderLineItemProduct)
toliProduct
  = lens _toliProduct (\ s a -> s{_toliProduct = a})

instance FromJSON TestOrderLineItem where
        parseJSON
          = withObject "TestOrderLineItem"
              (\ o ->
                 TestOrderLineItem' <$>
                   (o .:? "quantityOrdered") <*> (o .:? "returnInfo")
                     <*> (o .:? "shippingDetails")
                     <*> (o .:? "product"))

instance ToJSON TestOrderLineItem where
        toJSON TestOrderLineItem'{..}
          = object
              (catMaybes
                 [("quantityOrdered" .=) <$> _toliQuantityOrdered,
                  ("returnInfo" .=) <$> _toliReturnInfo,
                  ("shippingDetails" .=) <$> _toliShippingDetails,
                  ("product" .=) <$> _toliProduct])

-- | A list of store code sets sharing the same minimum order value. At least
-- two sets are required and the last one must be empty, which signifies
-- \'MOV for all other stores\'. Each store code can only appear once
-- across all the sets. All prices within a service must have the same
-- currency.
--
-- /See:/ 'minimumOrderValueTableStoreCodeSetWithMov' smart constructor.
data MinimumOrderValueTableStoreCodeSetWithMov =
  MinimumOrderValueTableStoreCodeSetWithMov'
    { _movtscswmValue :: !(Maybe Price)
    , _movtscswmStoreCodes :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MinimumOrderValueTableStoreCodeSetWithMov' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'movtscswmValue'
--
-- * 'movtscswmStoreCodes'
minimumOrderValueTableStoreCodeSetWithMov
    :: MinimumOrderValueTableStoreCodeSetWithMov
minimumOrderValueTableStoreCodeSetWithMov =
  MinimumOrderValueTableStoreCodeSetWithMov'
    {_movtscswmValue = Nothing, _movtscswmStoreCodes = Nothing}


-- | The minimum order value for the given stores.
movtscswmValue :: Lens' MinimumOrderValueTableStoreCodeSetWithMov (Maybe Price)
movtscswmValue
  = lens _movtscswmValue
      (\ s a -> s{_movtscswmValue = a})

-- | A list of unique store codes or empty for the catch all.
movtscswmStoreCodes :: Lens' MinimumOrderValueTableStoreCodeSetWithMov [Text]
movtscswmStoreCodes
  = lens _movtscswmStoreCodes
      (\ s a -> s{_movtscswmStoreCodes = a})
      . _Default
      . _Coerce

instance FromJSON
           MinimumOrderValueTableStoreCodeSetWithMov
         where
        parseJSON
          = withObject
              "MinimumOrderValueTableStoreCodeSetWithMov"
              (\ o ->
                 MinimumOrderValueTableStoreCodeSetWithMov' <$>
                   (o .:? "value") <*> (o .:? "storeCodes" .!= mempty))

instance ToJSON
           MinimumOrderValueTableStoreCodeSetWithMov
         where
        toJSON MinimumOrderValueTableStoreCodeSetWithMov'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _movtscswmValue,
                  ("storeCodes" .=) <$> _movtscswmStoreCodes])

-- | A batch entry encoding a single non-batch productstatuses request.
--
-- /See:/ 'productstatusesCustomBatchRequestEntry' smart constructor.
data ProductstatusesCustomBatchRequestEntry =
  ProductstatusesCustomBatchRequestEntry'
    { _p1MerchantId :: !(Maybe (Textual Word64))
    , _p1Destinations :: !(Maybe [Text])
    , _p1Method :: !(Maybe Text)
    , _p1IncludeAttributes :: !(Maybe Bool)
    , _p1ProductId :: !(Maybe Text)
    , _p1BatchId :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductstatusesCustomBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'p1MerchantId'
--
-- * 'p1Destinations'
--
-- * 'p1Method'
--
-- * 'p1IncludeAttributes'
--
-- * 'p1ProductId'
--
-- * 'p1BatchId'
productstatusesCustomBatchRequestEntry
    :: ProductstatusesCustomBatchRequestEntry
productstatusesCustomBatchRequestEntry =
  ProductstatusesCustomBatchRequestEntry'
    { _p1MerchantId = Nothing
    , _p1Destinations = Nothing
    , _p1Method = Nothing
    , _p1IncludeAttributes = Nothing
    , _p1ProductId = Nothing
    , _p1BatchId = Nothing
    }


-- | The ID of the managing account.
p1MerchantId :: Lens' ProductstatusesCustomBatchRequestEntry (Maybe Word64)
p1MerchantId
  = lens _p1MerchantId (\ s a -> s{_p1MerchantId = a})
      . mapping _Coerce

-- | If set, only issues for the specified destinations are returned,
-- otherwise only issues for the Shopping destination.
p1Destinations :: Lens' ProductstatusesCustomBatchRequestEntry [Text]
p1Destinations
  = lens _p1Destinations
      (\ s a -> s{_p1Destinations = a})
      . _Default
      . _Coerce

-- | The method of the batch entry. Acceptable values are: - \"\`get\`\"
p1Method :: Lens' ProductstatusesCustomBatchRequestEntry (Maybe Text)
p1Method = lens _p1Method (\ s a -> s{_p1Method = a})

p1IncludeAttributes :: Lens' ProductstatusesCustomBatchRequestEntry (Maybe Bool)
p1IncludeAttributes
  = lens _p1IncludeAttributes
      (\ s a -> s{_p1IncludeAttributes = a})

-- | The ID of the product whose status to get.
p1ProductId :: Lens' ProductstatusesCustomBatchRequestEntry (Maybe Text)
p1ProductId
  = lens _p1ProductId (\ s a -> s{_p1ProductId = a})

-- | An entry ID, unique within the batch request.
p1BatchId :: Lens' ProductstatusesCustomBatchRequestEntry (Maybe Word32)
p1BatchId
  = lens _p1BatchId (\ s a -> s{_p1BatchId = a}) .
      mapping _Coerce

instance FromJSON
           ProductstatusesCustomBatchRequestEntry
         where
        parseJSON
          = withObject "ProductstatusesCustomBatchRequestEntry"
              (\ o ->
                 ProductstatusesCustomBatchRequestEntry' <$>
                   (o .:? "merchantId") <*>
                     (o .:? "destinations" .!= mempty)
                     <*> (o .:? "method")
                     <*> (o .:? "includeAttributes")
                     <*> (o .:? "productId")
                     <*> (o .:? "batchId"))

instance ToJSON
           ProductstatusesCustomBatchRequestEntry
         where
        toJSON ProductstatusesCustomBatchRequestEntry'{..}
          = object
              (catMaybes
                 [("merchantId" .=) <$> _p1MerchantId,
                  ("destinations" .=) <$> _p1Destinations,
                  ("method" .=) <$> _p1Method,
                  ("includeAttributes" .=) <$> _p1IncludeAttributes,
                  ("productId" .=) <$> _p1ProductId,
                  ("batchId" .=) <$> _p1BatchId])

-- | Represents a time zone from the [IANA Time Zone
-- Database](https:\/\/www.iana.org\/time-zones).
--
-- /See:/ 'timeZone' smart constructor.
data TimeZone =
  TimeZone'
    { _tzVersion :: !(Maybe Text)
    , _tzId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TimeZone' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tzVersion'
--
-- * 'tzId'
timeZone
    :: TimeZone
timeZone = TimeZone' {_tzVersion = Nothing, _tzId = Nothing}


-- | Optional. IANA Time Zone Database version number, e.g. \"2019a\".
tzVersion :: Lens' TimeZone (Maybe Text)
tzVersion
  = lens _tzVersion (\ s a -> s{_tzVersion = a})

-- | IANA Time Zone Database time zone, e.g. \"America\/New_York\".
tzId :: Lens' TimeZone (Maybe Text)
tzId = lens _tzId (\ s a -> s{_tzId = a})

instance FromJSON TimeZone where
        parseJSON
          = withObject "TimeZone"
              (\ o ->
                 TimeZone' <$> (o .:? "version") <*> (o .:? "id"))

instance ToJSON TimeZone where
        toJSON TimeZone'{..}
          = object
              (catMaybes
                 [("version" .=) <$> _tzVersion, ("id" .=) <$> _tzId])

--
-- /See:/ 'returnpolicyListResponse' smart constructor.
data ReturnpolicyListResponse =
  ReturnpolicyListResponse'
    { _rlrlKind :: !(Maybe Text)
    , _rlrlResources :: !(Maybe [ReturnPolicy])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReturnpolicyListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlrlKind'
--
-- * 'rlrlResources'
returnpolicyListResponse
    :: ReturnpolicyListResponse
returnpolicyListResponse =
  ReturnpolicyListResponse' {_rlrlKind = Nothing, _rlrlResources = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#returnpolicyListResponse\".
rlrlKind :: Lens' ReturnpolicyListResponse (Maybe Text)
rlrlKind = lens _rlrlKind (\ s a -> s{_rlrlKind = a})

rlrlResources :: Lens' ReturnpolicyListResponse [ReturnPolicy]
rlrlResources
  = lens _rlrlResources
      (\ s a -> s{_rlrlResources = a})
      . _Default
      . _Coerce

instance FromJSON ReturnpolicyListResponse where
        parseJSON
          = withObject "ReturnpolicyListResponse"
              (\ o ->
                 ReturnpolicyListResponse' <$>
                   (o .:? "kind") <*> (o .:? "resources" .!= mempty))

instance ToJSON ReturnpolicyListResponse where
        toJSON ReturnpolicyListResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _rlrlKind,
                  ("resources" .=) <$> _rlrlResources])

--
-- /See:/ 'shippingSettingsCustomBatchResponse' smart constructor.
data ShippingSettingsCustomBatchResponse =
  ShippingSettingsCustomBatchResponse'
    { _shiEntries :: !(Maybe [ShippingSettingsCustomBatchResponseEntry])
    , _shiKind :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ShippingSettingsCustomBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'shiEntries'
--
-- * 'shiKind'
shippingSettingsCustomBatchResponse
    :: ShippingSettingsCustomBatchResponse
shippingSettingsCustomBatchResponse =
  ShippingSettingsCustomBatchResponse'
    {_shiEntries = Nothing, _shiKind = Nothing}


-- | The result of the execution of the batch requests.
shiEntries :: Lens' ShippingSettingsCustomBatchResponse [ShippingSettingsCustomBatchResponseEntry]
shiEntries
  = lens _shiEntries (\ s a -> s{_shiEntries = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#shippingsettingsCustomBatchResponse\".
shiKind :: Lens' ShippingSettingsCustomBatchResponse (Maybe Text)
shiKind = lens _shiKind (\ s a -> s{_shiKind = a})

instance FromJSON ShippingSettingsCustomBatchResponse
         where
        parseJSON
          = withObject "ShippingSettingsCustomBatchResponse"
              (\ o ->
                 ShippingSettingsCustomBatchResponse' <$>
                   (o .:? "entries" .!= mempty) <*> (o .:? "kind"))

instance ToJSON ShippingSettingsCustomBatchResponse
         where
        toJSON ShippingSettingsCustomBatchResponse'{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _shiEntries,
                  ("kind" .=) <$> _shiKind])

--
-- /See:/ 'ordersReturnRefundLineItemRequest' smart constructor.
data OrdersReturnRefundLineItemRequest =
  OrdersReturnRefundLineItemRequest'
    { _orrlirrQuantity :: !(Maybe (Textual Word32))
    , _orrlirrLineItemId :: !(Maybe Text)
    , _orrlirrReason :: !(Maybe Text)
    , _orrlirrOperationId :: !(Maybe Text)
    , _orrlirrProductId :: !(Maybe Text)
    , _orrlirrTaxAmount :: !(Maybe Price)
    , _orrlirrPriceAmount :: !(Maybe Price)
    , _orrlirrReasonText :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersReturnRefundLineItemRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orrlirrQuantity'
--
-- * 'orrlirrLineItemId'
--
-- * 'orrlirrReason'
--
-- * 'orrlirrOperationId'
--
-- * 'orrlirrProductId'
--
-- * 'orrlirrTaxAmount'
--
-- * 'orrlirrPriceAmount'
--
-- * 'orrlirrReasonText'
ordersReturnRefundLineItemRequest
    :: OrdersReturnRefundLineItemRequest
ordersReturnRefundLineItemRequest =
  OrdersReturnRefundLineItemRequest'
    { _orrlirrQuantity = Nothing
    , _orrlirrLineItemId = Nothing
    , _orrlirrReason = Nothing
    , _orrlirrOperationId = Nothing
    , _orrlirrProductId = Nothing
    , _orrlirrTaxAmount = Nothing
    , _orrlirrPriceAmount = Nothing
    , _orrlirrReasonText = Nothing
    }


-- | The quantity to return and refund. Quantity is required.
orrlirrQuantity :: Lens' OrdersReturnRefundLineItemRequest (Maybe Word32)
orrlirrQuantity
  = lens _orrlirrQuantity
      (\ s a -> s{_orrlirrQuantity = a})
      . mapping _Coerce

-- | The ID of the line item to return. Either lineItemId or productId is
-- required.
orrlirrLineItemId :: Lens' OrdersReturnRefundLineItemRequest (Maybe Text)
orrlirrLineItemId
  = lens _orrlirrLineItemId
      (\ s a -> s{_orrlirrLineItemId = a})

-- | The reason for the return. Acceptable values are: -
-- \"\`customerDiscretionaryReturn\`\" -
-- \"\`customerInitiatedMerchantCancel\`\" - \"\`deliveredTooLate\`\" -
-- \"\`expiredItem\`\" - \"\`invalidCoupon\`\" -
-- \"\`malformedShippingAddress\`\" - \"\`other\`\" -
-- \"\`productArrivedDamaged\`\" - \"\`productNotAsDescribed\`\" -
-- \"\`qualityNotAsExpected\`\" - \"\`undeliverableShippingAddress\`\" -
-- \"\`unsupportedPoBoxAddress\`\" - \"\`wrongProductShipped\`\"
orrlirrReason :: Lens' OrdersReturnRefundLineItemRequest (Maybe Text)
orrlirrReason
  = lens _orrlirrReason
      (\ s a -> s{_orrlirrReason = a})

-- | The ID of the operation. Unique across all operations for a given order.
orrlirrOperationId :: Lens' OrdersReturnRefundLineItemRequest (Maybe Text)
orrlirrOperationId
  = lens _orrlirrOperationId
      (\ s a -> s{_orrlirrOperationId = a})

-- | The ID of the product to return. This is the REST ID used in the
-- products service. Either lineItemId or productId is required.
orrlirrProductId :: Lens' OrdersReturnRefundLineItemRequest (Maybe Text)
orrlirrProductId
  = lens _orrlirrProductId
      (\ s a -> s{_orrlirrProductId = a})

-- | The amount of tax to be refunded. Optional, but if filled, then
-- priceAmount must be set. Calculated automatically if not provided.
orrlirrTaxAmount :: Lens' OrdersReturnRefundLineItemRequest (Maybe Price)
orrlirrTaxAmount
  = lens _orrlirrTaxAmount
      (\ s a -> s{_orrlirrTaxAmount = a})

-- | The amount to be refunded. This may be pre-tax or post-tax depending on
-- the location of the order. If omitted, refundless return is assumed.
orrlirrPriceAmount :: Lens' OrdersReturnRefundLineItemRequest (Maybe Price)
orrlirrPriceAmount
  = lens _orrlirrPriceAmount
      (\ s a -> s{_orrlirrPriceAmount = a})

-- | The explanation of the reason.
orrlirrReasonText :: Lens' OrdersReturnRefundLineItemRequest (Maybe Text)
orrlirrReasonText
  = lens _orrlirrReasonText
      (\ s a -> s{_orrlirrReasonText = a})

instance FromJSON OrdersReturnRefundLineItemRequest
         where
        parseJSON
          = withObject "OrdersReturnRefundLineItemRequest"
              (\ o ->
                 OrdersReturnRefundLineItemRequest' <$>
                   (o .:? "quantity") <*> (o .:? "lineItemId") <*>
                     (o .:? "reason")
                     <*> (o .:? "operationId")
                     <*> (o .:? "productId")
                     <*> (o .:? "taxAmount")
                     <*> (o .:? "priceAmount")
                     <*> (o .:? "reasonText"))

instance ToJSON OrdersReturnRefundLineItemRequest
         where
        toJSON OrdersReturnRefundLineItemRequest'{..}
          = object
              (catMaybes
                 [("quantity" .=) <$> _orrlirrQuantity,
                  ("lineItemId" .=) <$> _orrlirrLineItemId,
                  ("reason" .=) <$> _orrlirrReason,
                  ("operationId" .=) <$> _orrlirrOperationId,
                  ("productId" .=) <$> _orrlirrProductId,
                  ("taxAmount" .=) <$> _orrlirrTaxAmount,
                  ("priceAmount" .=) <$> _orrlirrPriceAmount,
                  ("reasonText" .=) <$> _orrlirrReasonText])

--
-- /See:/ 'monetaryAmount' smart constructor.
data MonetaryAmount =
  MonetaryAmount'
    { _maTaxAmount :: !(Maybe Price)
    , _maPriceAmount :: !(Maybe Price)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MonetaryAmount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'maTaxAmount'
--
-- * 'maPriceAmount'
monetaryAmount
    :: MonetaryAmount
monetaryAmount =
  MonetaryAmount' {_maTaxAmount = Nothing, _maPriceAmount = Nothing}


-- | Tax value, present only for countries where price attribute excludes tax
-- (e.g. US). No tax is referenced as 0 value with the corresponding
-- \`currency\`.
maTaxAmount :: Lens' MonetaryAmount (Maybe Price)
maTaxAmount
  = lens _maTaxAmount (\ s a -> s{_maTaxAmount = a})

-- | The pre-tax or post-tax price depends on the location of the order. -
-- For countries (e.g. US) where price attribute excludes tax, this field
-- corresponds to the pre-tax value. - For coutries (e.g. France) where
-- price attribute includes tax, this field corresponds to the post-tax
-- value .
maPriceAmount :: Lens' MonetaryAmount (Maybe Price)
maPriceAmount
  = lens _maPriceAmount
      (\ s a -> s{_maPriceAmount = a})

instance FromJSON MonetaryAmount where
        parseJSON
          = withObject "MonetaryAmount"
              (\ o ->
                 MonetaryAmount' <$>
                   (o .:? "taxAmount") <*> (o .:? "priceAmount"))

instance ToJSON MonetaryAmount where
        toJSON MonetaryAmount'{..}
          = object
              (catMaybes
                 [("taxAmount" .=) <$> _maTaxAmount,
                  ("priceAmount" .=) <$> _maPriceAmount])

--
-- /See:/ 'shipmentInvoiceLineItemInvoice' smart constructor.
data ShipmentInvoiceLineItemInvoice =
  ShipmentInvoiceLineItemInvoice'
    { _siliiUnitInvoice :: !(Maybe UnitInvoice)
    , _siliiShipmentUnitIds :: !(Maybe [Text])
    , _siliiLineItemId :: !(Maybe Text)
    , _siliiProductId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ShipmentInvoiceLineItemInvoice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siliiUnitInvoice'
--
-- * 'siliiShipmentUnitIds'
--
-- * 'siliiLineItemId'
--
-- * 'siliiProductId'
shipmentInvoiceLineItemInvoice
    :: ShipmentInvoiceLineItemInvoice
shipmentInvoiceLineItemInvoice =
  ShipmentInvoiceLineItemInvoice'
    { _siliiUnitInvoice = Nothing
    , _siliiShipmentUnitIds = Nothing
    , _siliiLineItemId = Nothing
    , _siliiProductId = Nothing
    }


-- | [required] Invoice details for a single unit.
siliiUnitInvoice :: Lens' ShipmentInvoiceLineItemInvoice (Maybe UnitInvoice)
siliiUnitInvoice
  = lens _siliiUnitInvoice
      (\ s a -> s{_siliiUnitInvoice = a})

-- | [required] The shipment unit ID is assigned by the merchant and defines
-- individual quantities within a line item. The same ID can be assigned to
-- units that are the same while units that differ must be assigned a
-- different ID (for example: free or promotional units).
siliiShipmentUnitIds :: Lens' ShipmentInvoiceLineItemInvoice [Text]
siliiShipmentUnitIds
  = lens _siliiShipmentUnitIds
      (\ s a -> s{_siliiShipmentUnitIds = a})
      . _Default
      . _Coerce

-- | ID of the line item. Either lineItemId or productId must be set.
siliiLineItemId :: Lens' ShipmentInvoiceLineItemInvoice (Maybe Text)
siliiLineItemId
  = lens _siliiLineItemId
      (\ s a -> s{_siliiLineItemId = a})

-- | ID of the product. This is the REST ID used in the products service.
-- Either lineItemId or productId must be set.
siliiProductId :: Lens' ShipmentInvoiceLineItemInvoice (Maybe Text)
siliiProductId
  = lens _siliiProductId
      (\ s a -> s{_siliiProductId = a})

instance FromJSON ShipmentInvoiceLineItemInvoice
         where
        parseJSON
          = withObject "ShipmentInvoiceLineItemInvoice"
              (\ o ->
                 ShipmentInvoiceLineItemInvoice' <$>
                   (o .:? "unitInvoice") <*>
                     (o .:? "shipmentUnitIds" .!= mempty)
                     <*> (o .:? "lineItemId")
                     <*> (o .:? "productId"))

instance ToJSON ShipmentInvoiceLineItemInvoice where
        toJSON ShipmentInvoiceLineItemInvoice'{..}
          = object
              (catMaybes
                 [("unitInvoice" .=) <$> _siliiUnitInvoice,
                  ("shipmentUnitIds" .=) <$> _siliiShipmentUnitIds,
                  ("lineItemId" .=) <$> _siliiLineItemId,
                  ("productId" .=) <$> _siliiProductId])

--
-- /See:/ 'ordersCustomBatchRequestEntryShipLineItemsShipmentInfo' smart constructor.
data OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo =
  OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo'
    { _ocbreslisiCarrier :: !(Maybe Text)
    , _ocbreslisiTrackingId :: !(Maybe Text)
    , _ocbreslisiShipmentId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocbreslisiCarrier'
--
-- * 'ocbreslisiTrackingId'
--
-- * 'ocbreslisiShipmentId'
ordersCustomBatchRequestEntryShipLineItemsShipmentInfo
    :: OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo
ordersCustomBatchRequestEntryShipLineItemsShipmentInfo =
  OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo'
    { _ocbreslisiCarrier = Nothing
    , _ocbreslisiTrackingId = Nothing
    , _ocbreslisiShipmentId = Nothing
    }


-- | The carrier handling the shipment. See \`shipments[].carrier\` in the
-- Orders resource representation for a list of acceptable values.
ocbreslisiCarrier :: Lens' OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo (Maybe Text)
ocbreslisiCarrier
  = lens _ocbreslisiCarrier
      (\ s a -> s{_ocbreslisiCarrier = a})

-- | The tracking ID for the shipment.
ocbreslisiTrackingId :: Lens' OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo (Maybe Text)
ocbreslisiTrackingId
  = lens _ocbreslisiTrackingId
      (\ s a -> s{_ocbreslisiTrackingId = a})

-- | Required. The ID of the shipment. This is assigned by the merchant and
-- is unique to each shipment.
ocbreslisiShipmentId :: Lens' OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo (Maybe Text)
ocbreslisiShipmentId
  = lens _ocbreslisiShipmentId
      (\ s a -> s{_ocbreslisiShipmentId = a})

instance FromJSON
           OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo
         where
        parseJSON
          = withObject
              "OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo"
              (\ o ->
                 OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo'
                   <$>
                   (o .:? "carrier") <*> (o .:? "trackingId") <*>
                     (o .:? "shipmentId"))

instance ToJSON
           OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo
         where
        toJSON
          OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo'{..}
          = object
              (catMaybes
                 [("carrier" .=) <$> _ocbreslisiCarrier,
                  ("trackingId" .=) <$> _ocbreslisiTrackingId,
                  ("shipmentId" .=) <$> _ocbreslisiShipmentId])

--
-- /See:/ 'accountsLinkRequest' smart constructor.
data AccountsLinkRequest =
  AccountsLinkRequest'
    { _alrAction :: !(Maybe Text)
    , _alrLinkedAccountId :: !(Maybe Text)
    , _alrLinkType :: !(Maybe Text)
    , _alrServices :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsLinkRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alrAction'
--
-- * 'alrLinkedAccountId'
--
-- * 'alrLinkType'
--
-- * 'alrServices'
accountsLinkRequest
    :: AccountsLinkRequest
accountsLinkRequest =
  AccountsLinkRequest'
    { _alrAction = Nothing
    , _alrLinkedAccountId = Nothing
    , _alrLinkType = Nothing
    , _alrServices = Nothing
    }


-- | Action to perform for this link. The \`\"request\"\` action is only
-- available to select merchants. Acceptable values are: - \"\`approve\`\"
-- - \"\`remove\`\" - \"\`request\`\"
alrAction :: Lens' AccountsLinkRequest (Maybe Text)
alrAction
  = lens _alrAction (\ s a -> s{_alrAction = a})

-- | The ID of the linked account.
alrLinkedAccountId :: Lens' AccountsLinkRequest (Maybe Text)
alrLinkedAccountId
  = lens _alrLinkedAccountId
      (\ s a -> s{_alrLinkedAccountId = a})

-- | Type of the link between the two accounts. Acceptable values are: -
-- \"\`channelPartner\`\" - \"\`eCommercePlatform\`\"
alrLinkType :: Lens' AccountsLinkRequest (Maybe Text)
alrLinkType
  = lens _alrLinkType (\ s a -> s{_alrLinkType = a})

-- | Acceptable values are: - \"\`shoppingAdsProductManagement\`\" -
-- \"\`shoppingAdsOther\`\" - \"\`shoppingActionsProductManagement\`\" -
-- \"\`shoppingActionsOrderManagement\`\" - \"\`shoppingActionsOther\`\"
alrServices :: Lens' AccountsLinkRequest [Text]
alrServices
  = lens _alrServices (\ s a -> s{_alrServices = a}) .
      _Default
      . _Coerce

instance FromJSON AccountsLinkRequest where
        parseJSON
          = withObject "AccountsLinkRequest"
              (\ o ->
                 AccountsLinkRequest' <$>
                   (o .:? "action") <*> (o .:? "linkedAccountId") <*>
                     (o .:? "linkType")
                     <*> (o .:? "services" .!= mempty))

instance ToJSON AccountsLinkRequest where
        toJSON AccountsLinkRequest'{..}
          = object
              (catMaybes
                 [("action" .=) <$> _alrAction,
                  ("linkedAccountId" .=) <$> _alrLinkedAccountId,
                  ("linkType" .=) <$> _alrLinkType,
                  ("services" .=) <$> _alrServices])

--
-- /See:/ 'datafeedTarget' smart constructor.
data DatafeedTarget =
  DatafeedTarget'
    { _dtIncludedDestinations :: !(Maybe [Text])
    , _dtExcludedDestinations :: !(Maybe [Text])
    , _dtCountry :: !(Maybe Text)
    , _dtLanguage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatafeedTarget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtIncludedDestinations'
--
-- * 'dtExcludedDestinations'
--
-- * 'dtCountry'
--
-- * 'dtLanguage'
datafeedTarget
    :: DatafeedTarget
datafeedTarget =
  DatafeedTarget'
    { _dtIncludedDestinations = Nothing
    , _dtExcludedDestinations = Nothing
    , _dtCountry = Nothing
    , _dtLanguage = Nothing
    }


-- | The list of destinations to include for this target (corresponds to
-- checked check boxes in Merchant Center). Default destinations are always
-- included unless provided in \`excludedDestinations\`. List of supported
-- destinations (if available to the account): - DisplayAds - Shopping -
-- ShoppingActions - SurfacesAcrossGoogle
dtIncludedDestinations :: Lens' DatafeedTarget [Text]
dtIncludedDestinations
  = lens _dtIncludedDestinations
      (\ s a -> s{_dtIncludedDestinations = a})
      . _Default
      . _Coerce

-- | The list of destinations to exclude for this target (corresponds to
-- unchecked check boxes in Merchant Center).
dtExcludedDestinations :: Lens' DatafeedTarget [Text]
dtExcludedDestinations
  = lens _dtExcludedDestinations
      (\ s a -> s{_dtExcludedDestinations = a})
      . _Default
      . _Coerce

-- | The country where the items in the feed will be included in the search
-- index, represented as a CLDR territory code.
dtCountry :: Lens' DatafeedTarget (Maybe Text)
dtCountry
  = lens _dtCountry (\ s a -> s{_dtCountry = a})

-- | The two-letter ISO 639-1 language of the items in the feed. Must be a
-- valid language for \`targets[].country\`.
dtLanguage :: Lens' DatafeedTarget (Maybe Text)
dtLanguage
  = lens _dtLanguage (\ s a -> s{_dtLanguage = a})

instance FromJSON DatafeedTarget where
        parseJSON
          = withObject "DatafeedTarget"
              (\ o ->
                 DatafeedTarget' <$>
                   (o .:? "includedDestinations" .!= mempty) <*>
                     (o .:? "excludedDestinations" .!= mempty)
                     <*> (o .:? "country")
                     <*> (o .:? "language"))

instance ToJSON DatafeedTarget where
        toJSON DatafeedTarget'{..}
          = object
              (catMaybes
                 [("includedDestinations" .=) <$>
                    _dtIncludedDestinations,
                  ("excludedDestinations" .=) <$>
                    _dtExcludedDestinations,
                  ("country" .=) <$> _dtCountry,
                  ("language" .=) <$> _dtLanguage])

--
-- /See:/ 'ordersUpdateMerchantOrderIdResponse' smart constructor.
data OrdersUpdateMerchantOrderIdResponse =
  OrdersUpdateMerchantOrderIdResponse'
    { _oumoirKind :: !(Maybe Text)
    , _oumoirExecutionStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersUpdateMerchantOrderIdResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oumoirKind'
--
-- * 'oumoirExecutionStatus'
ordersUpdateMerchantOrderIdResponse
    :: OrdersUpdateMerchantOrderIdResponse
ordersUpdateMerchantOrderIdResponse =
  OrdersUpdateMerchantOrderIdResponse'
    {_oumoirKind = Nothing, _oumoirExecutionStatus = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersUpdateMerchantOrderIdResponse\".
oumoirKind :: Lens' OrdersUpdateMerchantOrderIdResponse (Maybe Text)
oumoirKind
  = lens _oumoirKind (\ s a -> s{_oumoirKind = a})

-- | The status of the execution. Acceptable values are: - \"\`duplicate\`\"
-- - \"\`executed\`\"
oumoirExecutionStatus :: Lens' OrdersUpdateMerchantOrderIdResponse (Maybe Text)
oumoirExecutionStatus
  = lens _oumoirExecutionStatus
      (\ s a -> s{_oumoirExecutionStatus = a})

instance FromJSON OrdersUpdateMerchantOrderIdResponse
         where
        parseJSON
          = withObject "OrdersUpdateMerchantOrderIdResponse"
              (\ o ->
                 OrdersUpdateMerchantOrderIdResponse' <$>
                   (o .:? "kind") <*> (o .:? "executionStatus"))

instance ToJSON OrdersUpdateMerchantOrderIdResponse
         where
        toJSON OrdersUpdateMerchantOrderIdResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _oumoirKind,
                  ("executionStatus" .=) <$> _oumoirExecutionStatus])

--
-- /See:/ 'orderreportsListDisbursementsResponse' smart constructor.
data OrderreportsListDisbursementsResponse =
  OrderreportsListDisbursementsResponse'
    { _oldrNextPageToken :: !(Maybe Text)
    , _oldrKind :: !(Maybe Text)
    , _oldrDisbursements :: !(Maybe [OrderReportDisbursement])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderreportsListDisbursementsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oldrNextPageToken'
--
-- * 'oldrKind'
--
-- * 'oldrDisbursements'
orderreportsListDisbursementsResponse
    :: OrderreportsListDisbursementsResponse
orderreportsListDisbursementsResponse =
  OrderreportsListDisbursementsResponse'
    { _oldrNextPageToken = Nothing
    , _oldrKind = Nothing
    , _oldrDisbursements = Nothing
    }


-- | The token for the retrieval of the next page of disbursements.
oldrNextPageToken :: Lens' OrderreportsListDisbursementsResponse (Maybe Text)
oldrNextPageToken
  = lens _oldrNextPageToken
      (\ s a -> s{_oldrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#orderreportsListDisbursementsResponse\".
oldrKind :: Lens' OrderreportsListDisbursementsResponse (Maybe Text)
oldrKind = lens _oldrKind (\ s a -> s{_oldrKind = a})

-- | The list of disbursements.
oldrDisbursements :: Lens' OrderreportsListDisbursementsResponse [OrderReportDisbursement]
oldrDisbursements
  = lens _oldrDisbursements
      (\ s a -> s{_oldrDisbursements = a})
      . _Default
      . _Coerce

instance FromJSON
           OrderreportsListDisbursementsResponse
         where
        parseJSON
          = withObject "OrderreportsListDisbursementsResponse"
              (\ o ->
                 OrderreportsListDisbursementsResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "kind") <*>
                     (o .:? "disbursements" .!= mempty))

instance ToJSON OrderreportsListDisbursementsResponse
         where
        toJSON OrderreportsListDisbursementsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _oldrNextPageToken,
                  ("kind" .=) <$> _oldrKind,
                  ("disbursements" .=) <$> _oldrDisbursements])

--
-- /See:/ 'testOrderAddress' smart constructor.
data TestOrderAddress =
  TestOrderAddress'
    { _toaRecipientName :: !(Maybe Text)
    , _toaStreetAddress :: !(Maybe [Text])
    , _toaCountry :: !(Maybe Text)
    , _toaPostalCode :: !(Maybe Text)
    , _toaLocality :: !(Maybe Text)
    , _toaIsPostOfficeBox :: !(Maybe Bool)
    , _toaFullAddress :: !(Maybe [Text])
    , _toaRegion :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestOrderAddress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'toaRecipientName'
--
-- * 'toaStreetAddress'
--
-- * 'toaCountry'
--
-- * 'toaPostalCode'
--
-- * 'toaLocality'
--
-- * 'toaIsPostOfficeBox'
--
-- * 'toaFullAddress'
--
-- * 'toaRegion'
testOrderAddress
    :: TestOrderAddress
testOrderAddress =
  TestOrderAddress'
    { _toaRecipientName = Nothing
    , _toaStreetAddress = Nothing
    , _toaCountry = Nothing
    , _toaPostalCode = Nothing
    , _toaLocality = Nothing
    , _toaIsPostOfficeBox = Nothing
    , _toaFullAddress = Nothing
    , _toaRegion = Nothing
    }


-- | Name of the recipient.
toaRecipientName :: Lens' TestOrderAddress (Maybe Text)
toaRecipientName
  = lens _toaRecipientName
      (\ s a -> s{_toaRecipientName = a})

-- | Street-level part of the address.
toaStreetAddress :: Lens' TestOrderAddress [Text]
toaStreetAddress
  = lens _toaStreetAddress
      (\ s a -> s{_toaStreetAddress = a})
      . _Default
      . _Coerce

-- | CLDR country code (e.g. \"US\").
toaCountry :: Lens' TestOrderAddress (Maybe Text)
toaCountry
  = lens _toaCountry (\ s a -> s{_toaCountry = a})

-- | Postal Code or ZIP (e.g. \"94043\").
toaPostalCode :: Lens' TestOrderAddress (Maybe Text)
toaPostalCode
  = lens _toaPostalCode
      (\ s a -> s{_toaPostalCode = a})

-- | City, town or commune. May also include dependent localities or
-- sublocalities (e.g. neighborhoods or suburbs).
toaLocality :: Lens' TestOrderAddress (Maybe Text)
toaLocality
  = lens _toaLocality (\ s a -> s{_toaLocality = a})

-- | Whether the address is a post office box.
toaIsPostOfficeBox :: Lens' TestOrderAddress (Maybe Bool)
toaIsPostOfficeBox
  = lens _toaIsPostOfficeBox
      (\ s a -> s{_toaIsPostOfficeBox = a})

-- | Strings representing the lines of the printed label for mailing the
-- order, for example: John Smith 1600 Amphitheatre Parkway Mountain View,
-- CA, 94043 United States
toaFullAddress :: Lens' TestOrderAddress [Text]
toaFullAddress
  = lens _toaFullAddress
      (\ s a -> s{_toaFullAddress = a})
      . _Default
      . _Coerce

-- | Top-level administrative subdivision of the country. For example, a
-- state like California (\"CA\") or a province like Quebec (\"QC\").
toaRegion :: Lens' TestOrderAddress (Maybe Text)
toaRegion
  = lens _toaRegion (\ s a -> s{_toaRegion = a})

instance FromJSON TestOrderAddress where
        parseJSON
          = withObject "TestOrderAddress"
              (\ o ->
                 TestOrderAddress' <$>
                   (o .:? "recipientName") <*>
                     (o .:? "streetAddress" .!= mempty)
                     <*> (o .:? "country")
                     <*> (o .:? "postalCode")
                     <*> (o .:? "locality")
                     <*> (o .:? "isPostOfficeBox")
                     <*> (o .:? "fullAddress" .!= mempty)
                     <*> (o .:? "region"))

instance ToJSON TestOrderAddress where
        toJSON TestOrderAddress'{..}
          = object
              (catMaybes
                 [("recipientName" .=) <$> _toaRecipientName,
                  ("streetAddress" .=) <$> _toaStreetAddress,
                  ("country" .=) <$> _toaCountry,
                  ("postalCode" .=) <$> _toaPostalCode,
                  ("locality" .=) <$> _toaLocality,
                  ("isPostOfficeBox" .=) <$> _toaIsPostOfficeBox,
                  ("fullAddress" .=) <$> _toaFullAddress,
                  ("region" .=) <$> _toaRegion])

-- | An example occurrence for a particular error.
--
-- /See:/ 'datafeedStatusExample' smart constructor.
data DatafeedStatusExample =
  DatafeedStatusExample'
    { _dseLineNumber :: !(Maybe (Textual Word64))
    , _dseItemId :: !(Maybe Text)
    , _dseValue :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatafeedStatusExample' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dseLineNumber'
--
-- * 'dseItemId'
--
-- * 'dseValue'
datafeedStatusExample
    :: DatafeedStatusExample
datafeedStatusExample =
  DatafeedStatusExample'
    {_dseLineNumber = Nothing, _dseItemId = Nothing, _dseValue = Nothing}


-- | Line number in the data feed where the example is found.
dseLineNumber :: Lens' DatafeedStatusExample (Maybe Word64)
dseLineNumber
  = lens _dseLineNumber
      (\ s a -> s{_dseLineNumber = a})
      . mapping _Coerce

-- | The ID of the example item.
dseItemId :: Lens' DatafeedStatusExample (Maybe Text)
dseItemId
  = lens _dseItemId (\ s a -> s{_dseItemId = a})

-- | The problematic value.
dseValue :: Lens' DatafeedStatusExample (Maybe Text)
dseValue = lens _dseValue (\ s a -> s{_dseValue = a})

instance FromJSON DatafeedStatusExample where
        parseJSON
          = withObject "DatafeedStatusExample"
              (\ o ->
                 DatafeedStatusExample' <$>
                   (o .:? "lineNumber") <*> (o .:? "itemId") <*>
                     (o .:? "value"))

instance ToJSON DatafeedStatusExample where
        toJSON DatafeedStatusExample'{..}
          = object
              (catMaybes
                 [("lineNumber" .=) <$> _dseLineNumber,
                  ("itemId" .=) <$> _dseItemId,
                  ("value" .=) <$> _dseValue])

--
-- /See:/ 'ordersAcknowledgeResponse' smart constructor.
data OrdersAcknowledgeResponse =
  OrdersAcknowledgeResponse'
    { _oaraKind :: !(Maybe Text)
    , _oaraExecutionStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersAcknowledgeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oaraKind'
--
-- * 'oaraExecutionStatus'
ordersAcknowledgeResponse
    :: OrdersAcknowledgeResponse
ordersAcknowledgeResponse =
  OrdersAcknowledgeResponse'
    {_oaraKind = Nothing, _oaraExecutionStatus = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersAcknowledgeResponse\".
oaraKind :: Lens' OrdersAcknowledgeResponse (Maybe Text)
oaraKind = lens _oaraKind (\ s a -> s{_oaraKind = a})

-- | The status of the execution. Acceptable values are: - \"\`duplicate\`\"
-- - \"\`executed\`\"
oaraExecutionStatus :: Lens' OrdersAcknowledgeResponse (Maybe Text)
oaraExecutionStatus
  = lens _oaraExecutionStatus
      (\ s a -> s{_oaraExecutionStatus = a})

instance FromJSON OrdersAcknowledgeResponse where
        parseJSON
          = withObject "OrdersAcknowledgeResponse"
              (\ o ->
                 OrdersAcknowledgeResponse' <$>
                   (o .:? "kind") <*> (o .:? "executionStatus"))

instance ToJSON OrdersAcknowledgeResponse where
        toJSON OrdersAcknowledgeResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _oaraKind,
                  ("executionStatus" .=) <$> _oaraExecutionStatus])

--
-- /See:/ 'posSaleRequest' smart constructor.
data PosSaleRequest =
  PosSaleRequest'
    { _psrsStoreCode :: !(Maybe Text)
    , _psrsItemId :: !(Maybe Text)
    , _psrsQuantity :: !(Maybe (Textual Int64))
    , _psrsTargetCountry :: !(Maybe Text)
    , _psrsGtin :: !(Maybe Text)
    , _psrsPrice :: !(Maybe Price)
    , _psrsContentLanguage :: !(Maybe Text)
    , _psrsTimestamp :: !(Maybe Text)
    , _psrsSaleId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PosSaleRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psrsStoreCode'
--
-- * 'psrsItemId'
--
-- * 'psrsQuantity'
--
-- * 'psrsTargetCountry'
--
-- * 'psrsGtin'
--
-- * 'psrsPrice'
--
-- * 'psrsContentLanguage'
--
-- * 'psrsTimestamp'
--
-- * 'psrsSaleId'
posSaleRequest
    :: PosSaleRequest
posSaleRequest =
  PosSaleRequest'
    { _psrsStoreCode = Nothing
    , _psrsItemId = Nothing
    , _psrsQuantity = Nothing
    , _psrsTargetCountry = Nothing
    , _psrsGtin = Nothing
    , _psrsPrice = Nothing
    , _psrsContentLanguage = Nothing
    , _psrsTimestamp = Nothing
    , _psrsSaleId = Nothing
    }


-- | Required. The identifier of the merchant\'s store. Either a
-- \`storeCode\` inserted via the API or the code of the store in Google My
-- Business.
psrsStoreCode :: Lens' PosSaleRequest (Maybe Text)
psrsStoreCode
  = lens _psrsStoreCode
      (\ s a -> s{_psrsStoreCode = a})

-- | Required. A unique identifier for the item.
psrsItemId :: Lens' PosSaleRequest (Maybe Text)
psrsItemId
  = lens _psrsItemId (\ s a -> s{_psrsItemId = a})

-- | Required. The relative change of the available quantity. Negative for
-- items returned.
psrsQuantity :: Lens' PosSaleRequest (Maybe Int64)
psrsQuantity
  = lens _psrsQuantity (\ s a -> s{_psrsQuantity = a})
      . mapping _Coerce

-- | Required. The CLDR territory code for the item.
psrsTargetCountry :: Lens' PosSaleRequest (Maybe Text)
psrsTargetCountry
  = lens _psrsTargetCountry
      (\ s a -> s{_psrsTargetCountry = a})

-- | Global Trade Item Number.
psrsGtin :: Lens' PosSaleRequest (Maybe Text)
psrsGtin = lens _psrsGtin (\ s a -> s{_psrsGtin = a})

-- | Required. The price of the item.
psrsPrice :: Lens' PosSaleRequest (Maybe Price)
psrsPrice
  = lens _psrsPrice (\ s a -> s{_psrsPrice = a})

-- | Required. The two-letter ISO 639-1 language code for the item.
psrsContentLanguage :: Lens' PosSaleRequest (Maybe Text)
psrsContentLanguage
  = lens _psrsContentLanguage
      (\ s a -> s{_psrsContentLanguage = a})

-- | Required. The inventory timestamp, in ISO 8601 format.
psrsTimestamp :: Lens' PosSaleRequest (Maybe Text)
psrsTimestamp
  = lens _psrsTimestamp
      (\ s a -> s{_psrsTimestamp = a})

-- | A unique ID to group items from the same sale event.
psrsSaleId :: Lens' PosSaleRequest (Maybe Text)
psrsSaleId
  = lens _psrsSaleId (\ s a -> s{_psrsSaleId = a})

instance FromJSON PosSaleRequest where
        parseJSON
          = withObject "PosSaleRequest"
              (\ o ->
                 PosSaleRequest' <$>
                   (o .:? "storeCode") <*> (o .:? "itemId") <*>
                     (o .:? "quantity")
                     <*> (o .:? "targetCountry")
                     <*> (o .:? "gtin")
                     <*> (o .:? "price")
                     <*> (o .:? "contentLanguage")
                     <*> (o .:? "timestamp")
                     <*> (o .:? "saleId"))

instance ToJSON PosSaleRequest where
        toJSON PosSaleRequest'{..}
          = object
              (catMaybes
                 [("storeCode" .=) <$> _psrsStoreCode,
                  ("itemId" .=) <$> _psrsItemId,
                  ("quantity" .=) <$> _psrsQuantity,
                  ("targetCountry" .=) <$> _psrsTargetCountry,
                  ("gtin" .=) <$> _psrsGtin,
                  ("price" .=) <$> _psrsPrice,
                  ("contentLanguage" .=) <$> _psrsContentLanguage,
                  ("timestamp" .=) <$> _psrsTimestamp,
                  ("saleId" .=) <$> _psrsSaleId])

--
-- /See:/ 'table' smart constructor.
data Table =
  Table'
    { _tRows :: !(Maybe [Row])
    , _tName :: !(Maybe Text)
    , _tColumnHeaders :: !(Maybe Headers)
    , _tRowHeaders :: !(Maybe Headers)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Table' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tRows'
--
-- * 'tName'
--
-- * 'tColumnHeaders'
--
-- * 'tRowHeaders'
table
    :: Table
table =
  Table'
    { _tRows = Nothing
    , _tName = Nothing
    , _tColumnHeaders = Nothing
    , _tRowHeaders = Nothing
    }


-- | The list of rows that constitute the table. Must have the same length as
-- \`rowHeaders\`. Required.
tRows :: Lens' Table [Row]
tRows
  = lens _tRows (\ s a -> s{_tRows = a}) . _Default .
      _Coerce

-- | Name of the table. Required for subtables, ignored for the main table.
tName :: Lens' Table (Maybe Text)
tName = lens _tName (\ s a -> s{_tName = a})

-- | Headers of the table\'s columns. Optional: if not set then the table has
-- only one dimension.
tColumnHeaders :: Lens' Table (Maybe Headers)
tColumnHeaders
  = lens _tColumnHeaders
      (\ s a -> s{_tColumnHeaders = a})

-- | Headers of the table\'s rows. Required.
tRowHeaders :: Lens' Table (Maybe Headers)
tRowHeaders
  = lens _tRowHeaders (\ s a -> s{_tRowHeaders = a})

instance FromJSON Table where
        parseJSON
          = withObject "Table"
              (\ o ->
                 Table' <$>
                   (o .:? "rows" .!= mempty) <*> (o .:? "name") <*>
                     (o .:? "columnHeaders")
                     <*> (o .:? "rowHeaders"))

instance ToJSON Table where
        toJSON Table'{..}
          = object
              (catMaybes
                 [("rows" .=) <$> _tRows, ("name" .=) <$> _tName,
                  ("columnHeaders" .=) <$> _tColumnHeaders,
                  ("rowHeaders" .=) <$> _tRowHeaders])

-- | Order. Production access (all methods) requires the order manager role.
-- Sandbox access does not.
--
-- /See:/ 'order' smart constructor.
data Order =
  Order'
    { _o2Annotations :: !(Maybe [OrderOrderAnnotation])
    , _o2Status :: !(Maybe Text)
    , _o2MerchantId :: !(Maybe (Textual Word64))
    , _o2Refunds :: !(Maybe [OrderRefund])
    , _o2Kind :: !(Maybe Text)
    , _o2LineItems :: !(Maybe [OrderLineItem])
    , _o2Shipments :: !(Maybe [OrderShipment])
    , _o2PlacedDate :: !(Maybe Text)
    , _o2DeliveryDetails :: !(Maybe OrderDeliveryDetails)
    , _o2MerchantOrderId :: !(Maybe Text)
    , _o2Acknowledged :: !(Maybe Bool)
    , _o2ShippingCostTax :: !(Maybe Price)
    , _o2Customer :: !(Maybe OrderCustomer)
    , _o2BillingAddress :: !(Maybe OrderAddress)
    , _o2Id :: !(Maybe Text)
    , _o2Promotions :: !(Maybe [OrderPromotion])
    , _o2PickupDetails :: !(Maybe OrderPickupDetails)
    , _o2NetTaxAmount :: !(Maybe Price)
    , _o2TaxCollector :: !(Maybe Text)
    , _o2PaymentStatus :: !(Maybe Text)
    , _o2NetPriceAmount :: !(Maybe Price)
    , _o2ShippingCost :: !(Maybe Price)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Order' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'o2Annotations'
--
-- * 'o2Status'
--
-- * 'o2MerchantId'
--
-- * 'o2Refunds'
--
-- * 'o2Kind'
--
-- * 'o2LineItems'
--
-- * 'o2Shipments'
--
-- * 'o2PlacedDate'
--
-- * 'o2DeliveryDetails'
--
-- * 'o2MerchantOrderId'
--
-- * 'o2Acknowledged'
--
-- * 'o2ShippingCostTax'
--
-- * 'o2Customer'
--
-- * 'o2BillingAddress'
--
-- * 'o2Id'
--
-- * 'o2Promotions'
--
-- * 'o2PickupDetails'
--
-- * 'o2NetTaxAmount'
--
-- * 'o2TaxCollector'
--
-- * 'o2PaymentStatus'
--
-- * 'o2NetPriceAmount'
--
-- * 'o2ShippingCost'
order
    :: Order
order =
  Order'
    { _o2Annotations = Nothing
    , _o2Status = Nothing
    , _o2MerchantId = Nothing
    , _o2Refunds = Nothing
    , _o2Kind = Nothing
    , _o2LineItems = Nothing
    , _o2Shipments = Nothing
    , _o2PlacedDate = Nothing
    , _o2DeliveryDetails = Nothing
    , _o2MerchantOrderId = Nothing
    , _o2Acknowledged = Nothing
    , _o2ShippingCostTax = Nothing
    , _o2Customer = Nothing
    , _o2BillingAddress = Nothing
    , _o2Id = Nothing
    , _o2Promotions = Nothing
    , _o2PickupDetails = Nothing
    , _o2NetTaxAmount = Nothing
    , _o2TaxCollector = Nothing
    , _o2PaymentStatus = Nothing
    , _o2NetPriceAmount = Nothing
    , _o2ShippingCost = Nothing
    }


-- | List of key-value pairs that are attached to a given order.
o2Annotations :: Lens' Order [OrderOrderAnnotation]
o2Annotations
  = lens _o2Annotations
      (\ s a -> s{_o2Annotations = a})
      . _Default
      . _Coerce

-- | The status of the order. Acceptable values are: - \"\`canceled\`\" -
-- \"\`delivered\`\" - \"\`inProgress\`\" - \"\`partiallyDelivered\`\" -
-- \"\`partiallyReturned\`\" - \"\`partiallyShipped\`\" -
-- \"\`pendingShipment\`\" - \"\`returned\`\" - \"\`shipped\`\"
o2Status :: Lens' Order (Maybe Text)
o2Status = lens _o2Status (\ s a -> s{_o2Status = a})

o2MerchantId :: Lens' Order (Maybe Word64)
o2MerchantId
  = lens _o2MerchantId (\ s a -> s{_o2MerchantId = a})
      . mapping _Coerce

-- | Refunds for the order.
o2Refunds :: Lens' Order [OrderRefund]
o2Refunds
  = lens _o2Refunds (\ s a -> s{_o2Refunds = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"\`content#order\`\"
o2Kind :: Lens' Order (Maybe Text)
o2Kind = lens _o2Kind (\ s a -> s{_o2Kind = a})

-- | Line items that are ordered.
o2LineItems :: Lens' Order [OrderLineItem]
o2LineItems
  = lens _o2LineItems (\ s a -> s{_o2LineItems = a}) .
      _Default
      . _Coerce

-- | Shipments of the order.
o2Shipments :: Lens' Order [OrderShipment]
o2Shipments
  = lens _o2Shipments (\ s a -> s{_o2Shipments = a}) .
      _Default
      . _Coerce

-- | The date when the order was placed, in ISO 8601 format.
o2PlacedDate :: Lens' Order (Maybe Text)
o2PlacedDate
  = lens _o2PlacedDate (\ s a -> s{_o2PlacedDate = a})

-- | Delivery details for shipments of type \`delivery\`.
o2DeliveryDetails :: Lens' Order (Maybe OrderDeliveryDetails)
o2DeliveryDetails
  = lens _o2DeliveryDetails
      (\ s a -> s{_o2DeliveryDetails = a})

-- | Merchant-provided ID of the order.
o2MerchantOrderId :: Lens' Order (Maybe Text)
o2MerchantOrderId
  = lens _o2MerchantOrderId
      (\ s a -> s{_o2MerchantOrderId = a})

-- | Whether the order was acknowledged.
o2Acknowledged :: Lens' Order (Maybe Bool)
o2Acknowledged
  = lens _o2Acknowledged
      (\ s a -> s{_o2Acknowledged = a})

-- | The tax for the total shipping cost.
o2ShippingCostTax :: Lens' Order (Maybe Price)
o2ShippingCostTax
  = lens _o2ShippingCostTax
      (\ s a -> s{_o2ShippingCostTax = a})

-- | The details of the customer who placed the order.
o2Customer :: Lens' Order (Maybe OrderCustomer)
o2Customer
  = lens _o2Customer (\ s a -> s{_o2Customer = a})

-- | The billing address.
o2BillingAddress :: Lens' Order (Maybe OrderAddress)
o2BillingAddress
  = lens _o2BillingAddress
      (\ s a -> s{_o2BillingAddress = a})

-- | The REST ID of the order. Globally unique.
o2Id :: Lens' Order (Maybe Text)
o2Id = lens _o2Id (\ s a -> s{_o2Id = a})

-- | Promotions associated with the order. To determine which promotions
-- apply to which products, check the
-- \`Promotions[].appliedItems[].lineItemId\` field against the
-- \`LineItems[].id\` field for each promotion. If a promotion is applied
-- to more than 1 offerId, divide the discount value by the number of
-- affected offers to determine how much discount to apply to each offerId.
-- Examples: 1. To calculate price paid by the customer for a single line
-- item including the discount: For each promotion, subtract the
-- \`LineItems[].adjustments[].priceAdjustment.value\` amount from the
-- \`LineItems[].Price.value\`. 2. To calculate price paid by the customer
-- for a single line item including the discount in case of multiple
-- quantity: For each promotion, divide the
-- \`LineItems[].adjustments[].priceAdjustment.value\` by the quantity of
-- products then subtract the resulting value from the
-- \`LineItems[].Product.Price.value\` for each quantity item. Only 1
-- promotion can be applied to an offerId in a given order. To refund an
-- item which had a promotion applied to it, make sure to refund the amount
-- after first subtracting the promotion discount from the item price. More
-- details about the program are here.
o2Promotions :: Lens' Order [OrderPromotion]
o2Promotions
  = lens _o2Promotions (\ s a -> s{_o2Promotions = a})
      . _Default
      . _Coerce

-- | Pickup details for shipments of type \`pickup\`.
o2PickupDetails :: Lens' Order (Maybe OrderPickupDetails)
o2PickupDetails
  = lens _o2PickupDetails
      (\ s a -> s{_o2PickupDetails = a})

-- | The net amount for the order (tax part). Note that in certain cases due
-- to taxable base adjustment \`netTaxAmount\` might not match to a sum of
-- tax field across all lineItems and refunds.
o2NetTaxAmount :: Lens' Order (Maybe Price)
o2NetTaxAmount
  = lens _o2NetTaxAmount
      (\ s a -> s{_o2NetTaxAmount = a})

-- | The party responsible for collecting and remitting taxes. Acceptable
-- values are: - \"\`marketplaceFacilitator\`\" - \"\`merchant\`\"
o2TaxCollector :: Lens' Order (Maybe Text)
o2TaxCollector
  = lens _o2TaxCollector
      (\ s a -> s{_o2TaxCollector = a})

-- | The status of the payment. Acceptable values are: -
-- \"\`paymentCaptured\`\" - \"\`paymentRejected\`\" -
-- \"\`paymentSecured\`\" - \"\`pendingAuthorization\`\"
o2PaymentStatus :: Lens' Order (Maybe Text)
o2PaymentStatus
  = lens _o2PaymentStatus
      (\ s a -> s{_o2PaymentStatus = a})

-- | The net amount for the order (price part). For example, if an order was
-- originally for $100 and a refund was issued for $20, the net amount will
-- be $80.
o2NetPriceAmount :: Lens' Order (Maybe Price)
o2NetPriceAmount
  = lens _o2NetPriceAmount
      (\ s a -> s{_o2NetPriceAmount = a})

-- | The total cost of shipping for all items.
o2ShippingCost :: Lens' Order (Maybe Price)
o2ShippingCost
  = lens _o2ShippingCost
      (\ s a -> s{_o2ShippingCost = a})

instance FromJSON Order where
        parseJSON
          = withObject "Order"
              (\ o ->
                 Order' <$>
                   (o .:? "annotations" .!= mempty) <*> (o .:? "status")
                     <*> (o .:? "merchantId")
                     <*> (o .:? "refunds" .!= mempty)
                     <*> (o .:? "kind")
                     <*> (o .:? "lineItems" .!= mempty)
                     <*> (o .:? "shipments" .!= mempty)
                     <*> (o .:? "placedDate")
                     <*> (o .:? "deliveryDetails")
                     <*> (o .:? "merchantOrderId")
                     <*> (o .:? "acknowledged")
                     <*> (o .:? "shippingCostTax")
                     <*> (o .:? "customer")
                     <*> (o .:? "billingAddress")
                     <*> (o .:? "id")
                     <*> (o .:? "promotions" .!= mempty)
                     <*> (o .:? "pickupDetails")
                     <*> (o .:? "netTaxAmount")
                     <*> (o .:? "taxCollector")
                     <*> (o .:? "paymentStatus")
                     <*> (o .:? "netPriceAmount")
                     <*> (o .:? "shippingCost"))

instance ToJSON Order where
        toJSON Order'{..}
          = object
              (catMaybes
                 [("annotations" .=) <$> _o2Annotations,
                  ("status" .=) <$> _o2Status,
                  ("merchantId" .=) <$> _o2MerchantId,
                  ("refunds" .=) <$> _o2Refunds,
                  ("kind" .=) <$> _o2Kind,
                  ("lineItems" .=) <$> _o2LineItems,
                  ("shipments" .=) <$> _o2Shipments,
                  ("placedDate" .=) <$> _o2PlacedDate,
                  ("deliveryDetails" .=) <$> _o2DeliveryDetails,
                  ("merchantOrderId" .=) <$> _o2MerchantOrderId,
                  ("acknowledged" .=) <$> _o2Acknowledged,
                  ("shippingCostTax" .=) <$> _o2ShippingCostTax,
                  ("customer" .=) <$> _o2Customer,
                  ("billingAddress" .=) <$> _o2BillingAddress,
                  ("id" .=) <$> _o2Id,
                  ("promotions" .=) <$> _o2Promotions,
                  ("pickupDetails" .=) <$> _o2PickupDetails,
                  ("netTaxAmount" .=) <$> _o2NetTaxAmount,
                  ("taxCollector" .=) <$> _o2TaxCollector,
                  ("paymentStatus" .=) <$> _o2PaymentStatus,
                  ("netPriceAmount" .=) <$> _o2NetPriceAmount,
                  ("shippingCost" .=) <$> _o2ShippingCost])

--
-- /See:/ 'orderreturnsAcknowledgeRequest' smart constructor.
newtype OrderreturnsAcknowledgeRequest =
  OrderreturnsAcknowledgeRequest'
    { _oOperationId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderreturnsAcknowledgeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oOperationId'
orderreturnsAcknowledgeRequest
    :: OrderreturnsAcknowledgeRequest
orderreturnsAcknowledgeRequest =
  OrderreturnsAcknowledgeRequest' {_oOperationId = Nothing}


-- | [required] The ID of the operation, unique across all operations for a
-- given order return.
oOperationId :: Lens' OrderreturnsAcknowledgeRequest (Maybe Text)
oOperationId
  = lens _oOperationId (\ s a -> s{_oOperationId = a})

instance FromJSON OrderreturnsAcknowledgeRequest
         where
        parseJSON
          = withObject "OrderreturnsAcknowledgeRequest"
              (\ o ->
                 OrderreturnsAcknowledgeRequest' <$>
                   (o .:? "operationId"))

instance ToJSON OrderreturnsAcknowledgeRequest where
        toJSON OrderreturnsAcknowledgeRequest'{..}
          = object
              (catMaybes [("operationId" .=) <$> _oOperationId])

--
-- /See:/ 'orderLineItemProduct' smart constructor.
data OrderLineItemProduct =
  OrderLineItemProduct'
    { _olipImageLink :: !(Maybe Text)
    , _olipShownImage :: !(Maybe Text)
    , _olipFees :: !(Maybe [OrderLineItemProductFee])
    , _olipBrand :: !(Maybe Text)
    , _olipTargetCountry :: !(Maybe Text)
    , _olipGtin :: !(Maybe Text)
    , _olipItemGroupId :: !(Maybe Text)
    , _olipOfferId :: !(Maybe Text)
    , _olipId :: !(Maybe Text)
    , _olipPrice :: !(Maybe Price)
    , _olipVariantAttributes :: !(Maybe [OrderLineItemProductVariantAttribute])
    , _olipTitle :: !(Maybe Text)
    , _olipContentLanguage :: !(Maybe Text)
    , _olipMpn :: !(Maybe Text)
    , _olipCondition :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderLineItemProduct' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olipImageLink'
--
-- * 'olipShownImage'
--
-- * 'olipFees'
--
-- * 'olipBrand'
--
-- * 'olipTargetCountry'
--
-- * 'olipGtin'
--
-- * 'olipItemGroupId'
--
-- * 'olipOfferId'
--
-- * 'olipId'
--
-- * 'olipPrice'
--
-- * 'olipVariantAttributes'
--
-- * 'olipTitle'
--
-- * 'olipContentLanguage'
--
-- * 'olipMpn'
--
-- * 'olipCondition'
orderLineItemProduct
    :: OrderLineItemProduct
orderLineItemProduct =
  OrderLineItemProduct'
    { _olipImageLink = Nothing
    , _olipShownImage = Nothing
    , _olipFees = Nothing
    , _olipBrand = Nothing
    , _olipTargetCountry = Nothing
    , _olipGtin = Nothing
    , _olipItemGroupId = Nothing
    , _olipOfferId = Nothing
    , _olipId = Nothing
    , _olipPrice = Nothing
    , _olipVariantAttributes = Nothing
    , _olipTitle = Nothing
    , _olipContentLanguage = Nothing
    , _olipMpn = Nothing
    , _olipCondition = Nothing
    }


-- | URL of an image of the item.
olipImageLink :: Lens' OrderLineItemProduct (Maybe Text)
olipImageLink
  = lens _olipImageLink
      (\ s a -> s{_olipImageLink = a})

-- | URL to the cached image shown to the user when order was placed.
olipShownImage :: Lens' OrderLineItemProduct (Maybe Text)
olipShownImage
  = lens _olipShownImage
      (\ s a -> s{_olipShownImage = a})

-- | Associated fees at order creation time.
olipFees :: Lens' OrderLineItemProduct [OrderLineItemProductFee]
olipFees
  = lens _olipFees (\ s a -> s{_olipFees = a}) .
      _Default
      . _Coerce

-- | Brand of the item.
olipBrand :: Lens' OrderLineItemProduct (Maybe Text)
olipBrand
  = lens _olipBrand (\ s a -> s{_olipBrand = a})

-- | The CLDR territory \/\/ code of the target country of the product.
olipTargetCountry :: Lens' OrderLineItemProduct (Maybe Text)
olipTargetCountry
  = lens _olipTargetCountry
      (\ s a -> s{_olipTargetCountry = a})

-- | Global Trade Item Number (GTIN) of the item.
olipGtin :: Lens' OrderLineItemProduct (Maybe Text)
olipGtin = lens _olipGtin (\ s a -> s{_olipGtin = a})

-- | Shared identifier for all variants of the same product.
olipItemGroupId :: Lens' OrderLineItemProduct (Maybe Text)
olipItemGroupId
  = lens _olipItemGroupId
      (\ s a -> s{_olipItemGroupId = a})

-- | An identifier of the item.
olipOfferId :: Lens' OrderLineItemProduct (Maybe Text)
olipOfferId
  = lens _olipOfferId (\ s a -> s{_olipOfferId = a})

-- | The REST ID of the product.
olipId :: Lens' OrderLineItemProduct (Maybe Text)
olipId = lens _olipId (\ s a -> s{_olipId = a})

-- | Price of the item.
olipPrice :: Lens' OrderLineItemProduct (Maybe Price)
olipPrice
  = lens _olipPrice (\ s a -> s{_olipPrice = a})

-- | Variant attributes for the item. These are dimensions of the product,
-- such as color, gender, material, pattern, and size. You can find a
-- comprehensive list of variant attributes here.
olipVariantAttributes :: Lens' OrderLineItemProduct [OrderLineItemProductVariantAttribute]
olipVariantAttributes
  = lens _olipVariantAttributes
      (\ s a -> s{_olipVariantAttributes = a})
      . _Default
      . _Coerce

-- | The title of the product.
olipTitle :: Lens' OrderLineItemProduct (Maybe Text)
olipTitle
  = lens _olipTitle (\ s a -> s{_olipTitle = a})

-- | The two-letter ISO 639-1 language code for the item.
olipContentLanguage :: Lens' OrderLineItemProduct (Maybe Text)
olipContentLanguage
  = lens _olipContentLanguage
      (\ s a -> s{_olipContentLanguage = a})

-- | Manufacturer Part Number (MPN) of the item.
olipMpn :: Lens' OrderLineItemProduct (Maybe Text)
olipMpn = lens _olipMpn (\ s a -> s{_olipMpn = a})

-- | Condition or state of the item. Acceptable values are: - \"\`new\`\" -
-- \"\`refurbished\`\" - \"\`used\`\"
olipCondition :: Lens' OrderLineItemProduct (Maybe Text)
olipCondition
  = lens _olipCondition
      (\ s a -> s{_olipCondition = a})

instance FromJSON OrderLineItemProduct where
        parseJSON
          = withObject "OrderLineItemProduct"
              (\ o ->
                 OrderLineItemProduct' <$>
                   (o .:? "imageLink") <*> (o .:? "shownImage") <*>
                     (o .:? "fees" .!= mempty)
                     <*> (o .:? "brand")
                     <*> (o .:? "targetCountry")
                     <*> (o .:? "gtin")
                     <*> (o .:? "itemGroupId")
                     <*> (o .:? "offerId")
                     <*> (o .:? "id")
                     <*> (o .:? "price")
                     <*> (o .:? "variantAttributes" .!= mempty)
                     <*> (o .:? "title")
                     <*> (o .:? "contentLanguage")
                     <*> (o .:? "mpn")
                     <*> (o .:? "condition"))

instance ToJSON OrderLineItemProduct where
        toJSON OrderLineItemProduct'{..}
          = object
              (catMaybes
                 [("imageLink" .=) <$> _olipImageLink,
                  ("shownImage" .=) <$> _olipShownImage,
                  ("fees" .=) <$> _olipFees,
                  ("brand" .=) <$> _olipBrand,
                  ("targetCountry" .=) <$> _olipTargetCountry,
                  ("gtin" .=) <$> _olipGtin,
                  ("itemGroupId" .=) <$> _olipItemGroupId,
                  ("offerId" .=) <$> _olipOfferId,
                  ("id" .=) <$> _olipId, ("price" .=) <$> _olipPrice,
                  ("variantAttributes" .=) <$> _olipVariantAttributes,
                  ("title" .=) <$> _olipTitle,
                  ("contentLanguage" .=) <$> _olipContentLanguage,
                  ("mpn" .=) <$> _olipMpn,
                  ("condition" .=) <$> _olipCondition])

-- | A batch entry encoding a single non-batch accounttax request.
--
-- /See:/ 'accounttaxCustomBatchRequestEntry' smart constructor.
data AccounttaxCustomBatchRequestEntry =
  AccounttaxCustomBatchRequestEntry'
    { _acbre1AccountTax :: !(Maybe AccountTax)
    , _acbre1MerchantId :: !(Maybe (Textual Word64))
    , _acbre1AccountId :: !(Maybe (Textual Word64))
    , _acbre1Method :: !(Maybe Text)
    , _acbre1BatchId :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccounttaxCustomBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acbre1AccountTax'
--
-- * 'acbre1MerchantId'
--
-- * 'acbre1AccountId'
--
-- * 'acbre1Method'
--
-- * 'acbre1BatchId'
accounttaxCustomBatchRequestEntry
    :: AccounttaxCustomBatchRequestEntry
accounttaxCustomBatchRequestEntry =
  AccounttaxCustomBatchRequestEntry'
    { _acbre1AccountTax = Nothing
    , _acbre1MerchantId = Nothing
    , _acbre1AccountId = Nothing
    , _acbre1Method = Nothing
    , _acbre1BatchId = Nothing
    }


-- | The account tax settings to update. Only defined if the method is
-- \`update\`.
acbre1AccountTax :: Lens' AccounttaxCustomBatchRequestEntry (Maybe AccountTax)
acbre1AccountTax
  = lens _acbre1AccountTax
      (\ s a -> s{_acbre1AccountTax = a})

-- | The ID of the managing account.
acbre1MerchantId :: Lens' AccounttaxCustomBatchRequestEntry (Maybe Word64)
acbre1MerchantId
  = lens _acbre1MerchantId
      (\ s a -> s{_acbre1MerchantId = a})
      . mapping _Coerce

-- | The ID of the account for which to get\/update account tax settings.
acbre1AccountId :: Lens' AccounttaxCustomBatchRequestEntry (Maybe Word64)
acbre1AccountId
  = lens _acbre1AccountId
      (\ s a -> s{_acbre1AccountId = a})
      . mapping _Coerce

-- | The method of the batch entry. Acceptable values are: - \"\`get\`\" -
-- \"\`update\`\"
acbre1Method :: Lens' AccounttaxCustomBatchRequestEntry (Maybe Text)
acbre1Method
  = lens _acbre1Method (\ s a -> s{_acbre1Method = a})

-- | An entry ID, unique within the batch request.
acbre1BatchId :: Lens' AccounttaxCustomBatchRequestEntry (Maybe Word32)
acbre1BatchId
  = lens _acbre1BatchId
      (\ s a -> s{_acbre1BatchId = a})
      . mapping _Coerce

instance FromJSON AccounttaxCustomBatchRequestEntry
         where
        parseJSON
          = withObject "AccounttaxCustomBatchRequestEntry"
              (\ o ->
                 AccounttaxCustomBatchRequestEntry' <$>
                   (o .:? "accountTax") <*> (o .:? "merchantId") <*>
                     (o .:? "accountId")
                     <*> (o .:? "method")
                     <*> (o .:? "batchId"))

instance ToJSON AccounttaxCustomBatchRequestEntry
         where
        toJSON AccounttaxCustomBatchRequestEntry'{..}
          = object
              (catMaybes
                 [("accountTax" .=) <$> _acbre1AccountTax,
                  ("merchantId" .=) <$> _acbre1MerchantId,
                  ("accountId" .=) <$> _acbre1AccountId,
                  ("method" .=) <$> _acbre1Method,
                  ("batchId" .=) <$> _acbre1BatchId])

-- | The line items of the order.
--
-- /See:/ 'orderTrackingSignalLineItemDetails' smart constructor.
data OrderTrackingSignalLineItemDetails =
  OrderTrackingSignalLineItemDetails'
    { _otslidQuantity :: !(Maybe (Textual Int64))
    , _otslidLineItemId :: !(Maybe Text)
    , _otslidGtin :: !(Maybe Text)
    , _otslidMpn :: !(Maybe Text)
    , _otslidProductId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderTrackingSignalLineItemDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'otslidQuantity'
--
-- * 'otslidLineItemId'
--
-- * 'otslidGtin'
--
-- * 'otslidMpn'
--
-- * 'otslidProductId'
orderTrackingSignalLineItemDetails
    :: OrderTrackingSignalLineItemDetails
orderTrackingSignalLineItemDetails =
  OrderTrackingSignalLineItemDetails'
    { _otslidQuantity = Nothing
    , _otslidLineItemId = Nothing
    , _otslidGtin = Nothing
    , _otslidMpn = Nothing
    , _otslidProductId = Nothing
    }


-- | Required. The quantity of the line item in the order.
otslidQuantity :: Lens' OrderTrackingSignalLineItemDetails (Maybe Int64)
otslidQuantity
  = lens _otslidQuantity
      (\ s a -> s{_otslidQuantity = a})
      . mapping _Coerce

-- | Required. The ID for this line item.
otslidLineItemId :: Lens' OrderTrackingSignalLineItemDetails (Maybe Text)
otslidLineItemId
  = lens _otslidLineItemId
      (\ s a -> s{_otslidLineItemId = a})

-- | The Global Trade Item Number.
otslidGtin :: Lens' OrderTrackingSignalLineItemDetails (Maybe Text)
otslidGtin
  = lens _otslidGtin (\ s a -> s{_otslidGtin = a})

-- | The manufacturer part number.
otslidMpn :: Lens' OrderTrackingSignalLineItemDetails (Maybe Text)
otslidMpn
  = lens _otslidMpn (\ s a -> s{_otslidMpn = a})

-- | Required. The Content API REST ID of the product, in the form
-- channel:contentLanguage:targetCountry:offerId.
otslidProductId :: Lens' OrderTrackingSignalLineItemDetails (Maybe Text)
otslidProductId
  = lens _otslidProductId
      (\ s a -> s{_otslidProductId = a})

instance FromJSON OrderTrackingSignalLineItemDetails
         where
        parseJSON
          = withObject "OrderTrackingSignalLineItemDetails"
              (\ o ->
                 OrderTrackingSignalLineItemDetails' <$>
                   (o .:? "quantity") <*> (o .:? "lineItemId") <*>
                     (o .:? "gtin")
                     <*> (o .:? "mpn")
                     <*> (o .:? "productId"))

instance ToJSON OrderTrackingSignalLineItemDetails
         where
        toJSON OrderTrackingSignalLineItemDetails'{..}
          = object
              (catMaybes
                 [("quantity" .=) <$> _otslidQuantity,
                  ("lineItemId" .=) <$> _otslidLineItemId,
                  ("gtin" .=) <$> _otslidGtin,
                  ("mpn" .=) <$> _otslidMpn,
                  ("productId" .=) <$> _otslidProductId])

--
-- /See:/ 'shippingSettingsGetSupportedPickupServicesResponse' smart constructor.
data ShippingSettingsGetSupportedPickupServicesResponse =
  ShippingSettingsGetSupportedPickupServicesResponse'
    { _ssgspsrKind :: !(Maybe Text)
    , _ssgspsrPickupServices :: !(Maybe [PickupServicesPickupService])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ShippingSettingsGetSupportedPickupServicesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssgspsrKind'
--
-- * 'ssgspsrPickupServices'
shippingSettingsGetSupportedPickupServicesResponse
    :: ShippingSettingsGetSupportedPickupServicesResponse
shippingSettingsGetSupportedPickupServicesResponse =
  ShippingSettingsGetSupportedPickupServicesResponse'
    {_ssgspsrKind = Nothing, _ssgspsrPickupServices = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#shippingsettingsGetSupportedPickupServicesResponse\".
ssgspsrKind :: Lens' ShippingSettingsGetSupportedPickupServicesResponse (Maybe Text)
ssgspsrKind
  = lens _ssgspsrKind (\ s a -> s{_ssgspsrKind = a})

-- | A list of supported pickup services. May be empty.
ssgspsrPickupServices :: Lens' ShippingSettingsGetSupportedPickupServicesResponse [PickupServicesPickupService]
ssgspsrPickupServices
  = lens _ssgspsrPickupServices
      (\ s a -> s{_ssgspsrPickupServices = a})
      . _Default
      . _Coerce

instance FromJSON
           ShippingSettingsGetSupportedPickupServicesResponse
         where
        parseJSON
          = withObject
              "ShippingSettingsGetSupportedPickupServicesResponse"
              (\ o ->
                 ShippingSettingsGetSupportedPickupServicesResponse'
                   <$>
                   (o .:? "kind") <*>
                     (o .:? "pickupServices" .!= mempty))

instance ToJSON
           ShippingSettingsGetSupportedPickupServicesResponse
         where
        toJSON
          ShippingSettingsGetSupportedPickupServicesResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _ssgspsrKind,
                  ("pickupServices" .=) <$> _ssgspsrPickupServices])

-- | An error occurring in the feed, like \"invalid price\".
--
-- /See:/ 'datafeedStatusError' smart constructor.
data DatafeedStatusError =
  DatafeedStatusError'
    { _dseCount :: !(Maybe (Textual Word64))
    , _dseCode :: !(Maybe Text)
    , _dseMessage :: !(Maybe Text)
    , _dseExamples :: !(Maybe [DatafeedStatusExample])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatafeedStatusError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dseCount'
--
-- * 'dseCode'
--
-- * 'dseMessage'
--
-- * 'dseExamples'
datafeedStatusError
    :: DatafeedStatusError
datafeedStatusError =
  DatafeedStatusError'
    { _dseCount = Nothing
    , _dseCode = Nothing
    , _dseMessage = Nothing
    , _dseExamples = Nothing
    }


-- | The number of occurrences of the error in the feed.
dseCount :: Lens' DatafeedStatusError (Maybe Word64)
dseCount
  = lens _dseCount (\ s a -> s{_dseCount = a}) .
      mapping _Coerce

-- | The code of the error, e.g., \"validation\/invalid_value\".
dseCode :: Lens' DatafeedStatusError (Maybe Text)
dseCode = lens _dseCode (\ s a -> s{_dseCode = a})

-- | The error message, e.g., \"Invalid price\".
dseMessage :: Lens' DatafeedStatusError (Maybe Text)
dseMessage
  = lens _dseMessage (\ s a -> s{_dseMessage = a})

-- | A list of example occurrences of the error, grouped by product.
dseExamples :: Lens' DatafeedStatusError [DatafeedStatusExample]
dseExamples
  = lens _dseExamples (\ s a -> s{_dseExamples = a}) .
      _Default
      . _Coerce

instance FromJSON DatafeedStatusError where
        parseJSON
          = withObject "DatafeedStatusError"
              (\ o ->
                 DatafeedStatusError' <$>
                   (o .:? "count") <*> (o .:? "code") <*>
                     (o .:? "message")
                     <*> (o .:? "examples" .!= mempty))

instance ToJSON DatafeedStatusError where
        toJSON DatafeedStatusError'{..}
          = object
              (catMaybes
                 [("count" .=) <$> _dseCount,
                  ("code" .=) <$> _dseCode,
                  ("message" .=) <$> _dseMessage,
                  ("examples" .=) <$> _dseExamples])

--
-- /See:/ 'productsCustomBatchRequest' smart constructor.
newtype ProductsCustomBatchRequest =
  ProductsCustomBatchRequest'
    { _ppEntries :: Maybe [ProductsCustomBatchRequestEntry]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductsCustomBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppEntries'
productsCustomBatchRequest
    :: ProductsCustomBatchRequest
productsCustomBatchRequest = ProductsCustomBatchRequest' {_ppEntries = Nothing}


-- | The request entries to be processed in the batch.
ppEntries :: Lens' ProductsCustomBatchRequest [ProductsCustomBatchRequestEntry]
ppEntries
  = lens _ppEntries (\ s a -> s{_ppEntries = a}) .
      _Default
      . _Coerce

instance FromJSON ProductsCustomBatchRequest where
        parseJSON
          = withObject "ProductsCustomBatchRequest"
              (\ o ->
                 ProductsCustomBatchRequest' <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON ProductsCustomBatchRequest where
        toJSON ProductsCustomBatchRequest'{..}
          = object (catMaybes [("entries" .=) <$> _ppEntries])

--
-- /See:/ 'posDataProviders' smart constructor.
data PosDataProviders =
  PosDataProviders'
    { _pdpCountry :: !(Maybe Text)
    , _pdpPosDataProviders :: !(Maybe [PosDataProvidersPosDataProvider])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PosDataProviders' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdpCountry'
--
-- * 'pdpPosDataProviders'
posDataProviders
    :: PosDataProviders
posDataProviders =
  PosDataProviders' {_pdpCountry = Nothing, _pdpPosDataProviders = Nothing}


-- | Country code.
pdpCountry :: Lens' PosDataProviders (Maybe Text)
pdpCountry
  = lens _pdpCountry (\ s a -> s{_pdpCountry = a})

-- | A list of POS data providers.
pdpPosDataProviders :: Lens' PosDataProviders [PosDataProvidersPosDataProvider]
pdpPosDataProviders
  = lens _pdpPosDataProviders
      (\ s a -> s{_pdpPosDataProviders = a})
      . _Default
      . _Coerce

instance FromJSON PosDataProviders where
        parseJSON
          = withObject "PosDataProviders"
              (\ o ->
                 PosDataProviders' <$>
                   (o .:? "country") <*>
                     (o .:? "posDataProviders" .!= mempty))

instance ToJSON PosDataProviders where
        toJSON PosDataProviders'{..}
          = object
              (catMaybes
                 [("country" .=) <$> _pdpCountry,
                  ("posDataProviders" .=) <$> _pdpPosDataProviders])

-- | The absolute quantity of an item available at the given store.
--
-- /See:/ 'posInventory' smart constructor.
data PosInventory =
  PosInventory'
    { _piStoreCode :: !(Maybe Text)
    , _piKind :: !(Maybe Text)
    , _piItemId :: !(Maybe Text)
    , _piQuantity :: !(Maybe (Textual Int64))
    , _piTargetCountry :: !(Maybe Text)
    , _piGtin :: !(Maybe Text)
    , _piPrice :: !(Maybe Price)
    , _piContentLanguage :: !(Maybe Text)
    , _piTimestamp :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PosInventory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piStoreCode'
--
-- * 'piKind'
--
-- * 'piItemId'
--
-- * 'piQuantity'
--
-- * 'piTargetCountry'
--
-- * 'piGtin'
--
-- * 'piPrice'
--
-- * 'piContentLanguage'
--
-- * 'piTimestamp'
posInventory
    :: PosInventory
posInventory =
  PosInventory'
    { _piStoreCode = Nothing
    , _piKind = Nothing
    , _piItemId = Nothing
    , _piQuantity = Nothing
    , _piTargetCountry = Nothing
    , _piGtin = Nothing
    , _piPrice = Nothing
    , _piContentLanguage = Nothing
    , _piTimestamp = Nothing
    }


-- | Required. The identifier of the merchant\'s store. Either a
-- \`storeCode\` inserted via the API or the code of the store in Google My
-- Business.
piStoreCode :: Lens' PosInventory (Maybe Text)
piStoreCode
  = lens _piStoreCode (\ s a -> s{_piStoreCode = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"\`content#posInventory\`\"
piKind :: Lens' PosInventory (Maybe Text)
piKind = lens _piKind (\ s a -> s{_piKind = a})

-- | Required. A unique identifier for the item.
piItemId :: Lens' PosInventory (Maybe Text)
piItemId = lens _piItemId (\ s a -> s{_piItemId = a})

-- | Required. The available quantity of the item.
piQuantity :: Lens' PosInventory (Maybe Int64)
piQuantity
  = lens _piQuantity (\ s a -> s{_piQuantity = a}) .
      mapping _Coerce

-- | Required. The CLDR territory code for the item.
piTargetCountry :: Lens' PosInventory (Maybe Text)
piTargetCountry
  = lens _piTargetCountry
      (\ s a -> s{_piTargetCountry = a})

-- | Global Trade Item Number.
piGtin :: Lens' PosInventory (Maybe Text)
piGtin = lens _piGtin (\ s a -> s{_piGtin = a})

-- | Required. The current price of the item.
piPrice :: Lens' PosInventory (Maybe Price)
piPrice = lens _piPrice (\ s a -> s{_piPrice = a})

-- | Required. The two-letter ISO 639-1 language code for the item.
piContentLanguage :: Lens' PosInventory (Maybe Text)
piContentLanguage
  = lens _piContentLanguage
      (\ s a -> s{_piContentLanguage = a})

-- | Required. The inventory timestamp, in ISO 8601 format.
piTimestamp :: Lens' PosInventory (Maybe Text)
piTimestamp
  = lens _piTimestamp (\ s a -> s{_piTimestamp = a})

instance FromJSON PosInventory where
        parseJSON
          = withObject "PosInventory"
              (\ o ->
                 PosInventory' <$>
                   (o .:? "storeCode") <*> (o .:? "kind") <*>
                     (o .:? "itemId")
                     <*> (o .:? "quantity")
                     <*> (o .:? "targetCountry")
                     <*> (o .:? "gtin")
                     <*> (o .:? "price")
                     <*> (o .:? "contentLanguage")
                     <*> (o .:? "timestamp"))

instance ToJSON PosInventory where
        toJSON PosInventory'{..}
          = object
              (catMaybes
                 [("storeCode" .=) <$> _piStoreCode,
                  ("kind" .=) <$> _piKind, ("itemId" .=) <$> _piItemId,
                  ("quantity" .=) <$> _piQuantity,
                  ("targetCountry" .=) <$> _piTargetCountry,
                  ("gtin" .=) <$> _piGtin, ("price" .=) <$> _piPrice,
                  ("contentLanguage" .=) <$> _piContentLanguage,
                  ("timestamp" .=) <$> _piTimestamp])

-- | A repricing rule that changes the sale price based on cost of goods
-- sale.
--
-- /See:/ 'repricingRuleCostOfGoodsSaleRule' smart constructor.
data RepricingRuleCostOfGoodsSaleRule =
  RepricingRuleCostOfGoodsSaleRule'
    { _rrcogsrPriceDelta :: !(Maybe Text)
    , _rrcogsrPercentageDelta :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RepricingRuleCostOfGoodsSaleRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrcogsrPriceDelta'
--
-- * 'rrcogsrPercentageDelta'
repricingRuleCostOfGoodsSaleRule
    :: RepricingRuleCostOfGoodsSaleRule
repricingRuleCostOfGoodsSaleRule =
  RepricingRuleCostOfGoodsSaleRule'
    {_rrcogsrPriceDelta = Nothing, _rrcogsrPercentageDelta = Nothing}


-- | The price delta against the COGS. E.g. 2 means $2 more of the COGS.
rrcogsrPriceDelta :: Lens' RepricingRuleCostOfGoodsSaleRule (Maybe Text)
rrcogsrPriceDelta
  = lens _rrcogsrPriceDelta
      (\ s a -> s{_rrcogsrPriceDelta = a})

-- | The percent change against the COGS. Ex: 20 would mean to set the
-- adjusted price 1.2X of the COGS data.
rrcogsrPercentageDelta :: Lens' RepricingRuleCostOfGoodsSaleRule (Maybe Int32)
rrcogsrPercentageDelta
  = lens _rrcogsrPercentageDelta
      (\ s a -> s{_rrcogsrPercentageDelta = a})
      . mapping _Coerce

instance FromJSON RepricingRuleCostOfGoodsSaleRule
         where
        parseJSON
          = withObject "RepricingRuleCostOfGoodsSaleRule"
              (\ o ->
                 RepricingRuleCostOfGoodsSaleRule' <$>
                   (o .:? "priceDelta") <*> (o .:? "percentageDelta"))

instance ToJSON RepricingRuleCostOfGoodsSaleRule
         where
        toJSON RepricingRuleCostOfGoodsSaleRule'{..}
          = object
              (catMaybes
                 [("priceDelta" .=) <$> _rrcogsrPriceDelta,
                  ("percentageDelta" .=) <$> _rrcogsrPercentageDelta])

--
-- /See:/ 'testOrderDeliveryDetails' smart constructor.
data TestOrderDeliveryDetails =
  TestOrderDeliveryDetails'
    { _toddAddress :: !(Maybe TestOrderAddress)
    , _toddPhoneNumber :: !(Maybe Text)
    , _toddIsScheduledDelivery :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestOrderDeliveryDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'toddAddress'
--
-- * 'toddPhoneNumber'
--
-- * 'toddIsScheduledDelivery'
testOrderDeliveryDetails
    :: TestOrderDeliveryDetails
testOrderDeliveryDetails =
  TestOrderDeliveryDetails'
    { _toddAddress = Nothing
    , _toddPhoneNumber = Nothing
    , _toddIsScheduledDelivery = Nothing
    }


-- | The delivery address
toddAddress :: Lens' TestOrderDeliveryDetails (Maybe TestOrderAddress)
toddAddress
  = lens _toddAddress (\ s a -> s{_toddAddress = a})

-- | The phone number of the person receiving the delivery.
toddPhoneNumber :: Lens' TestOrderDeliveryDetails (Maybe Text)
toddPhoneNumber
  = lens _toddPhoneNumber
      (\ s a -> s{_toddPhoneNumber = a})

-- | Whether the order is scheduled delivery order.
toddIsScheduledDelivery :: Lens' TestOrderDeliveryDetails (Maybe Bool)
toddIsScheduledDelivery
  = lens _toddIsScheduledDelivery
      (\ s a -> s{_toddIsScheduledDelivery = a})

instance FromJSON TestOrderDeliveryDetails where
        parseJSON
          = withObject "TestOrderDeliveryDetails"
              (\ o ->
                 TestOrderDeliveryDetails' <$>
                   (o .:? "address") <*> (o .:? "phoneNumber") <*>
                     (o .:? "isScheduledDelivery"))

instance ToJSON TestOrderDeliveryDetails where
        toJSON TestOrderDeliveryDetails'{..}
          = object
              (catMaybes
                 [("address" .=) <$> _toddAddress,
                  ("phoneNumber" .=) <$> _toddPhoneNumber,
                  ("isScheduledDelivery" .=) <$>
                    _toddIsScheduledDelivery])

--
-- /See:/ 'liaSettingsListPosDataProvidersResponse' smart constructor.
data LiaSettingsListPosDataProvidersResponse =
  LiaSettingsListPosDataProvidersResponse'
    { _lslpdprKind :: !(Maybe Text)
    , _lslpdprPosDataProviders :: !(Maybe [PosDataProviders])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiaSettingsListPosDataProvidersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lslpdprKind'
--
-- * 'lslpdprPosDataProviders'
liaSettingsListPosDataProvidersResponse
    :: LiaSettingsListPosDataProvidersResponse
liaSettingsListPosDataProvidersResponse =
  LiaSettingsListPosDataProvidersResponse'
    {_lslpdprKind = Nothing, _lslpdprPosDataProviders = Nothing}


-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#liasettingsListPosDataProvidersResponse\".
lslpdprKind :: Lens' LiaSettingsListPosDataProvidersResponse (Maybe Text)
lslpdprKind
  = lens _lslpdprKind (\ s a -> s{_lslpdprKind = a})

-- | The list of POS data providers for each eligible country
lslpdprPosDataProviders :: Lens' LiaSettingsListPosDataProvidersResponse [PosDataProviders]
lslpdprPosDataProviders
  = lens _lslpdprPosDataProviders
      (\ s a -> s{_lslpdprPosDataProviders = a})
      . _Default
      . _Coerce

instance FromJSON
           LiaSettingsListPosDataProvidersResponse
         where
        parseJSON
          = withObject
              "LiaSettingsListPosDataProvidersResponse"
              (\ o ->
                 LiaSettingsListPosDataProvidersResponse' <$>
                   (o .:? "kind") <*>
                     (o .:? "posDataProviders" .!= mempty))

instance ToJSON
           LiaSettingsListPosDataProvidersResponse
         where
        toJSON LiaSettingsListPosDataProvidersResponse'{..}
          = object
              (catMaybes
                 [("kind" .=) <$> _lslpdprKind,
                  ("posDataProviders" .=) <$>
                    _lslpdprPosDataProviders])

--
-- /See:/ 'orderinvoicesCreateRefundInvoiceRequest' smart constructor.
data OrderinvoicesCreateRefundInvoiceRequest =
  OrderinvoicesCreateRefundInvoiceRequest'
    { _ocrirRefundOnlyOption :: !(Maybe OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption)
    , _ocrirInvoiceId :: !(Maybe Text)
    , _ocrirShipmentInvoices :: !(Maybe [ShipmentInvoice])
    , _ocrirOperationId :: !(Maybe Text)
    , _ocrirReturnOption :: !(Maybe OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderinvoicesCreateRefundInvoiceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocrirRefundOnlyOption'
--
-- * 'ocrirInvoiceId'
--
-- * 'ocrirShipmentInvoices'
--
-- * 'ocrirOperationId'
--
-- * 'ocrirReturnOption'
orderinvoicesCreateRefundInvoiceRequest
    :: OrderinvoicesCreateRefundInvoiceRequest
orderinvoicesCreateRefundInvoiceRequest =
  OrderinvoicesCreateRefundInvoiceRequest'
    { _ocrirRefundOnlyOption = Nothing
    , _ocrirInvoiceId = Nothing
    , _ocrirShipmentInvoices = Nothing
    , _ocrirOperationId = Nothing
    , _ocrirReturnOption = Nothing
    }


-- | Option to create a refund-only invoice. Exactly one of
-- \`refundOnlyOption\` or \`returnOption\` must be provided.
ocrirRefundOnlyOption :: Lens' OrderinvoicesCreateRefundInvoiceRequest (Maybe OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption)
ocrirRefundOnlyOption
  = lens _ocrirRefundOnlyOption
      (\ s a -> s{_ocrirRefundOnlyOption = a})

-- | [required] The ID of the invoice.
ocrirInvoiceId :: Lens' OrderinvoicesCreateRefundInvoiceRequest (Maybe Text)
ocrirInvoiceId
  = lens _ocrirInvoiceId
      (\ s a -> s{_ocrirInvoiceId = a})

-- | Invoice details for different shipment groups.
ocrirShipmentInvoices :: Lens' OrderinvoicesCreateRefundInvoiceRequest [ShipmentInvoice]
ocrirShipmentInvoices
  = lens _ocrirShipmentInvoices
      (\ s a -> s{_ocrirShipmentInvoices = a})
      . _Default
      . _Coerce

-- | [required] The ID of the operation, unique across all operations for a
-- given order.
ocrirOperationId :: Lens' OrderinvoicesCreateRefundInvoiceRequest (Maybe Text)
ocrirOperationId
  = lens _ocrirOperationId
      (\ s a -> s{_ocrirOperationId = a})

-- | Option to create an invoice for a refund and mark all items within the
-- invoice as returned. Exactly one of \`refundOnlyOption\` or
-- \`returnOption\` must be provided.
ocrirReturnOption :: Lens' OrderinvoicesCreateRefundInvoiceRequest (Maybe OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption)
ocrirReturnOption
  = lens _ocrirReturnOption
      (\ s a -> s{_ocrirReturnOption = a})

instance FromJSON
           OrderinvoicesCreateRefundInvoiceRequest
         where
        parseJSON
          = withObject
              "OrderinvoicesCreateRefundInvoiceRequest"
              (\ o ->
                 OrderinvoicesCreateRefundInvoiceRequest' <$>
                   (o .:? "refundOnlyOption") <*> (o .:? "invoiceId")
                     <*> (o .:? "shipmentInvoices" .!= mempty)
                     <*> (o .:? "operationId")
                     <*> (o .:? "returnOption"))

instance ToJSON
           OrderinvoicesCreateRefundInvoiceRequest
         where
        toJSON OrderinvoicesCreateRefundInvoiceRequest'{..}
          = object
              (catMaybes
                 [("refundOnlyOption" .=) <$> _ocrirRefundOnlyOption,
                  ("invoiceId" .=) <$> _ocrirInvoiceId,
                  ("shipmentInvoices" .=) <$> _ocrirShipmentInvoices,
                  ("operationId" .=) <$> _ocrirOperationId,
                  ("returnOption" .=) <$> _ocrirReturnOption])

-- | The status of a datafeed, i.e., the result of the last retrieval of the
-- datafeed computed asynchronously when the feed processing is finished.
--
-- /See:/ 'datafeedStatus' smart constructor.
data DatafeedStatus =
  DatafeedStatus'
    { _dsItemsTotal :: !(Maybe (Textual Word64))
    , _dsCountry :: !(Maybe Text)
    , _dsKind :: !(Maybe Text)
    , _dsWarnings :: !(Maybe [DatafeedStatusError])
    , _dsDatafeedId :: !(Maybe (Textual Word64))
    , _dsProcessingStatus :: !(Maybe Text)
    , _dsLanguage :: !(Maybe Text)
    , _dsLastUploadDate :: !(Maybe Text)
    , _dsItemsValid :: !(Maybe (Textual Word64))
    , _dsErrors :: !(Maybe [DatafeedStatusError])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatafeedStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsItemsTotal'
--
-- * 'dsCountry'
--
-- * 'dsKind'
--
-- * 'dsWarnings'
--
-- * 'dsDatafeedId'
--
-- * 'dsProcessingStatus'
--
-- * 'dsLanguage'
--
-- * 'dsLastUploadDate'
--
-- * 'dsItemsValid'
--
-- * 'dsErrors'
datafeedStatus
    :: DatafeedStatus
datafeedStatus =
  DatafeedStatus'
    { _dsItemsTotal = Nothing
    , _dsCountry = Nothing
    , _dsKind = Nothing
    , _dsWarnings = Nothing
    , _dsDatafeedId = Nothing
    , _dsProcessingStatus = Nothing
    , _dsLanguage = Nothing
    , _dsLastUploadDate = Nothing
    , _dsItemsValid = Nothing
    , _dsErrors = Nothing
    }


-- | The number of items in the feed that were processed.
dsItemsTotal :: Lens' DatafeedStatus (Maybe Word64)
dsItemsTotal
  = lens _dsItemsTotal (\ s a -> s{_dsItemsTotal = a})
      . mapping _Coerce

-- | The country for which the status is reported, represented as a CLDR
-- territory code.
dsCountry :: Lens' DatafeedStatus (Maybe Text)
dsCountry
  = lens _dsCountry (\ s a -> s{_dsCountry = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"\`content#datafeedStatus\`\"
dsKind :: Lens' DatafeedStatus (Maybe Text)
dsKind = lens _dsKind (\ s a -> s{_dsKind = a})

-- | The list of errors occurring in the feed.
dsWarnings :: Lens' DatafeedStatus [DatafeedStatusError]
dsWarnings
  = lens _dsWarnings (\ s a -> s{_dsWarnings = a}) .
      _Default
      . _Coerce

-- | The ID of the feed for which the status is reported.
dsDatafeedId :: Lens' DatafeedStatus (Maybe Word64)
dsDatafeedId
  = lens _dsDatafeedId (\ s a -> s{_dsDatafeedId = a})
      . mapping _Coerce

-- | The processing status of the feed. Acceptable values are: -
-- \"\`\"\`failure\`\": The feed could not be processed or all items had
-- errors.\`\" - \"\`in progress\`\": The feed is being processed. -
-- \"\`none\`\": The feed has not yet been processed. For example, a feed
-- that has never been uploaded will have this processing status. -
-- \"\`success\`\": The feed was processed successfully, though some items
-- might have had errors.
dsProcessingStatus :: Lens' DatafeedStatus (Maybe Text)
dsProcessingStatus
  = lens _dsProcessingStatus
      (\ s a -> s{_dsProcessingStatus = a})

-- | The two-letter ISO 639-1 language for which the status is reported.
dsLanguage :: Lens' DatafeedStatus (Maybe Text)
dsLanguage
  = lens _dsLanguage (\ s a -> s{_dsLanguage = a})

-- | The last date at which the feed was uploaded.
dsLastUploadDate :: Lens' DatafeedStatus (Maybe Text)
dsLastUploadDate
  = lens _dsLastUploadDate
      (\ s a -> s{_dsLastUploadDate = a})

-- | The number of items in the feed that were valid.
dsItemsValid :: Lens' DatafeedStatus (Maybe Word64)
dsItemsValid
  = lens _dsItemsValid (\ s a -> s{_dsItemsValid = a})
      . mapping _Coerce

-- | The list of errors occurring in the feed.
dsErrors :: Lens' DatafeedStatus [DatafeedStatusError]
dsErrors
  = lens _dsErrors (\ s a -> s{_dsErrors = a}) .
      _Default
      . _Coerce

instance FromJSON DatafeedStatus where
        parseJSON
          = withObject "DatafeedStatus"
              (\ o ->
                 DatafeedStatus' <$>
                   (o .:? "itemsTotal") <*> (o .:? "country") <*>
                     (o .:? "kind")
                     <*> (o .:? "warnings" .!= mempty)
                     <*> (o .:? "datafeedId")
                     <*> (o .:? "processingStatus")
                     <*> (o .:? "language")
                     <*> (o .:? "lastUploadDate")
                     <*> (o .:? "itemsValid")
                     <*> (o .:? "errors" .!= mempty))

instance ToJSON DatafeedStatus where
        toJSON DatafeedStatus'{..}
          = object
              (catMaybes
                 [("itemsTotal" .=) <$> _dsItemsTotal,
                  ("country" .=) <$> _dsCountry,
                  ("kind" .=) <$> _dsKind,
                  ("warnings" .=) <$> _dsWarnings,
                  ("datafeedId" .=) <$> _dsDatafeedId,
                  ("processingStatus" .=) <$> _dsProcessingStatus,
                  ("language" .=) <$> _dsLanguage,
                  ("lastUploadDate" .=) <$> _dsLastUploadDate,
                  ("itemsValid" .=) <$> _dsItemsValid,
                  ("errors" .=) <$> _dsErrors])

--
-- /See:/ 'datafeedstatusesCustomBatchRequest' smart constructor.
newtype DatafeedstatusesCustomBatchRequest =
  DatafeedstatusesCustomBatchRequest'
    { _dcbrcEntries :: Maybe [DatafeedstatusesCustomBatchRequestEntry]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatafeedstatusesCustomBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcbrcEntries'
datafeedstatusesCustomBatchRequest
    :: DatafeedstatusesCustomBatchRequest
datafeedstatusesCustomBatchRequest =
  DatafeedstatusesCustomBatchRequest' {_dcbrcEntries = Nothing}


-- | The request entries to be processed in the batch.
dcbrcEntries :: Lens' DatafeedstatusesCustomBatchRequest [DatafeedstatusesCustomBatchRequestEntry]
dcbrcEntries
  = lens _dcbrcEntries (\ s a -> s{_dcbrcEntries = a})
      . _Default
      . _Coerce

instance FromJSON DatafeedstatusesCustomBatchRequest
         where
        parseJSON
          = withObject "DatafeedstatusesCustomBatchRequest"
              (\ o ->
                 DatafeedstatusesCustomBatchRequest' <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON DatafeedstatusesCustomBatchRequest
         where
        toJSON DatafeedstatusesCustomBatchRequest'{..}
          = object
              (catMaybes [("entries" .=) <$> _dcbrcEntries])

--
-- /See:/ 'returnpolicyCustomBatchResponse' smart constructor.
data ReturnpolicyCustomBatchResponse =
  ReturnpolicyCustomBatchResponse'
    { _rcbrcEntries :: !(Maybe [ReturnpolicyCustomBatchResponseEntry])
    , _rcbrcKind :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReturnpolicyCustomBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcbrcEntries'
--
-- * 'rcbrcKind'
returnpolicyCustomBatchResponse
    :: ReturnpolicyCustomBatchResponse
returnpolicyCustomBatchResponse =
  ReturnpolicyCustomBatchResponse'
    {_rcbrcEntries = Nothing, _rcbrcKind = Nothing}


-- | The result of the execution of the batch requests.
rcbrcEntries :: Lens' ReturnpolicyCustomBatchResponse [ReturnpolicyCustomBatchResponseEntry]
rcbrcEntries
  = lens _rcbrcEntries (\ s a -> s{_rcbrcEntries = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#returnpolicyCustomBatchResponse\".
rcbrcKind :: Lens' ReturnpolicyCustomBatchResponse (Maybe Text)
rcbrcKind
  = lens _rcbrcKind (\ s a -> s{_rcbrcKind = a})

instance FromJSON ReturnpolicyCustomBatchResponse
         where
        parseJSON
          = withObject "ReturnpolicyCustomBatchResponse"
              (\ o ->
                 ReturnpolicyCustomBatchResponse' <$>
                   (o .:? "entries" .!= mempty) <*> (o .:? "kind"))

instance ToJSON ReturnpolicyCustomBatchResponse where
        toJSON ReturnpolicyCustomBatchResponse'{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _rcbrcEntries,
                  ("kind" .=) <$> _rcbrcKind])

-- | Credentials allowing Google to call a partner\'s API on behalf of a
-- merchant.
--
-- /See:/ 'accountCredentials' smart constructor.
data AccountCredentials =
  AccountCredentials'
    { _acAccessToken :: !(Maybe Text)
    , _acPurpose :: !(Maybe AccountCredentialsPurpose)
    , _acExpiresIn :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountCredentials' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acAccessToken'
--
-- * 'acPurpose'
--
-- * 'acExpiresIn'
accountCredentials
    :: AccountCredentials
accountCredentials =
  AccountCredentials'
    {_acAccessToken = Nothing, _acPurpose = Nothing, _acExpiresIn = Nothing}


-- | An OAuth access token.
acAccessToken :: Lens' AccountCredentials (Maybe Text)
acAccessToken
  = lens _acAccessToken
      (\ s a -> s{_acAccessToken = a})

-- | Indicates to Google how Google should use these OAuth tokens.
acPurpose :: Lens' AccountCredentials (Maybe AccountCredentialsPurpose)
acPurpose
  = lens _acPurpose (\ s a -> s{_acPurpose = a})

-- | The amount of time, in seconds, after which the access token is no
-- longer valid.
acExpiresIn :: Lens' AccountCredentials (Maybe Int64)
acExpiresIn
  = lens _acExpiresIn (\ s a -> s{_acExpiresIn = a}) .
      mapping _Coerce

instance FromJSON AccountCredentials where
        parseJSON
          = withObject "AccountCredentials"
              (\ o ->
                 AccountCredentials' <$>
                   (o .:? "accessToken") <*> (o .:? "purpose") <*>
                     (o .:? "expiresIn"))

instance ToJSON AccountCredentials where
        toJSON AccountCredentials'{..}
          = object
              (catMaybes
                 [("accessToken" .=) <$> _acAccessToken,
                  ("purpose" .=) <$> _acPurpose,
                  ("expiresIn" .=) <$> _acExpiresIn])

--
-- /See:/ 'ordersCustomBatchRequestEntryRefundItemItem' smart constructor.
data OrdersCustomBatchRequestEntryRefundItemItem =
  OrdersCustomBatchRequestEntryRefundItemItem'
    { _ocbreriiAmount :: !(Maybe MonetaryAmount)
    , _ocbreriiFullRefund :: !(Maybe Bool)
    , _ocbreriiQuantity :: !(Maybe (Textual Int32))
    , _ocbreriiLineItemId :: !(Maybe Text)
    , _ocbreriiProductId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersCustomBatchRequestEntryRefundItemItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocbreriiAmount'
--
-- * 'ocbreriiFullRefund'
--
-- * 'ocbreriiQuantity'
--
-- * 'ocbreriiLineItemId'
--
-- * 'ocbreriiProductId'
ordersCustomBatchRequestEntryRefundItemItem
    :: OrdersCustomBatchRequestEntryRefundItemItem
ordersCustomBatchRequestEntryRefundItemItem =
  OrdersCustomBatchRequestEntryRefundItemItem'
    { _ocbreriiAmount = Nothing
    , _ocbreriiFullRefund = Nothing
    , _ocbreriiQuantity = Nothing
    , _ocbreriiLineItemId = Nothing
    , _ocbreriiProductId = Nothing
    }


-- | The total amount that is refunded. (e.g. refunding $5 each for 2
-- products should be done by setting quantity to 2 and amount to 10$) In
-- case of multiple refunds, this should be the amount you currently want
-- to refund to the customer.
ocbreriiAmount :: Lens' OrdersCustomBatchRequestEntryRefundItemItem (Maybe MonetaryAmount)
ocbreriiAmount
  = lens _ocbreriiAmount
      (\ s a -> s{_ocbreriiAmount = a})

-- | If true, the full item will be refunded. If this is true, amount should
-- not be provided and will be ignored.
ocbreriiFullRefund :: Lens' OrdersCustomBatchRequestEntryRefundItemItem (Maybe Bool)
ocbreriiFullRefund
  = lens _ocbreriiFullRefund
      (\ s a -> s{_ocbreriiFullRefund = a})

-- | The number of products that are refunded.
ocbreriiQuantity :: Lens' OrdersCustomBatchRequestEntryRefundItemItem (Maybe Int32)
ocbreriiQuantity
  = lens _ocbreriiQuantity
      (\ s a -> s{_ocbreriiQuantity = a})
      . mapping _Coerce

-- | The ID of the line item. Either lineItemId or productId is required.
ocbreriiLineItemId :: Lens' OrdersCustomBatchRequestEntryRefundItemItem (Maybe Text)
ocbreriiLineItemId
  = lens _ocbreriiLineItemId
      (\ s a -> s{_ocbreriiLineItemId = a})

-- | The ID of the product. This is the REST ID used in the products service.
-- Either lineItemId or productId is required.
ocbreriiProductId :: Lens' OrdersCustomBatchRequestEntryRefundItemItem (Maybe Text)
ocbreriiProductId
  = lens _ocbreriiProductId
      (\ s a -> s{_ocbreriiProductId = a})

instance FromJSON
           OrdersCustomBatchRequestEntryRefundItemItem
         where
        parseJSON
          = withObject
              "OrdersCustomBatchRequestEntryRefundItemItem"
              (\ o ->
                 OrdersCustomBatchRequestEntryRefundItemItem' <$>
                   (o .:? "amount") <*> (o .:? "fullRefund") <*>
                     (o .:? "quantity")
                     <*> (o .:? "lineItemId")
                     <*> (o .:? "productId"))

instance ToJSON
           OrdersCustomBatchRequestEntryRefundItemItem
         where
        toJSON
          OrdersCustomBatchRequestEntryRefundItemItem'{..}
          = object
              (catMaybes
                 [("amount" .=) <$> _ocbreriiAmount,
                  ("fullRefund" .=) <$> _ocbreriiFullRefund,
                  ("quantity" .=) <$> _ocbreriiQuantity,
                  ("lineItemId" .=) <$> _ocbreriiLineItemId,
                  ("productId" .=) <$> _ocbreriiProductId])

-- | Matcher by string attributes.
--
-- /See:/ 'repricingRuleEligibleOfferMatcherStringMatcher' smart constructor.
newtype RepricingRuleEligibleOfferMatcherStringMatcher =
  RepricingRuleEligibleOfferMatcherStringMatcher'
    { _rreomsmStrAttributes :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RepricingRuleEligibleOfferMatcherStringMatcher' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rreomsmStrAttributes'
repricingRuleEligibleOfferMatcherStringMatcher
    :: RepricingRuleEligibleOfferMatcherStringMatcher
repricingRuleEligibleOfferMatcherStringMatcher =
  RepricingRuleEligibleOfferMatcherStringMatcher'
    {_rreomsmStrAttributes = Nothing}


-- | String attributes, as long as such attribute of an offer is one of the
-- string attribute values, the offer is considered as passing the matcher.
-- The string matcher checks an offer for inclusivity in the string
-- attributes, not equality. Only literal string matching is supported, no
-- regex.
rreomsmStrAttributes :: Lens' RepricingRuleEligibleOfferMatcherStringMatcher [Text]
rreomsmStrAttributes
  = lens _rreomsmStrAttributes
      (\ s a -> s{_rreomsmStrAttributes = a})
      . _Default
      . _Coerce

instance FromJSON
           RepricingRuleEligibleOfferMatcherStringMatcher
         where
        parseJSON
          = withObject
              "RepricingRuleEligibleOfferMatcherStringMatcher"
              (\ o ->
                 RepricingRuleEligibleOfferMatcherStringMatcher' <$>
                   (o .:? "strAttributes" .!= mempty))

instance ToJSON
           RepricingRuleEligibleOfferMatcherStringMatcher
         where
        toJSON
          RepricingRuleEligibleOfferMatcherStringMatcher'{..}
          = object
              (catMaybes
                 [("strAttributes" .=) <$> _rreomsmStrAttributes])

-- | Represents civil time (or occasionally physical time). This type can
-- represent a civil time in one of a few possible ways: * When utc_offset
-- is set and time_zone is unset: a civil time on a calendar day with a
-- particular offset from UTC. * When time_zone is set and utc_offset is
-- unset: a civil time on a calendar day in a particular time zone. * When
-- neither time_zone nor utc_offset is set: a civil time on a calendar day
-- in local time. The date is relative to the Proleptic Gregorian Calendar.
-- If year is 0, the DateTime is considered not to have a specific year.
-- month and day must have valid, non-zero values. This type may also be
-- used to represent a physical time if all the date and time fields are
-- set and either case of the \`time_offset\` oneof is set. Consider using
-- \`Timestamp\` message for physical time instead. If your use case also
-- would like to store the user\'s timezone, that can be done in another
-- field. This type is more flexible than some applications may want. Make
-- sure to document and validate your application\'s limitations.
--
-- /See:/ 'dateTime' smart constructor.
data DateTime =
  DateTime'
    { _dtNanos :: !(Maybe (Textual Int32))
    , _dtHours :: !(Maybe (Textual Int32))
    , _dtDay :: !(Maybe (Textual Int32))
    , _dtYear :: !(Maybe (Textual Int32))
    , _dtUtcOffSet :: !(Maybe GDuration)
    , _dtMinutes :: !(Maybe (Textual Int32))
    , _dtMonth :: !(Maybe (Textual Int32))
    , _dtTimeZone :: !(Maybe TimeZone)
    , _dtSeconds :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DateTime' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtNanos'
--
-- * 'dtHours'
--
-- * 'dtDay'
--
-- * 'dtYear'
--
-- * 'dtUtcOffSet'
--
-- * 'dtMinutes'
--
-- * 'dtMonth'
--
-- * 'dtTimeZone'
--
-- * 'dtSeconds'
dateTime
    :: DateTime
dateTime =
  DateTime'
    { _dtNanos = Nothing
    , _dtHours = Nothing
    , _dtDay = Nothing
    , _dtYear = Nothing
    , _dtUtcOffSet = Nothing
    , _dtMinutes = Nothing
    , _dtMonth = Nothing
    , _dtTimeZone = Nothing
    , _dtSeconds = Nothing
    }


-- | Required. Fractions of seconds in nanoseconds. Must be from 0 to
-- 999,999,999.
dtNanos :: Lens' DateTime (Maybe Int32)
dtNanos
  = lens _dtNanos (\ s a -> s{_dtNanos = a}) .
      mapping _Coerce

-- | Required. Hours of day in 24 hour format. Should be from 0 to 23. An API
-- may choose to allow the value \"24:00:00\" for scenarios like business
-- closing time.
dtHours :: Lens' DateTime (Maybe Int32)
dtHours
  = lens _dtHours (\ s a -> s{_dtHours = a}) .
      mapping _Coerce

-- | Required. Day of month. Must be from 1 to 31 and valid for the year and
-- month.
dtDay :: Lens' DateTime (Maybe Int32)
dtDay
  = lens _dtDay (\ s a -> s{_dtDay = a}) .
      mapping _Coerce

-- | Optional. Year of date. Must be from 1 to 9999, or 0 if specifying a
-- datetime without a year.
dtYear :: Lens' DateTime (Maybe Int32)
dtYear
  = lens _dtYear (\ s a -> s{_dtYear = a}) .
      mapping _Coerce

-- | UTC offset. Must be whole seconds, between -18 hours and +18 hours. For
-- example, a UTC offset of -4:00 would be represented as { seconds: -14400
-- }.
dtUtcOffSet :: Lens' DateTime (Maybe Scientific)
dtUtcOffSet
  = lens _dtUtcOffSet (\ s a -> s{_dtUtcOffSet = a}) .
      mapping _GDuration

-- | Required. Minutes of hour of day. Must be from 0 to 59.
dtMinutes :: Lens' DateTime (Maybe Int32)
dtMinutes
  = lens _dtMinutes (\ s a -> s{_dtMinutes = a}) .
      mapping _Coerce

-- | Required. Month of year. Must be from 1 to 12.
dtMonth :: Lens' DateTime (Maybe Int32)
dtMonth
  = lens _dtMonth (\ s a -> s{_dtMonth = a}) .
      mapping _Coerce

-- | Time zone.
dtTimeZone :: Lens' DateTime (Maybe TimeZone)
dtTimeZone
  = lens _dtTimeZone (\ s a -> s{_dtTimeZone = a})

-- | Required. Seconds of minutes of the time. Must normally be from 0 to 59.
-- An API may allow the value 60 if it allows leap-seconds.
dtSeconds :: Lens' DateTime (Maybe Int32)
dtSeconds
  = lens _dtSeconds (\ s a -> s{_dtSeconds = a}) .
      mapping _Coerce

instance FromJSON DateTime where
        parseJSON
          = withObject "DateTime"
              (\ o ->
                 DateTime' <$>
                   (o .:? "nanos") <*> (o .:? "hours") <*> (o .:? "day")
                     <*> (o .:? "year")
                     <*> (o .:? "utcOffset")
                     <*> (o .:? "minutes")
                     <*> (o .:? "month")
                     <*> (o .:? "timeZone")
                     <*> (o .:? "seconds"))

instance ToJSON DateTime where
        toJSON DateTime'{..}
          = object
              (catMaybes
                 [("nanos" .=) <$> _dtNanos,
                  ("hours" .=) <$> _dtHours, ("day" .=) <$> _dtDay,
                  ("year" .=) <$> _dtYear,
                  ("utcOffset" .=) <$> _dtUtcOffSet,
                  ("minutes" .=) <$> _dtMinutes,
                  ("month" .=) <$> _dtMonth,
                  ("timeZone" .=) <$> _dtTimeZone,
                  ("seconds" .=) <$> _dtSeconds])

--
-- /See:/ 'settlementTransactionIdentifiers' smart constructor.
data SettlementTransactionIdentifiers =
  SettlementTransactionIdentifiers'
    { _stiTransactionId :: !(Maybe Text)
    , _stiMerchantOrderId :: !(Maybe Text)
    , _stiSettlementEntryId :: !(Maybe Text)
    , _stiAdjustmentId :: !(Maybe Text)
    , _stiOrderItemId :: !(Maybe Text)
    , _stiShipmentIds :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SettlementTransactionIdentifiers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stiTransactionId'
--
-- * 'stiMerchantOrderId'
--
-- * 'stiSettlementEntryId'
--
-- * 'stiAdjustmentId'
--
-- * 'stiOrderItemId'
--
-- * 'stiShipmentIds'
settlementTransactionIdentifiers
    :: SettlementTransactionIdentifiers
settlementTransactionIdentifiers =
  SettlementTransactionIdentifiers'
    { _stiTransactionId = Nothing
    , _stiMerchantOrderId = Nothing
    , _stiSettlementEntryId = Nothing
    , _stiAdjustmentId = Nothing
    , _stiOrderItemId = Nothing
    , _stiShipmentIds = Nothing
    }


-- | The Google transaction ID.
stiTransactionId :: Lens' SettlementTransactionIdentifiers (Maybe Text)
stiTransactionId
  = lens _stiTransactionId
      (\ s a -> s{_stiTransactionId = a})

-- | The merchant provided order ID.
stiMerchantOrderId :: Lens' SettlementTransactionIdentifiers (Maybe Text)
stiMerchantOrderId
  = lens _stiMerchantOrderId
      (\ s a -> s{_stiMerchantOrderId = a})

-- | The unique ID of the settlement transaction entry.
stiSettlementEntryId :: Lens' SettlementTransactionIdentifiers (Maybe Text)
stiSettlementEntryId
  = lens _stiSettlementEntryId
      (\ s a -> s{_stiSettlementEntryId = a})

-- | The identifier of the adjustments, if it is available.
stiAdjustmentId :: Lens' SettlementTransactionIdentifiers (Maybe Text)
stiAdjustmentId
  = lens _stiAdjustmentId
      (\ s a -> s{_stiAdjustmentId = a})

-- | The identifier of the item.
stiOrderItemId :: Lens' SettlementTransactionIdentifiers (Maybe Text)
stiOrderItemId
  = lens _stiOrderItemId
      (\ s a -> s{_stiOrderItemId = a})

-- | The shipment ids for the item.
stiShipmentIds :: Lens' SettlementTransactionIdentifiers [Text]
stiShipmentIds
  = lens _stiShipmentIds
      (\ s a -> s{_stiShipmentIds = a})
      . _Default
      . _Coerce

instance FromJSON SettlementTransactionIdentifiers
         where
        parseJSON
          = withObject "SettlementTransactionIdentifiers"
              (\ o ->
                 SettlementTransactionIdentifiers' <$>
                   (o .:? "transactionId") <*> (o .:? "merchantOrderId")
                     <*> (o .:? "settlementEntryId")
                     <*> (o .:? "adjustmentId")
                     <*> (o .:? "orderItemId")
                     <*> (o .:? "shipmentIds" .!= mempty))

instance ToJSON SettlementTransactionIdentifiers
         where
        toJSON SettlementTransactionIdentifiers'{..}
          = object
              (catMaybes
                 [("transactionId" .=) <$> _stiTransactionId,
                  ("merchantOrderId" .=) <$> _stiMerchantOrderId,
                  ("settlementEntryId" .=) <$> _stiSettlementEntryId,
                  ("adjustmentId" .=) <$> _stiAdjustmentId,
                  ("orderItemId" .=) <$> _stiOrderItemId,
                  ("shipmentIds" .=) <$> _stiShipmentIds])

--
-- /See:/ 'localinventoryCustomBatchRequest' smart constructor.
newtype LocalinventoryCustomBatchRequest =
  LocalinventoryCustomBatchRequest'
    { _locEntries :: Maybe [LocalinventoryCustomBatchRequestEntry]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocalinventoryCustomBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'locEntries'
localinventoryCustomBatchRequest
    :: LocalinventoryCustomBatchRequest
localinventoryCustomBatchRequest =
  LocalinventoryCustomBatchRequest' {_locEntries = Nothing}


-- | The request entries to be processed in the batch.
locEntries :: Lens' LocalinventoryCustomBatchRequest [LocalinventoryCustomBatchRequestEntry]
locEntries
  = lens _locEntries (\ s a -> s{_locEntries = a}) .
      _Default
      . _Coerce

instance FromJSON LocalinventoryCustomBatchRequest
         where
        parseJSON
          = withObject "LocalinventoryCustomBatchRequest"
              (\ o ->
                 LocalinventoryCustomBatchRequest' <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON LocalinventoryCustomBatchRequest
         where
        toJSON LocalinventoryCustomBatchRequest'{..}
          = object (catMaybes [("entries" .=) <$> _locEntries])

--
-- /See:/ 'ordersInStoreRefundLineItemRequest' smart constructor.
data OrdersInStoreRefundLineItemRequest =
  OrdersInStoreRefundLineItemRequest'
    { _oisrlirQuantity :: !(Maybe (Textual Word32))
    , _oisrlirLineItemId :: !(Maybe Text)
    , _oisrlirReason :: !(Maybe Text)
    , _oisrlirOperationId :: !(Maybe Text)
    , _oisrlirProductId :: !(Maybe Text)
    , _oisrlirTaxAmount :: !(Maybe Price)
    , _oisrlirPriceAmount :: !(Maybe Price)
    , _oisrlirReasonText :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersInStoreRefundLineItemRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oisrlirQuantity'
--
-- * 'oisrlirLineItemId'
--
-- * 'oisrlirReason'
--
-- * 'oisrlirOperationId'
--
-- * 'oisrlirProductId'
--
-- * 'oisrlirTaxAmount'
--
-- * 'oisrlirPriceAmount'
--
-- * 'oisrlirReasonText'
ordersInStoreRefundLineItemRequest
    :: OrdersInStoreRefundLineItemRequest
ordersInStoreRefundLineItemRequest =
  OrdersInStoreRefundLineItemRequest'
    { _oisrlirQuantity = Nothing
    , _oisrlirLineItemId = Nothing
    , _oisrlirReason = Nothing
    , _oisrlirOperationId = Nothing
    , _oisrlirProductId = Nothing
    , _oisrlirTaxAmount = Nothing
    , _oisrlirPriceAmount = Nothing
    , _oisrlirReasonText = Nothing
    }


-- | The quantity to return and refund.
oisrlirQuantity :: Lens' OrdersInStoreRefundLineItemRequest (Maybe Word32)
oisrlirQuantity
  = lens _oisrlirQuantity
      (\ s a -> s{_oisrlirQuantity = a})
      . mapping _Coerce

-- | The ID of the line item to return. Either lineItemId or productId is
-- required.
oisrlirLineItemId :: Lens' OrdersInStoreRefundLineItemRequest (Maybe Text)
oisrlirLineItemId
  = lens _oisrlirLineItemId
      (\ s a -> s{_oisrlirLineItemId = a})

-- | The reason for the return. Acceptable values are: -
-- \"\`customerDiscretionaryReturn\`\" -
-- \"\`customerInitiatedMerchantCancel\`\" - \"\`deliveredTooLate\`\" -
-- \"\`expiredItem\`\" - \"\`invalidCoupon\`\" -
-- \"\`malformedShippingAddress\`\" - \"\`other\`\" -
-- \"\`productArrivedDamaged\`\" - \"\`productNotAsDescribed\`\" -
-- \"\`qualityNotAsExpected\`\" - \"\`undeliverableShippingAddress\`\" -
-- \"\`unsupportedPoBoxAddress\`\" - \"\`wrongProductShipped\`\"
oisrlirReason :: Lens' OrdersInStoreRefundLineItemRequest (Maybe Text)
oisrlirReason
  = lens _oisrlirReason
      (\ s a -> s{_oisrlirReason = a})

-- | The ID of the operation. Unique across all operations for a given order.
oisrlirOperationId :: Lens' OrdersInStoreRefundLineItemRequest (Maybe Text)
oisrlirOperationId
  = lens _oisrlirOperationId
      (\ s a -> s{_oisrlirOperationId = a})

-- | The ID of the product to return. This is the REST ID used in the
-- products service. Either lineItemId or productId is required.
oisrlirProductId :: Lens' OrdersInStoreRefundLineItemRequest (Maybe Text)
oisrlirProductId
  = lens _oisrlirProductId
      (\ s a -> s{_oisrlirProductId = a})

-- | The amount of tax to be refunded. Required.
oisrlirTaxAmount :: Lens' OrdersInStoreRefundLineItemRequest (Maybe Price)
oisrlirTaxAmount
  = lens _oisrlirTaxAmount
      (\ s a -> s{_oisrlirTaxAmount = a})

-- | The amount to be refunded. This may be pre-tax or post-tax depending on
-- the location of the order. Required.
oisrlirPriceAmount :: Lens' OrdersInStoreRefundLineItemRequest (Maybe Price)
oisrlirPriceAmount
  = lens _oisrlirPriceAmount
      (\ s a -> s{_oisrlirPriceAmount = a})

-- | The explanation of the reason.
oisrlirReasonText :: Lens' OrdersInStoreRefundLineItemRequest (Maybe Text)
oisrlirReasonText
  = lens _oisrlirReasonText
      (\ s a -> s{_oisrlirReasonText = a})

instance FromJSON OrdersInStoreRefundLineItemRequest
         where
        parseJSON
          = withObject "OrdersInStoreRefundLineItemRequest"
              (\ o ->
                 OrdersInStoreRefundLineItemRequest' <$>
                   (o .:? "quantity") <*> (o .:? "lineItemId") <*>
                     (o .:? "reason")
                     <*> (o .:? "operationId")
                     <*> (o .:? "productId")
                     <*> (o .:? "taxAmount")
                     <*> (o .:? "priceAmount")
                     <*> (o .:? "reasonText"))

instance ToJSON OrdersInStoreRefundLineItemRequest
         where
        toJSON OrdersInStoreRefundLineItemRequest'{..}
          = object
              (catMaybes
                 [("quantity" .=) <$> _oisrlirQuantity,
                  ("lineItemId" .=) <$> _oisrlirLineItemId,
                  ("reason" .=) <$> _oisrlirReason,
                  ("operationId" .=) <$> _oisrlirOperationId,
                  ("productId" .=) <$> _oisrlirProductId,
                  ("taxAmount" .=) <$> _oisrlirTaxAmount,
                  ("priceAmount" .=) <$> _oisrlirPriceAmount,
                  ("reasonText" .=) <$> _oisrlirReasonText])

--
-- /See:/ 'merchantRejectionReason' smart constructor.
data MerchantRejectionReason =
  MerchantRejectionReason'
    { _mrrReasonCode :: !(Maybe Text)
    , _mrrDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MerchantRejectionReason' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrrReasonCode'
--
-- * 'mrrDescription'
merchantRejectionReason
    :: MerchantRejectionReason
merchantRejectionReason =
  MerchantRejectionReason' {_mrrReasonCode = Nothing, _mrrDescription = Nothing}


-- | Code of the rejection reason.
mrrReasonCode :: Lens' MerchantRejectionReason (Maybe Text)
mrrReasonCode
  = lens _mrrReasonCode
      (\ s a -> s{_mrrReasonCode = a})

-- | Description of the reason.
mrrDescription :: Lens' MerchantRejectionReason (Maybe Text)
mrrDescription
  = lens _mrrDescription
      (\ s a -> s{_mrrDescription = a})

instance FromJSON MerchantRejectionReason where
        parseJSON
          = withObject "MerchantRejectionReason"
              (\ o ->
                 MerchantRejectionReason' <$>
                   (o .:? "reasonCode") <*> (o .:? "description"))

instance ToJSON MerchantRejectionReason where
        toJSON MerchantRejectionReason'{..}
          = object
              (catMaybes
                 [("reasonCode" .=) <$> _mrrReasonCode,
                  ("description" .=) <$> _mrrDescription])

--
-- /See:/ 'accountsCustomBatchRequestEntryLinkRequest' smart constructor.
data AccountsCustomBatchRequestEntryLinkRequest =
  AccountsCustomBatchRequestEntryLinkRequest'
    { _acbrelrAction :: !(Maybe Text)
    , _acbrelrLinkedAccountId :: !(Maybe Text)
    , _acbrelrLinkType :: !(Maybe Text)
    , _acbrelrServices :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsCustomBatchRequestEntryLinkRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acbrelrAction'
--
-- * 'acbrelrLinkedAccountId'
--
-- * 'acbrelrLinkType'
--
-- * 'acbrelrServices'
accountsCustomBatchRequestEntryLinkRequest
    :: AccountsCustomBatchRequestEntryLinkRequest
accountsCustomBatchRequestEntryLinkRequest =
  AccountsCustomBatchRequestEntryLinkRequest'
    { _acbrelrAction = Nothing
    , _acbrelrLinkedAccountId = Nothing
    , _acbrelrLinkType = Nothing
    , _acbrelrServices = Nothing
    }


-- | Action to perform for this link. The \`\"request\"\` action is only
-- available to select merchants. Acceptable values are: - \"\`approve\`\"
-- - \"\`remove\`\" - \"\`request\`\"
acbrelrAction :: Lens' AccountsCustomBatchRequestEntryLinkRequest (Maybe Text)
acbrelrAction
  = lens _acbrelrAction
      (\ s a -> s{_acbrelrAction = a})

-- | The ID of the linked account.
acbrelrLinkedAccountId :: Lens' AccountsCustomBatchRequestEntryLinkRequest (Maybe Text)
acbrelrLinkedAccountId
  = lens _acbrelrLinkedAccountId
      (\ s a -> s{_acbrelrLinkedAccountId = a})

-- | Type of the link between the two accounts. Acceptable values are: -
-- \"\`channelPartner\`\" - \"\`eCommercePlatform\`\"
acbrelrLinkType :: Lens' AccountsCustomBatchRequestEntryLinkRequest (Maybe Text)
acbrelrLinkType
  = lens _acbrelrLinkType
      (\ s a -> s{_acbrelrLinkType = a})

-- | Provided services. Acceptable values are: -
-- \"\`shoppingAdsProductManagement\`\" -
-- \"\`shoppingActionsProductManagement\`\" -
-- \"\`shoppingActionsOrderManagement\`\"
acbrelrServices :: Lens' AccountsCustomBatchRequestEntryLinkRequest [Text]
acbrelrServices
  = lens _acbrelrServices
      (\ s a -> s{_acbrelrServices = a})
      . _Default
      . _Coerce

instance FromJSON
           AccountsCustomBatchRequestEntryLinkRequest
         where
        parseJSON
          = withObject
              "AccountsCustomBatchRequestEntryLinkRequest"
              (\ o ->
                 AccountsCustomBatchRequestEntryLinkRequest' <$>
                   (o .:? "action") <*> (o .:? "linkedAccountId") <*>
                     (o .:? "linkType")
                     <*> (o .:? "services" .!= mempty))

instance ToJSON
           AccountsCustomBatchRequestEntryLinkRequest
         where
        toJSON
          AccountsCustomBatchRequestEntryLinkRequest'{..}
          = object
              (catMaybes
                 [("action" .=) <$> _acbrelrAction,
                  ("linkedAccountId" .=) <$> _acbrelrLinkedAccountId,
                  ("linkType" .=) <$> _acbrelrLinkType,
                  ("services" .=) <$> _acbrelrServices])

--
-- /See:/ 'productShippingDimension' smart constructor.
data ProductShippingDimension =
  ProductShippingDimension'
    { _psdValue :: !(Maybe (Textual Double))
    , _psdUnit :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductShippingDimension' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psdValue'
--
-- * 'psdUnit'
productShippingDimension
    :: ProductShippingDimension
productShippingDimension =
  ProductShippingDimension' {_psdValue = Nothing, _psdUnit = Nothing}


-- | The dimension of the product used to calculate the shipping cost of the
-- item.
psdValue :: Lens' ProductShippingDimension (Maybe Double)
psdValue
  = lens _psdValue (\ s a -> s{_psdValue = a}) .
      mapping _Coerce

-- | The unit of value.
psdUnit :: Lens' ProductShippingDimension (Maybe Text)
psdUnit = lens _psdUnit (\ s a -> s{_psdUnit = a})

instance FromJSON ProductShippingDimension where
        parseJSON
          = withObject "ProductShippingDimension"
              (\ o ->
                 ProductShippingDimension' <$>
                   (o .:? "value") <*> (o .:? "unit"))

instance ToJSON ProductShippingDimension where
        toJSON ProductShippingDimension'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _psdValue,
                  ("unit" .=) <$> _psdUnit])

--
-- /See:/ 'settlementreportsListResponse' smart constructor.
data SettlementreportsListResponse =
  SettlementreportsListResponse'
    { _setNextPageToken :: !(Maybe Text)
    , _setKind :: !(Maybe Text)
    , _setResources :: !(Maybe [SettlementReport])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SettlementreportsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'setNextPageToken'
--
-- * 'setKind'
--
-- * 'setResources'
settlementreportsListResponse
    :: SettlementreportsListResponse
settlementreportsListResponse =
  SettlementreportsListResponse'
    {_setNextPageToken = Nothing, _setKind = Nothing, _setResources = Nothing}


-- | The token for the retrieval of the next page of returns.
setNextPageToken :: Lens' SettlementreportsListResponse (Maybe Text)
setNextPageToken
  = lens _setNextPageToken
      (\ s a -> s{_setNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#settlementreportsListResponse\".
setKind :: Lens' SettlementreportsListResponse (Maybe Text)
setKind = lens _setKind (\ s a -> s{_setKind = a})

setResources :: Lens' SettlementreportsListResponse [SettlementReport]
setResources
  = lens _setResources (\ s a -> s{_setResources = a})
      . _Default
      . _Coerce

instance FromJSON SettlementreportsListResponse where
        parseJSON
          = withObject "SettlementreportsListResponse"
              (\ o ->
                 SettlementreportsListResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "kind") <*>
                     (o .:? "resources" .!= mempty))

instance ToJSON SettlementreportsListResponse where
        toJSON SettlementreportsListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _setNextPageToken,
                  ("kind" .=) <$> _setKind,
                  ("resources" .=) <$> _setResources])

--
-- /See:/ 'regionalinventoryCustomBatchRequest' smart constructor.
newtype RegionalinventoryCustomBatchRequest =
  RegionalinventoryCustomBatchRequest'
    { _rrEntries :: Maybe [RegionalinventoryCustomBatchRequestEntry]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionalinventoryCustomBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrEntries'
regionalinventoryCustomBatchRequest
    :: RegionalinventoryCustomBatchRequest
regionalinventoryCustomBatchRequest =
  RegionalinventoryCustomBatchRequest' {_rrEntries = Nothing}


-- | The request entries to be processed in the batch.
rrEntries :: Lens' RegionalinventoryCustomBatchRequest [RegionalinventoryCustomBatchRequestEntry]
rrEntries
  = lens _rrEntries (\ s a -> s{_rrEntries = a}) .
      _Default
      . _Coerce

instance FromJSON RegionalinventoryCustomBatchRequest
         where
        parseJSON
          = withObject "RegionalinventoryCustomBatchRequest"
              (\ o ->
                 RegionalinventoryCustomBatchRequest' <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON RegionalinventoryCustomBatchRequest
         where
        toJSON RegionalinventoryCustomBatchRequest'{..}
          = object (catMaybes [("entries" .=) <$> _rrEntries])

-- | A batch entry encoding a single non-batch datafeeds response.
--
-- /See:/ 'datafeedsCustomBatchResponseEntry' smart constructor.
data DatafeedsCustomBatchResponseEntry =
  DatafeedsCustomBatchResponseEntry'
    { _dcbrecDatafeed :: !(Maybe Datafeed)
    , _dcbrecErrors :: !(Maybe Errors)
    , _dcbrecBatchId :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatafeedsCustomBatchResponseEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcbrecDatafeed'
--
-- * 'dcbrecErrors'
--
-- * 'dcbrecBatchId'
datafeedsCustomBatchResponseEntry
    :: DatafeedsCustomBatchResponseEntry
datafeedsCustomBatchResponseEntry =
  DatafeedsCustomBatchResponseEntry'
    { _dcbrecDatafeed = Nothing
    , _dcbrecErrors = Nothing
    , _dcbrecBatchId = Nothing
    }


-- | The requested data feed. Defined if and only if the request was
-- successful.
dcbrecDatafeed :: Lens' DatafeedsCustomBatchResponseEntry (Maybe Datafeed)
dcbrecDatafeed
  = lens _dcbrecDatafeed
      (\ s a -> s{_dcbrecDatafeed = a})

-- | A list of errors defined if and only if the request failed.
dcbrecErrors :: Lens' DatafeedsCustomBatchResponseEntry (Maybe Errors)
dcbrecErrors
  = lens _dcbrecErrors (\ s a -> s{_dcbrecErrors = a})

-- | The ID of the request entry this entry responds to.
dcbrecBatchId :: Lens' DatafeedsCustomBatchResponseEntry (Maybe Word32)
dcbrecBatchId
  = lens _dcbrecBatchId
      (\ s a -> s{_dcbrecBatchId = a})
      . mapping _Coerce

instance FromJSON DatafeedsCustomBatchResponseEntry
         where
        parseJSON
          = withObject "DatafeedsCustomBatchResponseEntry"
              (\ o ->
                 DatafeedsCustomBatchResponseEntry' <$>
                   (o .:? "datafeed") <*> (o .:? "errors") <*>
                     (o .:? "batchId"))

instance ToJSON DatafeedsCustomBatchResponseEntry
         where
        toJSON DatafeedsCustomBatchResponseEntry'{..}
          = object
              (catMaybes
                 [("datafeed" .=) <$> _dcbrecDatafeed,
                  ("errors" .=) <$> _dcbrecErrors,
                  ("batchId" .=) <$> _dcbrecBatchId])

--
-- /See:/ 'datafeedstatusesListResponse' smart constructor.
data DatafeedstatusesListResponse =
  DatafeedstatusesListResponse'
    { _dlrlNextPageToken :: !(Maybe Text)
    , _dlrlKind :: !(Maybe Text)
    , _dlrlResources :: !(Maybe [DatafeedStatus])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatafeedstatusesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlrlNextPageToken'
--
-- * 'dlrlKind'
--
-- * 'dlrlResources'
datafeedstatusesListResponse
    :: DatafeedstatusesListResponse
datafeedstatusesListResponse =
  DatafeedstatusesListResponse'
    { _dlrlNextPageToken = Nothing
    , _dlrlKind = Nothing
    , _dlrlResources = Nothing
    }


-- | The token for the retrieval of the next page of datafeed statuses.
dlrlNextPageToken :: Lens' DatafeedstatusesListResponse (Maybe Text)
dlrlNextPageToken
  = lens _dlrlNextPageToken
      (\ s a -> s{_dlrlNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#datafeedstatusesListResponse\".
dlrlKind :: Lens' DatafeedstatusesListResponse (Maybe Text)
dlrlKind = lens _dlrlKind (\ s a -> s{_dlrlKind = a})

dlrlResources :: Lens' DatafeedstatusesListResponse [DatafeedStatus]
dlrlResources
  = lens _dlrlResources
      (\ s a -> s{_dlrlResources = a})
      . _Default
      . _Coerce

instance FromJSON DatafeedstatusesListResponse where
        parseJSON
          = withObject "DatafeedstatusesListResponse"
              (\ o ->
                 DatafeedstatusesListResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "kind") <*>
                     (o .:? "resources" .!= mempty))

instance ToJSON DatafeedstatusesListResponse where
        toJSON DatafeedstatusesListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _dlrlNextPageToken,
                  ("kind" .=) <$> _dlrlKind,
                  ("resources" .=) <$> _dlrlResources])

--
-- /See:/ 'productsListResponse' smart constructor.
data ProductsListResponse =
  ProductsListResponse'
    { _plr1NextPageToken :: !(Maybe Text)
    , _plr1Kind :: !(Maybe Text)
    , _plr1Resources :: !(Maybe [Product])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plr1NextPageToken'
--
-- * 'plr1Kind'
--
-- * 'plr1Resources'
productsListResponse
    :: ProductsListResponse
productsListResponse =
  ProductsListResponse'
    { _plr1NextPageToken = Nothing
    , _plr1Kind = Nothing
    , _plr1Resources = Nothing
    }


-- | The token for the retrieval of the next page of products.
plr1NextPageToken :: Lens' ProductsListResponse (Maybe Text)
plr1NextPageToken
  = lens _plr1NextPageToken
      (\ s a -> s{_plr1NextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#productsListResponse\".
plr1Kind :: Lens' ProductsListResponse (Maybe Text)
plr1Kind = lens _plr1Kind (\ s a -> s{_plr1Kind = a})

plr1Resources :: Lens' ProductsListResponse [Product]
plr1Resources
  = lens _plr1Resources
      (\ s a -> s{_plr1Resources = a})
      . _Default
      . _Coerce

instance FromJSON ProductsListResponse where
        parseJSON
          = withObject "ProductsListResponse"
              (\ o ->
                 ProductsListResponse' <$>
                   (o .:? "nextPageToken") <*> (o .:? "kind") <*>
                     (o .:? "resources" .!= mempty))

instance ToJSON ProductsListResponse where
        toJSON ProductsListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _plr1NextPageToken,
                  ("kind" .=) <$> _plr1Kind,
                  ("resources" .=) <$> _plr1Resources])

-- | The price represented as a number and currency.
--
-- /See:/ 'priceAmount' smart constructor.
data PriceAmount =
  PriceAmount'
    { _paValue :: !(Maybe Text)
    , _paCurrency :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PriceAmount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paValue'
--
-- * 'paCurrency'
priceAmount
    :: PriceAmount
priceAmount = PriceAmount' {_paValue = Nothing, _paCurrency = Nothing}


-- | The price represented as a number.
paValue :: Lens' PriceAmount (Maybe Text)
paValue = lens _paValue (\ s a -> s{_paValue = a})

-- | The currency of the price.
paCurrency :: Lens' PriceAmount (Maybe Text)
paCurrency
  = lens _paCurrency (\ s a -> s{_paCurrency = a})

instance FromJSON PriceAmount where
        parseJSON
          = withObject "PriceAmount"
              (\ o ->
                 PriceAmount' <$>
                   (o .:? "value") <*> (o .:? "currency"))

instance ToJSON PriceAmount where
        toJSON PriceAmount'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _paValue,
                  ("currency" .=) <$> _paCurrency])

--
-- /See:/ 'shipmentInvoice' smart constructor.
data ShipmentInvoice =
  ShipmentInvoice'
    { _siShipmentGroupId :: !(Maybe Text)
    , _siLineItemInvoices :: !(Maybe [ShipmentInvoiceLineItemInvoice])
    , _siInvoiceSummary :: !(Maybe InvoiceSummary)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ShipmentInvoice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siShipmentGroupId'
--
-- * 'siLineItemInvoices'
--
-- * 'siInvoiceSummary'
shipmentInvoice
    :: ShipmentInvoice
shipmentInvoice =
  ShipmentInvoice'
    { _siShipmentGroupId = Nothing
    , _siLineItemInvoices = Nothing
    , _siInvoiceSummary = Nothing
    }


-- | [required] ID of the shipment group. It is assigned by the merchant in
-- the \`shipLineItems\` method and is used to group multiple line items
-- that have the same kind of shipping charges.
siShipmentGroupId :: Lens' ShipmentInvoice (Maybe Text)
siShipmentGroupId
  = lens _siShipmentGroupId
      (\ s a -> s{_siShipmentGroupId = a})

-- | [required] Invoice details per line item.
siLineItemInvoices :: Lens' ShipmentInvoice [ShipmentInvoiceLineItemInvoice]
siLineItemInvoices
  = lens _siLineItemInvoices
      (\ s a -> s{_siLineItemInvoices = a})
      . _Default
      . _Coerce

-- | [required] Invoice summary.
siInvoiceSummary :: Lens' ShipmentInvoice (Maybe InvoiceSummary)
siInvoiceSummary
  = lens _siInvoiceSummary
      (\ s a -> s{_siInvoiceSummary = a})

instance FromJSON ShipmentInvoice where
        parseJSON
          = withObject "ShipmentInvoice"
              (\ o ->
                 ShipmentInvoice' <$>
                   (o .:? "shipmentGroupId") <*>
                     (o .:? "lineItemInvoices" .!= mempty)
                     <*> (o .:? "invoiceSummary"))

instance ToJSON ShipmentInvoice where
        toJSON ShipmentInvoice'{..}
          = object
              (catMaybes
                 [("shipmentGroupId" .=) <$> _siShipmentGroupId,
                  ("lineItemInvoices" .=) <$> _siLineItemInvoices,
                  ("invoiceSummary" .=) <$> _siInvoiceSummary])

--
-- /See:/ 'orderShipmentScheduledDeliveryDetails' smart constructor.
data OrderShipmentScheduledDeliveryDetails =
  OrderShipmentScheduledDeliveryDetails'
    { _ossddScheduledDate :: !(Maybe Text)
    , _ossddCarrierPhoneNumber :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderShipmentScheduledDeliveryDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ossddScheduledDate'
--
-- * 'ossddCarrierPhoneNumber'
orderShipmentScheduledDeliveryDetails
    :: OrderShipmentScheduledDeliveryDetails
orderShipmentScheduledDeliveryDetails =
  OrderShipmentScheduledDeliveryDetails'
    {_ossddScheduledDate = Nothing, _ossddCarrierPhoneNumber = Nothing}


-- | The date a shipment is scheduled for delivery, in ISO 8601 format.
ossddScheduledDate :: Lens' OrderShipmentScheduledDeliveryDetails (Maybe Text)
ossddScheduledDate
  = lens _ossddScheduledDate
      (\ s a -> s{_ossddScheduledDate = a})

-- | The phone number of the carrier fulfilling the delivery. The phone
-- number is formatted as the international notation in ITU-T
-- Recommendation E.123 (e.g., \"+41 44 668 1800\").
ossddCarrierPhoneNumber :: Lens' OrderShipmentScheduledDeliveryDetails (Maybe Text)
ossddCarrierPhoneNumber
  = lens _ossddCarrierPhoneNumber
      (\ s a -> s{_ossddCarrierPhoneNumber = a})

instance FromJSON
           OrderShipmentScheduledDeliveryDetails
         where
        parseJSON
          = withObject "OrderShipmentScheduledDeliveryDetails"
              (\ o ->
                 OrderShipmentScheduledDeliveryDetails' <$>
                   (o .:? "scheduledDate") <*>
                     (o .:? "carrierPhoneNumber"))

instance ToJSON OrderShipmentScheduledDeliveryDetails
         where
        toJSON OrderShipmentScheduledDeliveryDetails'{..}
          = object
              (catMaybes
                 [("scheduledDate" .=) <$> _ossddScheduledDate,
                  ("carrierPhoneNumber" .=) <$>
                    _ossddCarrierPhoneNumber])

--
-- /See:/ 'orderCancellation' smart constructor.
data OrderCancellation =
  OrderCancellation'
    { _ocQuantity :: !(Maybe (Textual Word32))
    , _ocActor :: !(Maybe Text)
    , _ocReason :: !(Maybe Text)
    , _ocCreationDate :: !(Maybe Text)
    , _ocReasonText :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderCancellation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocQuantity'
--
-- * 'ocActor'
--
-- * 'ocReason'
--
-- * 'ocCreationDate'
--
-- * 'ocReasonText'
orderCancellation
    :: OrderCancellation
orderCancellation =
  OrderCancellation'
    { _ocQuantity = Nothing
    , _ocActor = Nothing
    , _ocReason = Nothing
    , _ocCreationDate = Nothing
    , _ocReasonText = Nothing
    }


-- | The quantity that was canceled.
ocQuantity :: Lens' OrderCancellation (Maybe Word32)
ocQuantity
  = lens _ocQuantity (\ s a -> s{_ocQuantity = a}) .
      mapping _Coerce

-- | The actor that created the cancellation. Acceptable values are: -
-- \"\`customer\`\" - \"\`googleBot\`\" - \"\`googleCustomerService\`\" -
-- \"\`googlePayments\`\" - \"\`googleSabre\`\" - \"\`merchant\`\"
ocActor :: Lens' OrderCancellation (Maybe Text)
ocActor = lens _ocActor (\ s a -> s{_ocActor = a})

-- | The reason for the cancellation. Orders that are canceled with a
-- noInventory reason will lead to the removal of the product from Buy on
-- Google until you make an update to that product. This will not affect
-- your Shopping ads. Acceptable values are: - \"\`autoPostInternal\`\" -
-- \"\`autoPostInvalidBillingAddress\`\" - \"\`autoPostNoInventory\`\" -
-- \"\`autoPostPriceError\`\" -
-- \"\`autoPostUndeliverableShippingAddress\`\" - \"\`couponAbuse\`\" -
-- \"\`customerCanceled\`\" - \"\`customerInitiatedCancel\`\" -
-- \"\`customerSupportRequested\`\" - \"\`failToPushOrderGoogleError\`\" -
-- \"\`failToPushOrderMerchantError\`\" -
-- \"\`failToPushOrderMerchantFulfillmentError\`\" -
-- \"\`failToPushOrderToMerchant\`\" -
-- \"\`failToPushOrderToMerchantOutOfStock\`\" - \"\`invalidCoupon\`\" -
-- \"\`malformedShippingAddress\`\" - \"\`merchantDidNotShipOnTime\`\" -
-- \"\`noInventory\`\" - \"\`orderTimeout\`\" - \"\`other\`\" -
-- \"\`paymentAbuse\`\" - \"\`paymentDeclined\`\" - \"\`priceError\`\" -
-- \"\`returnRefundAbuse\`\" - \"\`shippingPriceError\`\" -
-- \"\`taxError\`\" - \"\`undeliverableShippingAddress\`\" -
-- \"\`unsupportedPoBoxAddress\`\"
ocReason :: Lens' OrderCancellation (Maybe Text)
ocReason = lens _ocReason (\ s a -> s{_ocReason = a})

-- | Date on which the cancellation has been created, in ISO 8601 format.
ocCreationDate :: Lens' OrderCancellation (Maybe Text)
ocCreationDate
  = lens _ocCreationDate
      (\ s a -> s{_ocCreationDate = a})

-- | The explanation of the reason.
ocReasonText :: Lens' OrderCancellation (Maybe Text)
ocReasonText
  = lens _ocReasonText (\ s a -> s{_ocReasonText = a})

instance FromJSON OrderCancellation where
        parseJSON
          = withObject "OrderCancellation"
              (\ o ->
                 OrderCancellation' <$>
                   (o .:? "quantity") <*> (o .:? "actor") <*>
                     (o .:? "reason")
                     <*> (o .:? "creationDate")
                     <*> (o .:? "reasonText"))

instance ToJSON OrderCancellation where
        toJSON OrderCancellation'{..}
          = object
              (catMaybes
                 [("quantity" .=) <$> _ocQuantity,
                  ("actor" .=) <$> _ocActor,
                  ("reason" .=) <$> _ocReason,
                  ("creationDate" .=) <$> _ocCreationDate,
                  ("reasonText" .=) <$> _ocReasonText])
