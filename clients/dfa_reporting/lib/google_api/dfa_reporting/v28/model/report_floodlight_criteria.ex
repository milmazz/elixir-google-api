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

defmodule GoogleApi.DFAReporting.V28.Model.Report_floodlightCriteria do
  @moduledoc """
  The report criteria for a report of type \&quot;FLOODLIGHT\&quot;.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"customRichMediaEvents",
    :"dateRange",
    :"dimensionFilters",
    :"dimensions",
    :"floodlightConfigId",
    :"metricNames",
    :"reportProperties"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.Report_floodlightCriteria do
  import GoogleApi.DFAReporting.V28.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"customRichMediaEvents", :list, GoogleApi.DFAReporting.V28.Model.DimensionValue, options)
    |> deserialize(:"dateRange", :struct, GoogleApi.DFAReporting.V28.Model.DateRange, options)
    |> deserialize(:"dimensionFilters", :list, GoogleApi.DFAReporting.V28.Model.DimensionValue, options)
    |> deserialize(:"dimensions", :list, GoogleApi.DFAReporting.V28.Model.SortedDimension, options)
    |> deserialize(:"floodlightConfigId", :struct, GoogleApi.DFAReporting.V28.Model.DimensionValue, options)
    |> deserialize(:"reportProperties", :struct, GoogleApi.DFAReporting.V28.Model.Report_floodlightCriteria_reportProperties, options)
  end
end

