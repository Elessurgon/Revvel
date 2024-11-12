defmodule Revvel.DataGather do
  use Hound.Helpers

  def visitUrl(url) do
    Hound.start_session()
    navigate_to(url)
    element = find_element(:xpath, "//*[contains(text(), 'Mutual Funds - Holdings statement')]")
    IO.inspect(element)


    success = click(element)
    IO.inspect(success)
    IO.inspect("clicked")

    :timer.sleep(1000)
    IO.inspect(outer_html(element))

    Enum.each(1..100, fn _ ->
      click(element)
      IO.inspect("clicked")
      :timer.sleep(1000)
      # download_span = find_element(:xpath, "//*[contains(text(), 'Download')]")
      # IO.inspect(download_span)
      # visible_in_element?(download_span, "Download")
    end)


    File.write("testing.html", page_source())

    Hound.end_session()
    IO.puts "Worked!!!"
  end
end
