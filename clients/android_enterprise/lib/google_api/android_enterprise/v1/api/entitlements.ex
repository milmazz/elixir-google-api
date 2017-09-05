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

defmodule GoogleApi.AndroidEnterprise.V1.Api.Entitlements do
  @moduledoc """
  API calls for all endpoints tagged `Entitlements`.
  """

  alias GoogleApi.AndroidEnterprise.V1.Connection
  import GoogleApi.AndroidEnterprise.V1.RequestBuilder


  @doc """
  Removes an entitlement to an app for a user.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String): The ID of the enterprise.
  - user_id (String): The ID of the user.
  - entitlement_id (String): The ID of the entitlement (a product ID), e.g. \&quot;app:com.google.android.gm\&quot;.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_entitlements_delete(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def androidenterprise_entitlements_delete(connection, enterprise_id, user_id, entitlement_id, opts \\ []) do
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
    |> method(:delete)
    |> url("/enterprises/#{enterprise_id}/users/#{user_id}/entitlements/#{entitlement_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Retrieves details of an entitlement.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String): The ID of the enterprise.
  - user_id (String): The ID of the user.
  - entitlement_id (String): The ID of the entitlement (a product ID), e.g. \&quot;app:com.google.android.gm\&quot;.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.Entitlement{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_entitlements_get(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.AndroidEnterprise.V1.Model.Entitlement.t} | {:error, Tesla.Env.t}
  def androidenterprise_entitlements_get(connection, enterprise_id, user_id, entitlement_id, opts \\ []) do
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
    |> url("/enterprises/#{enterprise_id}/users/#{user_id}/entitlements/#{entitlement_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidEnterprise.V1.Model.Entitlement{})
  end

  @doc """
  Lists all entitlements for the specified user. Only the ID is set.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String): The ID of the enterprise.
  - user_id (String): The ID of the user.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.EntitlementsListResponse{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_entitlements_list(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.AndroidEnterprise.V1.Model.EntitlementsListResponse.t} | {:error, Tesla.Env.t}
  def androidenterprise_entitlements_list(connection, enterprise_id, user_id, opts \\ []) do
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
    |> url("/enterprises/#{enterprise_id}/users/#{user_id}/entitlements")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidEnterprise.V1.Model.EntitlementsListResponse{})
  end

  @doc """
  Adds or updates an entitlement to an app for a user. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String): The ID of the enterprise.
  - user_id (String): The ID of the user.
  - entitlement_id (String): The ID of the entitlement (a product ID), e.g. \&quot;app:com.google.android.gm\&quot;.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :install (Boolean): Set to true to also install the product on all the user&#39;s devices where possible. Failure to install on one or more devices will not prevent this operation from returning successfully, as long as the entitlement was successfully assigned to the user.
    - :body (Entitlement): 

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.Entitlement{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_entitlements_patch(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.AndroidEnterprise.V1.Model.Entitlement.t} | {:error, Tesla.Env.t}
  def androidenterprise_entitlements_patch(connection, enterprise_id, user_id, entitlement_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"install" => :query,
      :"body" => :body
    }
    %{}
    |> method(:patch)
    |> url("/enterprises/#{enterprise_id}/users/#{user_id}/entitlements/#{entitlement_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidEnterprise.V1.Model.Entitlement{})
  end

  @doc """
  Adds or updates an entitlement to an app for a user.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String): The ID of the enterprise.
  - user_id (String): The ID of the user.
  - entitlement_id (String): The ID of the entitlement (a product ID), e.g. \&quot;app:com.google.android.gm\&quot;.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :install (Boolean): Set to true to also install the product on all the user&#39;s devices where possible. Failure to install on one or more devices will not prevent this operation from returning successfully, as long as the entitlement was successfully assigned to the user.
    - :body (Entitlement): 

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.Entitlement{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_entitlements_update(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.AndroidEnterprise.V1.Model.Entitlement.t} | {:error, Tesla.Env.t}
  def androidenterprise_entitlements_update(connection, enterprise_id, user_id, entitlement_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"install" => :query,
      :"body" => :body
    }
    %{}
    |> method(:put)
    |> url("/enterprises/#{enterprise_id}/users/#{user_id}/entitlements/#{entitlement_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidEnterprise.V1.Model.Entitlement{})
  end
end