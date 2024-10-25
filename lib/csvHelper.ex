defmodule Revvel.CsvHelper do
  #c("lib/csvHelper.ex")
  #Revvel.CsvHelper.read_csv("./test.csv")
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
end
