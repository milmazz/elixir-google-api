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

defmodule GoogleApi.AndroidManagement.V1.Model.Enterprise do
  @moduledoc """
  The configuration applied to an enterprise.

  ## Attributes

  - appAutoApprovalEnabled (Boolean): Whether app auto-approval is enabled. When enabled, apps installed via policy for this enterprise have all permissions automatically approved. When enabled, it is the caller&#39;s responsibility to display the permissions required by an app to the enterprise admin before setting the app to be installed in a policy. Defaults to: `null`.
  - enabledNotificationTypes (List[String]): The notification types to enable via Google Cloud Pub/Sub. Defaults to: `null`.
    - Enum - one of 
  - enterpriseDisplayName (String): The name of the enterprise as it will appear to users. Defaults to: `null`.
  - logo (ExternalData): An image displayed as a logo during device provisioning. Supported types are: image/bmp, image/gif, image/x-ico, image/jpeg, image/png, image/webp, image/vnd.wap.wbmp, image/x-adobe-dng. Defaults to: `null`.
  - name (String): The name of the enterprise which is generated by the server during creation, in the form enterprises/{enterpriseId} Defaults to: `null`.
  - primaryColor (Integer): A color in RGB format indicating the predominant color to display in the device management app UI. The color components are stored as follows: (red &lt;&lt; 16) | (green &lt;&lt; 8) | blue, where each component may take a value between 0 and 255 inclusive. Defaults to: `null`.
  - pubsubTopic (String): When Cloud Pub/Sub notifications are enabled, this field is required to indicate the topic to which the notifications will be published. The format of this field is projects/{project}/topics/{topic}. You must have granted the publish permission on this topic to android-cloud-policy@system.gserviceaccount.com Defaults to: `null`.
  """

  defstruct [
    :"appAutoApprovalEnabled",
    :"enabledNotificationTypes",
    :"enterpriseDisplayName",
    :"logo",
    :"name",
    :"primaryColor",
    :"pubsubTopic"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.Enterprise do
  import GoogleApi.AndroidManagement.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"logo", :struct, GoogleApi.AndroidManagement.V1.Model.ExternalData, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.Enterprise do
  def encode(value, options) do
    GoogleApi.AndroidManagement.V1.Deserializer.serialize_non_nil(value, options)
  end
end

