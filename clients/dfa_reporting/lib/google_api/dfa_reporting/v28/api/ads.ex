# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.DFAReporting.V28.Api.Ads do
  @moduledoc """
  API calls for all endpoints tagged `Ads`.
  """

  alias GoogleApi.DFAReporting.V28.Connection
  import GoogleApi.DFAReporting.V28.RequestBuilder


  @doc """
  Gets one ad by ID.

  ## Parameters

  - connection (GoogleApi.DFAReporting.V28.Connection): Connection to server
  - profile_id (String): User profile ID associated with this request.
  - id (String): Ad ID.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.DFAReporting.V28.Model.Ad{}} on success
  {:error, info} on failure
  """
  @spec dfareporting_ads_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.DFAReporting.V28.Model.Ad.t} | {:error, Tesla.Env.t}
  def dfareporting_ads_get(connection, profile_id, id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:get)
    |> url("/dfareporting/v2.8/userprofiles/#{profile_id}/ads/#{id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.DFAReporting.V28.Model.Ad{})
  end

  @doc """
  Inserts a new ad.

  ## Parameters

  - connection (GoogleApi.DFAReporting.V28.Connection): Connection to server
  - profile_id (String): User profile ID associated with this request.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (Ad): 

  ## Returns

  {:ok, %GoogleApi.DFAReporting.V28.Model.Ad{}} on success
  {:error, info} on failure
  """
  @spec dfareporting_ads_insert(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.DFAReporting.V28.Model.Ad.t} | {:error, Tesla.Env.t}
  def dfareporting_ads_insert(connection, profile_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/dfareporting/v2.8/userprofiles/#{profile_id}/ads")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.DFAReporting.V28.Model.Ad{})
  end

  @doc """
  Retrieves a list of ads, possibly filtered. This method supports paging.

  ## Parameters

  - connection (GoogleApi.DFAReporting.V28.Connection): Connection to server
  - profile_id (String): User profile ID associated with this request.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :active (Boolean): Select only active ads.
    - :advertiser_id (String): Select only ads with this advertiser ID.
    - :archived (Boolean): Select only archived ads.
    - :audience_segment_ids (List[String]): Select only ads with these audience segment IDs.
    - :campaign_ids (List[String]): Select only ads with these campaign IDs.
    - :compatibility (String): Select default ads with the specified compatibility. Applicable when type is AD_SERVING_DEFAULT_AD. DISPLAY and DISPLAY_INTERSTITIAL refer to rendering either on desktop or on mobile devices for regular or interstitial ads, respectively. APP and APP_INTERSTITIAL are for rendering in mobile apps. IN_STREAM_VIDEO refers to rendering an in-stream video ads developed with the VAST standard.
    - :creative_ids (List[String]): Select only ads with these creative IDs assigned.
    - :creative_optimization_configuration_ids (List[String]): Select only ads with these creative optimization configuration IDs.
    - :dynamic_click_tracker (Boolean): Select only dynamic click trackers. Applicable when type is AD_SERVING_CLICK_TRACKER. If true, select dynamic click trackers. If false, select static click trackers. Leave unset to select both.
    - :ids (List[String]): Select only ads with these IDs.
    - :landing_page_ids (List[String]): Select only ads with these landing page IDs.
    - :max_results (Integer): Maximum number of results to return.
    - :overridden_event_tag_id (String): Select only ads with this event tag override ID.
    - :page_token (String): Value of the nextPageToken from the previous result page.
    - :placement_ids (List[String]): Select only ads with these placement IDs assigned.
    - :remarketing_list_ids (List[String]): Select only ads whose list targeting expression use these remarketing list IDs.
    - :search_string (String): Allows searching for objects by name or ID. Wildcards (*) are allowed. For example, \&quot;ad*2015\&quot; will return objects with names like \&quot;ad June 2015\&quot;, \&quot;ad April 2015\&quot;, or simply \&quot;ad 2015\&quot;. Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \&quot;ad\&quot; will match objects with name \&quot;my ad\&quot;, \&quot;ad 2015\&quot;, or simply \&quot;ad\&quot;.
    - :size_ids (List[String]): Select only ads with these size IDs.
    - :sort_field (String): Field by which to sort the list.
    - :sort_order (String): Order of sorted results.
    - :ssl_compliant (Boolean): Select only ads that are SSL-compliant.
    - :ssl_required (Boolean): Select only ads that require SSL.
    - :type (List[String]): Select only ads with these types.

  ## Returns

  {:ok, %GoogleApi.DFAReporting.V28.Model.AdsListResponse{}} on success
  {:error, info} on failure
  """
  @spec dfareporting_ads_list(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.DFAReporting.V28.Model.AdsListResponse.t} | {:error, Tesla.Env.t}
  def dfareporting_ads_list(connection, profile_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"active" => :query,
      :"advertiserId" => :query,
      :"archived" => :query,
      :"audienceSegmentIds" => :query,
      :"campaignIds" => :query,
      :"compatibility" => :query,
      :"creativeIds" => :query,
      :"creativeOptimizationConfigurationIds" => :query,
      :"dynamicClickTracker" => :query,
      :"ids" => :query,
      :"landingPageIds" => :query,
      :"maxResults" => :query,
      :"overriddenEventTagId" => :query,
      :"pageToken" => :query,
      :"placementIds" => :query,
      :"remarketingListIds" => :query,
      :"searchString" => :query,
      :"sizeIds" => :query,
      :"sortField" => :query,
      :"sortOrder" => :query,
      :"sslCompliant" => :query,
      :"sslRequired" => :query,
      :"type" => :query
    }
    %{}
    |> method(:get)
    |> url("/dfareporting/v2.8/userprofiles/#{profile_id}/ads")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.DFAReporting.V28.Model.AdsListResponse{})
  end

  @doc """
  Updates an existing ad. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.DFAReporting.V28.Connection): Connection to server
  - profile_id (String): User profile ID associated with this request.
  - id (String): Ad ID.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (Ad): 

  ## Returns

  {:ok, %GoogleApi.DFAReporting.V28.Model.Ad{}} on success
  {:error, info} on failure
  """
  @spec dfareporting_ads_patch(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.DFAReporting.V28.Model.Ad.t} | {:error, Tesla.Env.t}
  def dfareporting_ads_patch(connection, profile_id, id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:patch)
    |> url("/dfareporting/v2.8/userprofiles/#{profile_id}/ads")
    |> add_param(:query, :"id", id)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.DFAReporting.V28.Model.Ad{})
  end

  @doc """
  Updates an existing ad.

  ## Parameters

  - connection (GoogleApi.DFAReporting.V28.Connection): Connection to server
  - profile_id (String): User profile ID associated with this request.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (Ad): 

  ## Returns

  {:ok, %GoogleApi.DFAReporting.V28.Model.Ad{}} on success
  {:error, info} on failure
  """
  @spec dfareporting_ads_update(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.DFAReporting.V28.Model.Ad.t} | {:error, Tesla.Env.t}
  def dfareporting_ads_update(connection, profile_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:put)
    |> url("/dfareporting/v2.8/userprofiles/#{profile_id}/ads")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.DFAReporting.V28.Model.Ad{})
  end
end
