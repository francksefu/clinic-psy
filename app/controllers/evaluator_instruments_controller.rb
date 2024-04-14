class EvaluatorInstrumentsController < ApplicationController
  before_action :set_evaluator_instrument, only: %i[ show edit update destroy ]

  # GET /evaluator_instruments or /evaluator_instruments.json
  def index
    @evaluator_instruments = EvaluatorInstrument.all
  end

  # GET /evaluator_instruments/1 or /evaluator_instruments/1.json
  def show
  end

  # GET /evaluator_instruments/new
  def new
    @evaluator_instrument = EvaluatorInstrument.new
  end

  # GET /evaluator_instruments/1/edit
  def edit
  end

  # POST /evaluator_instruments or /evaluator_instruments.json
  def create
    @evaluator_instrument = EvaluatorInstrument.new(evaluator_instrument_params)

    respond_to do |format|
      if @evaluator_instrument.save
        format.html { redirect_to evaluator_instrument_url(@evaluator_instrument), notice: "Evaluator instrument was successfully created." }
        format.json { render :show, status: :created, location: @evaluator_instrument }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @evaluator_instrument.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evaluator_instruments/1 or /evaluator_instruments/1.json
  def update
    respond_to do |format|
      if @evaluator_instrument.update(evaluator_instrument_params)
        format.html { redirect_to evaluator_instrument_url(@evaluator_instrument), notice: "Evaluator instrument was successfully updated." }
        format.json { render :show, status: :ok, location: @evaluator_instrument }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @evaluator_instrument.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluator_instruments/1 or /evaluator_instruments/1.json
  def destroy
    @evaluator_instrument.destroy!

    respond_to do |format|
      format.html { redirect_to evaluator_instruments_url, notice: "Evaluator instrument was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evaluator_instrument
      @evaluator_instrument = EvaluatorInstrument.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def evaluator_instrument_params
      params.require(:evaluator_instrument).permit(:evaluator_id, :instrument_id, :date)
    end
end
