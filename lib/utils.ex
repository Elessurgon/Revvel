defmodule Revvel.Utils do
  def parse_to_float(value) when is_binary(value) do
    case Float.parse(value) do
      {float_value, _} -> float_value
      :error ->
        case Integer.parse(value) do
          {int_value, _} -> int_value + 0.0
          :error -> 0.0
        end
    end
  end

  def parse_to_float(_), do: 0.0
end
