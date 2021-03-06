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

defmodule GoogleApi.BigQuery.V2.Api.Tables do
  @moduledoc """
  API calls for all endpoints tagged `Tables`.
  """

  alias GoogleApi.BigQuery.V2.Connection
  import GoogleApi.BigQuery.V2.RequestBuilder


  @doc """
  Deletes the table specified by tableId from the dataset. If the table contains data, all the data will be deleted.

  ## Parameters

  - connection (GoogleApi.BigQuery.V2.Connection): Connection to server
  - project_id (String): Project ID of the table to delete
  - dataset_id (String): Dataset ID of the table to delete
  - table_id (String): Table ID of the table to delete
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
  @spec bigquery_tables_delete(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def bigquery_tables_delete(connection, project_id, dataset_id, table_id, opts \\ []) do
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
    |> url("/bigquery/v2/projects/#{project_id}/datasets/#{dataset_id}/tables/#{table_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Gets the specified table resource by table ID. This method does not return the data in the table, it only returns the table resource, which describes the structure of this table.

  ## Parameters

  - connection (GoogleApi.BigQuery.V2.Connection): Connection to server
  - project_id (String): Project ID of the requested table
  - dataset_id (String): Dataset ID of the requested table
  - table_id (String): Table ID of the requested table
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :selected_fields (String): List of fields to return (comma-separated). If unspecified, all fields are returned

  ## Returns

  {:ok, %GoogleApi.BigQuery.V2.Model.Table{}} on success
  {:error, info} on failure
  """
  @spec bigquery_tables_get(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.BigQuery.V2.Model.Table.t} | {:error, Tesla.Env.t}
  def bigquery_tables_get(connection, project_id, dataset_id, table_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"selectedFields" => :query
    }
    %{}
    |> method(:get)
    |> url("/bigquery/v2/projects/#{project_id}/datasets/#{dataset_id}/tables/#{table_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.BigQuery.V2.Model.Table{})
  end

  @doc """
  Creates a new, empty table in the dataset.

  ## Parameters

  - connection (GoogleApi.BigQuery.V2.Connection): Connection to server
  - project_id (String): Project ID of the new table
  - dataset_id (String): Dataset ID of the new table
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (Table): 

  ## Returns

  {:ok, %GoogleApi.BigQuery.V2.Model.Table{}} on success
  {:error, info} on failure
  """
  @spec bigquery_tables_insert(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.BigQuery.V2.Model.Table.t} | {:error, Tesla.Env.t}
  def bigquery_tables_insert(connection, project_id, dataset_id, opts \\ []) do
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
    |> url("/bigquery/v2/projects/#{project_id}/datasets/#{dataset_id}/tables")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.BigQuery.V2.Model.Table{})
  end

  @doc """
  Lists all tables in the specified dataset. Requires the READER dataset role.

  ## Parameters

  - connection (GoogleApi.BigQuery.V2.Connection): Connection to server
  - project_id (String): Project ID of the tables to list
  - dataset_id (String): Dataset ID of the tables to list
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :max_results (Integer): Maximum number of results to return
    - :page_token (String): Page token, returned by a previous call, to request the next page of results

  ## Returns

  {:ok, %GoogleApi.BigQuery.V2.Model.TableList{}} on success
  {:error, info} on failure
  """
  @spec bigquery_tables_list(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.BigQuery.V2.Model.TableList.t} | {:error, Tesla.Env.t}
  def bigquery_tables_list(connection, project_id, dataset_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"maxResults" => :query,
      :"pageToken" => :query
    }
    %{}
    |> method(:get)
    |> url("/bigquery/v2/projects/#{project_id}/datasets/#{dataset_id}/tables")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.BigQuery.V2.Model.TableList{})
  end

  @doc """
  Updates information in an existing table. The update method replaces the entire table resource, whereas the patch method only replaces fields that are provided in the submitted table resource. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.BigQuery.V2.Connection): Connection to server
  - project_id (String): Project ID of the table to update
  - dataset_id (String): Dataset ID of the table to update
  - table_id (String): Table ID of the table to update
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (Table): 

  ## Returns

  {:ok, %GoogleApi.BigQuery.V2.Model.Table{}} on success
  {:error, info} on failure
  """
  @spec bigquery_tables_patch(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.BigQuery.V2.Model.Table.t} | {:error, Tesla.Env.t}
  def bigquery_tables_patch(connection, project_id, dataset_id, table_id, opts \\ []) do
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
    |> url("/bigquery/v2/projects/#{project_id}/datasets/#{dataset_id}/tables/#{table_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.BigQuery.V2.Model.Table{})
  end

  @doc """
  Updates information in an existing table. The update method replaces the entire table resource, whereas the patch method only replaces fields that are provided in the submitted table resource.

  ## Parameters

  - connection (GoogleApi.BigQuery.V2.Connection): Connection to server
  - project_id (String): Project ID of the table to update
  - dataset_id (String): Dataset ID of the table to update
  - table_id (String): Table ID of the table to update
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (Table): 

  ## Returns

  {:ok, %GoogleApi.BigQuery.V2.Model.Table{}} on success
  {:error, info} on failure
  """
  @spec bigquery_tables_update(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, GoogleApi.BigQuery.V2.Model.Table.t} | {:error, Tesla.Env.t}
  def bigquery_tables_update(connection, project_id, dataset_id, table_id, opts \\ []) do
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
    |> url("/bigquery/v2/projects/#{project_id}/datasets/#{dataset_id}/tables/#{table_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.BigQuery.V2.Model.Table{})
  end
end
