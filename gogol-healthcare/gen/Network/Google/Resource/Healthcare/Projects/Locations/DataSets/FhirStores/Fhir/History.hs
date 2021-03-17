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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.History
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the versions of a resource (including the current version and
-- deleted versions) from the FHIR store. Implements the per-resource form
-- of the FHIR standard history interaction
-- ([DSTU2](http:\/\/hl7.org\/implement\/standards\/fhir\/DSTU2\/http.html#history),
-- [STU3](http:\/\/hl7.org\/implement\/standards\/fhir\/STU3\/http.html#history),
-- [R4](http:\/\/hl7.org\/implement\/standards\/fhir\/R4\/http.html#history)).
-- On success, the response body will contain a JSON-encoded representation
-- of a \`Bundle\` resource of type \`history\`, containing the version
-- history sorted from most recent to oldest versions. Errors generated by
-- the FHIR store will contain a JSON-encoded \`OperationOutcome\` resource
-- describing the reason for the error. If the request cannot be mapped to
-- a valid API method on a FHIR store, a generic GCP error might be
-- returned instead. For samples that show how to call \`history\`, see
-- [Listing FHIR resource
-- versions](\/healthcare\/docs\/how-tos\/fhir-resources#listing_fhir_resource_versions).
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.fhir.history@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.FhirStores.Fhir.History
    (
    -- * REST Resource
      ProjectsLocationsDataSetsFhirStoresFhirHistoryResource

    -- * Creating a Request
    , projectsLocationsDataSetsFhirStoresFhirHistory
    , ProjectsLocationsDataSetsFhirStoresFhirHistory

    -- * Request Lenses
    , pldsfsfhXgafv
    , pldsfsfhCount
    , pldsfsfhUploadProtocol
    , pldsfsfhAccessToken
    , pldsfsfhUploadType
    , pldsfsfhName
    , pldsfsfhAt
    , pldsfsfhSince
    , pldsfsfhPageToken
    , pldsfsfhCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.fhir.history@ method which the
-- 'ProjectsLocationsDataSetsFhirStoresFhirHistory' request conforms to.
type ProjectsLocationsDataSetsFhirStoresFhirHistoryResource
     =
     "v1" :>
       Capture "name" Text :>
         "_history" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "_count" (Textual Int32) :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "_at" Text :>
                       QueryParam "_since" Text :>
                         QueryParam "_page_token" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Get '[JSON] HTTPBody

-- | Lists all the versions of a resource (including the current version and
-- deleted versions) from the FHIR store. Implements the per-resource form
-- of the FHIR standard history interaction
-- ([DSTU2](http:\/\/hl7.org\/implement\/standards\/fhir\/DSTU2\/http.html#history),
-- [STU3](http:\/\/hl7.org\/implement\/standards\/fhir\/STU3\/http.html#history),
-- [R4](http:\/\/hl7.org\/implement\/standards\/fhir\/R4\/http.html#history)).
-- On success, the response body will contain a JSON-encoded representation
-- of a \`Bundle\` resource of type \`history\`, containing the version
-- history sorted from most recent to oldest versions. Errors generated by
-- the FHIR store will contain a JSON-encoded \`OperationOutcome\` resource
-- describing the reason for the error. If the request cannot be mapped to
-- a valid API method on a FHIR store, a generic GCP error might be
-- returned instead. For samples that show how to call \`history\`, see
-- [Listing FHIR resource
-- versions](\/healthcare\/docs\/how-tos\/fhir-resources#listing_fhir_resource_versions).
--
-- /See:/ 'projectsLocationsDataSetsFhirStoresFhirHistory' smart constructor.
data ProjectsLocationsDataSetsFhirStoresFhirHistory =
  ProjectsLocationsDataSetsFhirStoresFhirHistory'
    { _pldsfsfhXgafv :: !(Maybe Xgafv)
    , _pldsfsfhCount :: !(Maybe (Textual Int32))
    , _pldsfsfhUploadProtocol :: !(Maybe Text)
    , _pldsfsfhAccessToken :: !(Maybe Text)
    , _pldsfsfhUploadType :: !(Maybe Text)
    , _pldsfsfhName :: !Text
    , _pldsfsfhAt :: !(Maybe Text)
    , _pldsfsfhSince :: !(Maybe Text)
    , _pldsfsfhPageToken :: !(Maybe Text)
    , _pldsfsfhCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsFhirStoresFhirHistory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldsfsfhXgafv'
--
-- * 'pldsfsfhCount'
--
-- * 'pldsfsfhUploadProtocol'
--
-- * 'pldsfsfhAccessToken'
--
-- * 'pldsfsfhUploadType'
--
-- * 'pldsfsfhName'
--
-- * 'pldsfsfhAt'
--
-- * 'pldsfsfhSince'
--
-- * 'pldsfsfhPageToken'
--
-- * 'pldsfsfhCallback'
projectsLocationsDataSetsFhirStoresFhirHistory
    :: Text -- ^ 'pldsfsfhName'
    -> ProjectsLocationsDataSetsFhirStoresFhirHistory
projectsLocationsDataSetsFhirStoresFhirHistory pPldsfsfhName_ =
  ProjectsLocationsDataSetsFhirStoresFhirHistory'
    { _pldsfsfhXgafv = Nothing
    , _pldsfsfhCount = Nothing
    , _pldsfsfhUploadProtocol = Nothing
    , _pldsfsfhAccessToken = Nothing
    , _pldsfsfhUploadType = Nothing
    , _pldsfsfhName = pPldsfsfhName_
    , _pldsfsfhAt = Nothing
    , _pldsfsfhSince = Nothing
    , _pldsfsfhPageToken = Nothing
    , _pldsfsfhCallback = Nothing
    }


-- | V1 error format.
pldsfsfhXgafv :: Lens' ProjectsLocationsDataSetsFhirStoresFhirHistory (Maybe Xgafv)
pldsfsfhXgafv
  = lens _pldsfsfhXgafv
      (\ s a -> s{_pldsfsfhXgafv = a})

-- | The maximum number of search results on a page. If not specified, 100 is
-- used. May not be larger than 1000.
pldsfsfhCount :: Lens' ProjectsLocationsDataSetsFhirStoresFhirHistory (Maybe Int32)
pldsfsfhCount
  = lens _pldsfsfhCount
      (\ s a -> s{_pldsfsfhCount = a})
      . mapping _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldsfsfhUploadProtocol :: Lens' ProjectsLocationsDataSetsFhirStoresFhirHistory (Maybe Text)
pldsfsfhUploadProtocol
  = lens _pldsfsfhUploadProtocol
      (\ s a -> s{_pldsfsfhUploadProtocol = a})

-- | OAuth access token.
pldsfsfhAccessToken :: Lens' ProjectsLocationsDataSetsFhirStoresFhirHistory (Maybe Text)
pldsfsfhAccessToken
  = lens _pldsfsfhAccessToken
      (\ s a -> s{_pldsfsfhAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldsfsfhUploadType :: Lens' ProjectsLocationsDataSetsFhirStoresFhirHistory (Maybe Text)
pldsfsfhUploadType
  = lens _pldsfsfhUploadType
      (\ s a -> s{_pldsfsfhUploadType = a})

-- | The name of the resource to retrieve.
pldsfsfhName :: Lens' ProjectsLocationsDataSetsFhirStoresFhirHistory Text
pldsfsfhName
  = lens _pldsfsfhName (\ s a -> s{_pldsfsfhName = a})

-- | Only include resource versions that were current at some point during
-- the time period specified in the date time value. The date parameter
-- format is yyyy-mm-ddThh:mm:ss[Z|(+|-)hh:mm] Clients may specify any of
-- the following: * An entire year: \`_at=2019\` * An entire month:
-- \`_at=2019-01\` * A specific day: \`_at=2019-01-20\` * A specific
-- second: \`_at=2018-12-31T23:59:58Z\`
pldsfsfhAt :: Lens' ProjectsLocationsDataSetsFhirStoresFhirHistory (Maybe Text)
pldsfsfhAt
  = lens _pldsfsfhAt (\ s a -> s{_pldsfsfhAt = a})

-- | Only include resource versions that were created at or after the given
-- instant in time. The instant in time uses the format
-- YYYY-MM-DDThh:mm:ss.sss+zz:zz (for example 2015-02-07T13:28:17.239+02:00
-- or 2017-01-01T00:00:00Z). The time must be specified to the second and
-- include a time zone.
pldsfsfhSince :: Lens' ProjectsLocationsDataSetsFhirStoresFhirHistory (Maybe Text)
pldsfsfhSince
  = lens _pldsfsfhSince
      (\ s a -> s{_pldsfsfhSince = a})

-- | Used to retrieve the first, previous, next, or last page of resource
-- versions when using pagination. Value should be set to the value of
-- \`_page_token\` set in next or previous page links\' URLs. Next and
-- previous page are returned in the response bundle\'s links field, where
-- \`link.relation\` is \"previous\" or \"next\". Omit \`_page_token\` if
-- no previous request has been made.
pldsfsfhPageToken :: Lens' ProjectsLocationsDataSetsFhirStoresFhirHistory (Maybe Text)
pldsfsfhPageToken
  = lens _pldsfsfhPageToken
      (\ s a -> s{_pldsfsfhPageToken = a})

-- | JSONP
pldsfsfhCallback :: Lens' ProjectsLocationsDataSetsFhirStoresFhirHistory (Maybe Text)
pldsfsfhCallback
  = lens _pldsfsfhCallback
      (\ s a -> s{_pldsfsfhCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsFhirStoresFhirHistory
         where
        type Rs
               ProjectsLocationsDataSetsFhirStoresFhirHistory
             = HTTPBody
        type Scopes
               ProjectsLocationsDataSetsFhirStoresFhirHistory
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsFhirStoresFhirHistory'{..}
          = go _pldsfsfhName _pldsfsfhXgafv _pldsfsfhCount
              _pldsfsfhUploadProtocol
              _pldsfsfhAccessToken
              _pldsfsfhUploadType
              _pldsfsfhAt
              _pldsfsfhSince
              _pldsfsfhPageToken
              _pldsfsfhCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsFhirStoresFhirHistoryResource)
                      mempty
