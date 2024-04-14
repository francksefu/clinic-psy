require "test_helper"

class EvaluatorInstrumentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evaluator_instrument = evaluator_instruments(:one)
  end

  test "should get index" do
    get evaluator_instruments_url
    assert_response :success
  end

  test "should get new" do
    get new_evaluator_instrument_url
    assert_response :success
  end

  test "should create evaluator_instrument" do
    assert_difference("EvaluatorInstrument.count") do
      post evaluator_instruments_url, params: { evaluator_instrument: { date: @evaluator_instrument.date, evaluator_id: @evaluator_instrument.evaluator_id, instrument_id: @evaluator_instrument.instrument_id } }
    end

    assert_redirected_to evaluator_instrument_url(EvaluatorInstrument.last)
  end

  test "should show evaluator_instrument" do
    get evaluator_instrument_url(@evaluator_instrument)
    assert_response :success
  end

  test "should get edit" do
    get edit_evaluator_instrument_url(@evaluator_instrument)
    assert_response :success
  end

  test "should update evaluator_instrument" do
    patch evaluator_instrument_url(@evaluator_instrument), params: { evaluator_instrument: { date: @evaluator_instrument.date, evaluator_id: @evaluator_instrument.evaluator_id, instrument_id: @evaluator_instrument.instrument_id } }
    assert_redirected_to evaluator_instrument_url(@evaluator_instrument)
  end

  test "should destroy evaluator_instrument" do
    assert_difference("EvaluatorInstrument.count", -1) do
      delete evaluator_instrument_url(@evaluator_instrument)
    end

    assert_redirected_to evaluator_instruments_url
  end
end
