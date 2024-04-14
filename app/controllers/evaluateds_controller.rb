class EvaluatedsController < ApplicationController
  before_action :set_evaluated, only: %i[ show edit update destroy ]

  # GET /evaluateds or /evaluateds.json
  def index
    @evaluateds = Evaluated.all
  end

  # GET /evaluateds/1 or /evaluateds/1.json
  def show
  end

  # GET /evaluateds/new
  def new
    @evaluated = Evaluated.new
  end

  # GET /evaluateds/1/edit
  def edit
  end

  # POST /evaluateds or /evaluateds.json
  def create
    @evaluated = Evaluated.new(evaluated_params)

    respond_to do |format|
      if @evaluated.save
        format.html { redirect_to evaluated_url(@evaluated), notice: "Evaluated was successfully created." }
        format.json { render :show, status: :created, location: @evaluated }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @evaluated.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evaluateds/1 or /evaluateds/1.json
  def update
    respond_to do |format|
      if @evaluated.update(evaluated_params)
        format.html { redirect_to evaluated_url(@evaluated), notice: "Evaluated was successfully updated." }
        format.json { render :show, status: :ok, location: @evaluated }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @evaluated.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluateds/1 or /evaluateds/1.json
  def destroy
    @evaluated.destroy!

    respond_to do |format|
      format.html { redirect_to evaluateds_url, notice: "Evaluated was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evaluated
      @evaluated = Evaluated.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def evaluated_params
      params.require(:evaluated).permit(:name, :email, :cpf, :date_of_birth)
    end
end
