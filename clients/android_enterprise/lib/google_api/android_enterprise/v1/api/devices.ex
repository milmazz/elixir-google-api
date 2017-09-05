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

defmodule GoogleApi.AndroidEnterprise.V1.Api.Devices do
  @moduledoc """
  API calls for all endpoints tagged `Devices`.
  """

  alias GoogleApi.AndroidEnterprise.V1.Connection
  import GoogleApi.AndroidEnterprise.V1.RequestBuilder


  @doc """
  Retrieves the details of a device.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String): The ID of the enterprise.
  - user_id (String): The ID of the user.
  - device_id (String): The ID of the device.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.Device{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_devices_get(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.AndroidEnterprise.V1.Model.Device.t} | {:error, Tesla.Env.t}
  def androidenterprise_devices_get(connection, enterprise_id, user_id, device_id, opts \\ []) do
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
    |> url("/enterprises/#{enterprise_id}/users/#{user_id}/devices/#{device_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidEnterprise.V1.Model.Device{})
  end

  @doc """
  Retrieves whether a device&#39;s access to Google services is enabled or disabled. The device state takes effect only if enforcing EMM policies on Android devices is enabled in the Google Admin Console. Otherwise, the device state is ignored and all devices are allowed access to Google services. This is only supported for Google-managed users.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String): The ID of the enterprise.
  - user_id (String): The ID of the user.
  - device_id (String): The ID of the device.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.DeviceState{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_devices_get_state(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.AndroidEnterprise.V1.Model.DeviceState.t} | {:error, Tesla.Env.t}
  def androidenterprise_devices_get_state(connection, enterprise_id, user_id, device_id, opts \\ []) do
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
    |> url("/enterprises/#{enterprise_id}/users/#{user_id}/devices/#{device_id}/state")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidEnterprise.V1.Model.DeviceState{})
  end

  @doc """
  Retrieves the IDs of all of a user&#39;s devices.

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

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.DevicesListResponse{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_devices_list(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.AndroidEnterprise.V1.Model.DevicesListResponse.t} | {:error, Tesla.Env.t}
  def androidenterprise_devices_list(connection, enterprise_id, user_id, opts \\ []) do
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
    |> url("/enterprises/#{enterprise_id}/users/#{user_id}/devices")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidEnterprise.V1.Model.DevicesListResponse{})
  end

  @doc """
  Sets whether a device&#39;s access to Google services is enabled or disabled. The device state takes effect only if enforcing EMM policies on Android devices is enabled in the Google Admin Console. Otherwise, the device state is ignored and all devices are allowed access to Google services. This is only supported for Google-managed users.

  ## Parameters

  - connection (GoogleApi.AndroidEnterprise.V1.Connection): Connection to server
  - enterprise_id (String): The ID of the enterprise.
  - user_id (String): The ID of the user.
  - device_id (String): The ID of the device.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (DeviceState): 

  ## Returns

  {:ok, %GoogleApi.AndroidEnterprise.V1.Model.DeviceState{}} on success
  {:error, info} on failure
  """
  @spec androidenterprise_devices_set_state(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.AndroidEnterprise.V1.Model.DeviceState.t} | {:error, Tesla.Env.t}
  def androidenterprise_devices_set_state(connection, enterprise_id, user_id, device_id, opts \\ []) do
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
    |> url("/enterprises/#{enterprise_id}/users/#{user_id}/devices/#{device_id}/state")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AndroidEnterprise.V1.Model.DeviceState{})
  end
end