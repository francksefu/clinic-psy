class EvaluatorsController < ApplicationController
  before_action :set_evaluator, only: %i[ show edit update destroy ]

  # GET /evaluators or /evaluators.json
  def index
    @evaluators = Evaluator.all
  end

  # GET /evaluators/1 or /evaluators/1.json
  def show
  end

  # GET /evaluators/new
  def new
    @evaluator = Evaluator.new
  end

  # GET /evaluators/1/edit
  def edit
  end

  # POST /evaluators or /evaluators.json
  def create
    @evaluator = Evaluator.new(evaluator_params)

    respond_to do |format|
      if @evaluator.save
        format.html { redirect_to evaluator_url(@evaluator), notice: "Evaluator was successfully created." }
        format.json { render :show, status: :created, location: @evaluator }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @evaluator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evaluators/1 or /evaluators/1.json
  def update
    respond_to do |format|
      if @evaluator.update(evaluator_params)
        format.html { redirect_to evaluator_url(@evaluator), notice: "Evaluator was successfully updated." }
        format.json { render :show, status: :ok, location: @evaluator }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @evaluator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluators/1 or /evaluators/1.json
  def destroy
    @evaluator.destroy!

    respond_to do |format|
      format.html { redirect_to evaluators_url, notice: "Evaluator was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evaluator
      @evaluator = Evaluator.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def evaluator_params
      params.require(:evaluator).permit(:user_id, :name, :cpf, :email, :date_of_birth)
    end
end
