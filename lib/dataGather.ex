defmodule Revvel.DataGather do
  use Hound.Helpers

  def visitUrl(url) do
    Hound.start_session()
    navigate_to(url)

    :timer.sleep(1000)
    File.write("testing.txt", page_source())
    Hound.end_session()
    IO.puts "Worked!!!"
  end
end
