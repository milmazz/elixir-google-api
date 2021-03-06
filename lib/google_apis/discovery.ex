# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

defmodule GoogleApis.Discovery do
  require Logger

  def fetch(url) do
    case Regex.run(~r/(https:\/\/.*\.googleapis.com\/\$discovery\/)([^?]*)(\?.*)?/, url) do
      [_, base, format, query] ->
        try_formats(base, query, ["GOOGLE_REST_SIMPLE_URI", format])
      nil ->
        {:ok, body} = fetch_direct(url)
        {:ok, {body, "default"}}
    end
  end

  defp try_formats(_base, _query, []), do: {:error, "All formats failed"}
  defp try_formats(base, query, [format | rest]) do
    case fetch_direct(base <> format <> query) do
      {:ok, body} ->
        {:ok, {body, format}}
      _ ->
        try_formats(base, query, rest)
    end
  end

  defp fetch_direct(url) do
    with %Tesla.Env{status: 200, body: body} <- Tesla.get(url)
    do
      Logger.info "FOUND: #{url}"
      {:ok, body}
    else
      %Tesla.Env{status: status} ->
        {:error, "Error received status: #{status} from discovery endpoint"}
      err ->
        err
    end
  end
end
