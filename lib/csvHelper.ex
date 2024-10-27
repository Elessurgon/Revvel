defmodule Revvel.CsvHelper do
  def read_csv(path) do
    File.stream!(path)
    |> CSV.decode(headers: true)
    |> Enum.each(fn
      {:ok, row} ->
        IO.inspect(row)
      {_, stuff} ->
        IO.puts("not idea what happened decoding row: #{stuff}")
    end)
  end


  def xlsxReader(path, filterConditionFunction)  do
    [ok: table_id] = Xlsxir.multi_extract(path)

    table_id
    |> Xlsxir.get_mda
    |> Enum.filter(filterConditionFunction)
    |> Enum.reduce([], fn {_key, value}, acc -> [value | acc] end)
    |> Enum.reduce(0, fn map, acc -> acc + String.to_float(map[8]) end)
    |> Float.round(2)
  end
end
