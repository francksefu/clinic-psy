require "application_system_test_case"

class EvaluatorsTest < ApplicationSystemTestCase
  setup do
    @evaluator = evaluators(:one)
  end

  test "visiting the index" do
    visit evaluators_url
    assert_selector "h1", text: "Evaluators"
  end

  test "should create evaluator" do
    visit evaluators_url
    click_on "New evaluator"

    fill_in "Cpf", with: @evaluator.cpf
    fill_in "Date of birth", with: @evaluator.date_of_birth
    fill_in "Email", with: @evaluator.email
    fill_in "Name", with: @evaluator.name
    fill_in "User", with: @evaluator.user_id
    click_on "Create Evaluator"

    assert_text "Evaluator was successfully created"
    click_on "Back"
  end

  test "should update Evaluator" do
    visit evaluator_url(@evaluator)
    click_on "Edit this evaluator", match: :first

    fill_in "Cpf", with: @evaluator.cpf
    fill_in "Date of birth", with: @evaluator.date_of_birth
    fill_in "Email", with: @evaluator.email
    fill_in "Name", with: @evaluator.name
    fill_in "User", with: @evaluator.user_id
    click_on "Update Evaluator"

    assert_text "Evaluator was successfully updated"
    click_on "Back"
  end

  test "should destroy Evaluator" do
    visit evaluator_url(@evaluator)
    click_on "Destroy this evaluator", match: :first

    assert_text "Evaluator was successfully destroyed"
  end
end
