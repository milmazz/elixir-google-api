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

defmodule GoogleApi.Content.V2.Api.Products do
  @moduledoc """
  API calls for all endpoints tagged `Products`.
  """

  alias GoogleApi.Content.V2.Connection
  import GoogleApi.Content.V2.RequestBuilder


  @doc """
  Retrieves, inserts, and deletes multiple products in a single request. This method can only be called for non-multi-client accounts.

  ## Parameters

  - connection (GoogleApi.Content.V2.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :dry_run (Boolean): Flag to run the request in dry-run mode.
    - :body (ProductsCustomBatchRequest): 

  ## Returns

  {:ok, %GoogleApi.Content.V2.Model.ProductsCustomBatchResponse{}} on success
  {:error, info} on failure
  """
  @spec content_products_custombatch(Tesla.Env.client, keyword()) :: {:ok, GoogleApi.Content.V2.Model.ProductsCustomBatchResponse.t} | {:error, Tesla.Env.t}
  def content_products_custombatch(connection, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"dryRun" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/products/batch")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Content.V2.Model.ProductsCustomBatchResponse{})
  end

  @doc """
  Deletes a product from your Merchant Center account. This method can only be called for non-multi-client accounts.

  ## Parameters

  - connection (GoogleApi.Content.V2.Connection): Connection to server
  - merchant_id (String): The ID of the managing account.
  - product_id (String): The ID of the product.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :dry_run (Boolean): Flag to run the request in dry-run mode.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec content_products_delete(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def content_products_delete(connection, merchant_id, product_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"dryRun" => :query
    }
    %{}
    |> method(:delete)
    |> url("/#{merchant_id}/products/#{product_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Retrieves a product from your Merchant Center account. This method can only be called for non-multi-client accounts.

  ## Parameters

  - connection (GoogleApi.Content.V2.Connection): Connection to server
  - merchant_id (String): The ID of the managing account.
  - product_id (String): The ID of the product.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.Content.V2.Model.Product{}} on success
  {:error, info} on failure
  """
  @spec content_products_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Content.V2.Model.Product.t} | {:error, Tesla.Env.t}
  def content_products_get(connection, merchant_id, product_id, opts \\ []) do
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
    |> url("/#{merchant_id}/products/#{product_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Content.V2.Model.Product{})
  end

  @doc """
  Uploads a product to your Merchant Center account. If an item with the same channel, contentLanguage, offerId, and targetCountry already exists, this method updates that entry. This method can only be called for non-multi-client accounts.

  ## Parameters

  - connection (GoogleApi.Content.V2.Connection): Connection to server
  - merchant_id (String): The ID of the managing account.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :dry_run (Boolean): Flag to run the request in dry-run mode.
    - :body (Product): 

  ## Returns

  {:ok, %GoogleApi.Content.V2.Model.Product{}} on success
  {:error, info} on failure
  """
  @spec content_products_insert(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Content.V2.Model.Product.t} | {:error, Tesla.Env.t}
  def content_products_insert(connection, merchant_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"dryRun" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/#{merchant_id}/products")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Content.V2.Model.Product{})
  end

  @doc """
  Lists the products in your Merchant Center account. This method can only be called for non-multi-client accounts.

  ## Parameters

  - connection (GoogleApi.Content.V2.Connection): Connection to server
  - merchant_id (String): The ID of the managing account.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :include_invalid_inserted_items (Boolean): Flag to include the invalid inserted items in the result of the list request. By default the invalid items are not shown (the default value is false).
    - :max_results (Integer): The maximum number of products to return in the response, used for paging.
    - :page_token (String): The token returned by the previous request.

  ## Returns

  {:ok, %GoogleApi.Content.V2.Model.ProductsListResponse{}} on success
  {:error, info} on failure
  """
  @spec content_products_list(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Content.V2.Model.ProductsListResponse.t} | {:error, Tesla.Env.t}
  def content_products_list(connection, merchant_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"includeInvalidInsertedItems" => :query,
      :"maxResults" => :query,
      :"pageToken" => :query
    }
    %{}
    |> method(:get)
    |> url("/#{merchant_id}/products")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Content.V2.Model.ProductsListResponse{})
  end
end