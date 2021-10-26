defmodule Username do
  def sanitize(username) do
    username
    |> Enum.map(&map_character_according_to_whitelist/1)
    |> Enum.flat_map(&(&1))
  end

  defp map_character_according_to_whitelist(char) do
    case char do
      ch when (ch >= ?a and ch <= ?z) -> [ ch ];
      ?_                              -> [ ?_ ];
      ?ö                              -> [ ?o, ?e ];
      ?ü                              -> [ ?u, ?e ];
      ?ä                              -> [ ?a, ?e ];
      ?ß                              -> [ ?s, ?s ];
      _                               -> []
    end
  end
end
