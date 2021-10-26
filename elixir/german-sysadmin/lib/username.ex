defmodule Username do
  def sanitize(username) do
    username
    |> Enum.map(&character_whitelist/1)
    |> Enum.flat_map(&(&1))
  end

  defp character_whitelist(ch) when (ch >= ?a and ch <= ?z), do: [ ch ]
  defp character_whitelist(?_), do: [ ?_ ]
  defp character_whitelist(?ö), do: [ ?o, ?e ]
  defp character_whitelist(?ü), do: [ ?u, ?e ]
  defp character_whitelist(?ä), do: [ ?a, ?e ]
  defp character_whitelist(?ß), do: [ ?s, ?s ]
  defp character_whitelist(ch), do: []
end
