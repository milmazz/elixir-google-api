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

defmodule GoogleApi.Partners.V2.Model.CountryOfferInfo do
  @moduledoc """
  Offer info by country.

  ## Attributes

  - getYAmount (String): (localized) Get Y amount for that country&#39;s offer. Defaults to: `null`.
  - offerCountryCode (String): Country code for which offer codes may be requested. Defaults to: `null`.
  - offerType (String): Type of offer country is eligible for. Defaults to: `null`.
    - Enum - one of [OFFER_TYPE_UNSPECIFIED, OFFER_TYPE_SPEND_X_GET_Y, OFFER_TYPE_VIDEO, OFFER_TYPE_SPEND_MATCH]
  - spendXAmount (String): (localized) Spend X amount for that country&#39;s offer. Defaults to: `null`.
  """

  defstruct [
    :"getYAmount",
    :"offerCountryCode",
    :"offerType",
    :"spendXAmount"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Partners.V2.Model.CountryOfferInfo do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Partners.V2.Model.CountryOfferInfo do
  def encode(value, options) do
    GoogleApi.Partners.V2.Deserializer.serialize_non_nil(value, options)
  end
end

