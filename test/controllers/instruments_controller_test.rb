require "test_helper"

class InstrumentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @instrument = instruments(:one)
  end

  test "should get index" do
    get instruments_url
    assert_response :success
  end

  test "should get new" do
    get new_instrument_url
    assert_response :success
  end

  test "should create instrument" do
    assert_difference("Instrument.count") do
      post instruments_url, params: { instrument: { question_five: @instrument.question_five, question_four: @instrument.question_four, question_one: @instrument.question_one, question_tree: @instrument.question_tree, question_two: @instrument.question_two } }
    end

    assert_redirected_to instrument_url(Instrument.last)
  end

  test "should show instrument" do
    get instrument_url(@instrument)
    assert_response :success
  end

  test "should get edit" do
    get edit_instrument_url(@instrument)
    assert_response :success
  end

  test "should update instrument" do
    patch instrument_url(@instrument), params: { instrument: { question_five: @instrument.question_five, question_four: @instrument.question_four, question_one: @instrument.question_one, question_tree: @instrument.question_tree, question_two: @instrument.question_two } }
    assert_redirected_to instrument_url(@instrument)
  end

  test "should destroy instrument" do
    assert_difference("Instrument.count", -1) do
      delete instrument_url(@instrument)
    end

    assert_redirected_to instruments_url
  end
end
