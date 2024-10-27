defmodule HoundTest do
  use ExUnit.Case
  use Hound.Helpers

  hound_session()

  test "the truth", meta do
    navigate_to("https://thispersondoesnotexist.com/")

    element = find_element(:tag, "img")

    # fill_field(element, "Happy Birthday ~!")
    # submit_element(element)

    # assert page_title() == "Thank you"
  end

end
