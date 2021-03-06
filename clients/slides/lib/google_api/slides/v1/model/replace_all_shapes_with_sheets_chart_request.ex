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

defmodule GoogleApi.Slides.V1.Model.ReplaceAllShapesWithSheetsChartRequest do
  @moduledoc """
  Replaces all shapes that match the given criteria with the provided Google Sheets chart. The chart will be scaled and centered to fit within the bounds of the original shape.  NOTE: Replacing shapes with a chart requires at least one of the spreadsheets.readonly, spreadsheets, drive.readonly, or drive OAuth scopes.

  ## Attributes

  - chartId (Integer): The ID of the specific chart in the Google Sheets spreadsheet. Defaults to: `null`.
  - containsText (SubstringMatchCriteria): The criteria that the shapes must match in order to be replaced. The request will replace all of the shapes that contain the given text. Defaults to: `null`.
  - linkingMode (String): The mode with which the chart is linked to the source spreadsheet. When not specified, the chart will be an image that is not linked. Defaults to: `null`.
    - Enum - one of [NOT_LINKED_IMAGE, LINKED]
  - pageObjectIds (List[String]): If non-empty, limits the matches to page elements only on the given pages.  Returns a 400 bad request error if given the page object ID of a notes page or a notes master, or if a page with that object ID doesn&#39;t exist in the presentation. Defaults to: `null`.
  - spreadsheetId (String): The ID of the Google Sheets spreadsheet that contains the chart. Defaults to: `null`.
  """

  defstruct [
    :"chartId",
    :"containsText",
    :"linkingMode",
    :"pageObjectIds",
    :"spreadsheetId"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.ReplaceAllShapesWithSheetsChartRequest do
  import GoogleApi.Slides.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"containsText", :struct, GoogleApi.Slides.V1.Model.SubstringMatchCriteria, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.ReplaceAllShapesWithSheetsChartRequest do
  def encode(value, options) do
    GoogleApi.Slides.V1.Deserializer.serialize_non_nil(value, options)
  end
end

