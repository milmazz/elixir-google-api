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

defmodule GoogleApi.Genomics.V1.Model.BatchCreateAnnotationsRequest do
  @moduledoc """
  

  ## Attributes

  - annotations (List[Annotation]): The annotations to be created. At most 4096 can be specified in a single request. Defaults to: `null`.
  - requestId (String): A unique request ID which enables the server to detect duplicated requests. If provided, duplicated requests will result in the same response; if not provided, duplicated requests may result in duplicated data. For a given annotation set, callers should not reuse &#x60;request_id&#x60;s when writing different batches of annotations - behavior in this case is undefined. A common approach is to use a UUID. For batch jobs where worker crashes are a possibility, consider using some unique variant of a worker or run ID. Defaults to: `null`.
  """

  defstruct [
    :"annotations",
    :"requestId"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Genomics.V1.Model.BatchCreateAnnotationsRequest do
  import GoogleApi.Genomics.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"annotations", :list, GoogleApi.Genomics.V1.Model.Annotation, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Genomics.V1.Model.BatchCreateAnnotationsRequest do
  def encode(value, options) do
    GoogleApi.Genomics.V1.Deserializer.serialize_non_nil(value, options)
  end
end

