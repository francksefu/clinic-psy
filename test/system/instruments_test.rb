require "application_system_test_case"

class InstrumentsTest < ApplicationSystemTestCase
  setup do
    @instrument = instruments(:one)
  end

  test "visiting the index" do
    visit instruments_url
    assert_selector "h1", text: "Instruments"
  end

  test "should create instrument" do
    visit instruments_url
    click_on "New instrument"

    fill_in "Question five", with: @instrument.question_five
    fill_in "Question four", with: @instrument.question_four
    fill_in "Question one", with: @instrument.question_one
    fill_in "Question tree", with: @instrument.question_tree
    fill_in "Question two", with: @instrument.question_two
    click_on "Create Instrument"

    assert_text "Instrument was successfully created"
    click_on "Back"
  end

  test "should update Instrument" do
    visit instrument_url(@instrument)
    click_on "Edit this instrument", match: :first

    fill_in "Question five", with: @instrument.question_five
    fill_in "Question four", with: @instrument.question_four
    fill_in "Question one", with: @instrument.question_one
    fill_in "Question tree", with: @instrument.question_tree
    fill_in "Question two", with: @instrument.question_two
    click_on "Update Instrument"

    assert_text "Instrument was successfully updated"
    click_on "Back"
  end

  test "should destroy Instrument" do
    visit instrument_url(@instrument)
    click_on "Destroy this instrument", match: :first

    assert_text "Instrument was successfully destroyed"
  end
end
