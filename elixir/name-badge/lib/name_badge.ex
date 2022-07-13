defmodule NameBadge do
  @owner "OWNER"
  @separator " - "

  def print(id, name, department) do
    id_part = if id, do: "[#{id}]"
    dep_part = if department, do: String.upcase(department), else: @owner

    [id_part, name, dep_part] |> Enum.reject(&is_nil/1) |> Enum.join(@separator)
  end
end
