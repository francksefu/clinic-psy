require "application_system_test_case"

class EvaluatorInstrumentsTest < ApplicationSystemTestCase
  setup do
    @evaluator_instrument = evaluator_instruments(:one)
  end

  test "visiting the index" do
    visit evaluator_instruments_url
    assert_selector "h1", text: "Evaluator instruments"
  end

  test "should create evaluator instrument" do
    visit evaluator_instruments_url
    click_on "New evaluator instrument"

    fill_in "Date", with: @evaluator_instrument.date
    fill_in "Evaluator", with: @evaluator_instrument.evaluator_id
    fill_in "Instrument", with: @evaluator_instrument.instrument_id
    click_on "Create Evaluator instrument"

    assert_text "Evaluator instrument was successfully created"
    click_on "Back"
  end

  test "should update Evaluator instrument" do
    visit evaluator_instrument_url(@evaluator_instrument)
    click_on "Edit this evaluator instrument", match: :first

    fill_in "Date", with: @evaluator_instrument.date
    fill_in "Evaluator", with: @evaluator_instrument.evaluator_id
    fill_in "Instrument", with: @evaluator_instrument.instrument_id
    click_on "Update Evaluator instrument"

    assert_text "Evaluator instrument was successfully updated"
    click_on "Back"
  end

  test "should destroy Evaluator instrument" do
    visit evaluator_instrument_url(@evaluator_instrument)
    click_on "Destroy this evaluator instrument", match: :first

    assert_text "Evaluator instrument was successfully destroyed"
  end
end
