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

defmodule GoogleApi.IdentityToolkit.V3.Model.VerifyPasswordResponse do
  @moduledoc """
  Request of verifying the password.

  ## Attributes

  - displayName (String): The name of the user. Defaults to: `null`.
  - email (String): The email returned by the IdP. NOTE: The federated login user may not own the email. Defaults to: `null`.
  - expiresIn (String): If idToken is STS id token, then this field will be expiration time of STS id token in seconds. Defaults to: `null`.
  - idToken (String): The GITKit token for authenticated user. Defaults to: `null`.
  - kind (String): The fixed string \&quot;identitytoolkit#VerifyPasswordResponse\&quot;. Defaults to: `null`.
  - localId (String): The RP local ID if it&#39;s already been mapped to the IdP account identified by the federated ID. Defaults to: `null`.
  - oauthAccessToken (String): The OAuth2 access token. Defaults to: `null`.
  - oauthAuthorizationCode (String): The OAuth2 authorization code. Defaults to: `null`.
  - oauthExpireIn (Integer): The lifetime in seconds of the OAuth2 access token. Defaults to: `null`.
  - photoUrl (String): The URI of the user&#39;s photo at IdP Defaults to: `null`.
  - refreshToken (String): If idToken is STS id token, then this field will be refresh token. Defaults to: `null`.
  - registered (Boolean): Whether the email is registered. Defaults to: `null`.
  """

  defstruct [
    :"displayName",
    :"email",
    :"expiresIn",
    :"idToken",
    :"kind",
    :"localId",
    :"oauthAccessToken",
    :"oauthAuthorizationCode",
    :"oauthExpireIn",
    :"photoUrl",
    :"refreshToken",
    :"registered"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.IdentityToolkit.V3.Model.VerifyPasswordResponse do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.IdentityToolkit.V3.Model.VerifyPasswordResponse do
  def encode(value, options) do
    GoogleApi.IdentityToolkit.V3.Deserializer.serialize_non_nil(value, options)
  end
end

