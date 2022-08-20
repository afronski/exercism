defmodule RPG do
  defmodule Character, do: defstruct health: 100, mana: 0
  defmodule LoafOfBread, do: defstruct []
  defmodule ManaPotion, do: defstruct strength: 10
  defmodule Poison, do: defstruct []
  defmodule EmptyBottle, do: defstruct []

  defprotocol Edible, do: def eat(item, character)

  defimpl Edible, for: LoafOfBread do
    def eat(_item, char), do: {nil, %{char | health: char.health + 5}}
  end

  defimpl Edible, for: ManaPotion do
    def eat(item, char), do: {%EmptyBottle{}, %{char | mana: char.mana + item.strength}}
  end

  defimpl Edible, for: Poison do
    def eat(_item, char), do: {%EmptyBottle{}, %{char | health: 0}}
  end
end
