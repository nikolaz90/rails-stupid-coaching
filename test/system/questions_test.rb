require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask your coach anything"
  end

  test "typing anything other than I'm going to work! Will give you a grumpy response." do
    visit ask_url
    fill_in "ask", with: "hello...you"
    click_on "Ask"
    assert_text "I don't care, get dressed and go to work!"
  end

  test "typing I'm going to work! will make the coach happy." do
    visit ask_url
    fill_in "ask", with: "I'm going to work!"
    click_on "Ask"
    assert_text "Great!"
  end
end
