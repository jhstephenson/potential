class TechnologicalFactorsController < ApplicationController
  before_action :set_technological_factor, only: [:show, :edit, :update, :destroy]

  # GET /technological_factors
  # GET /technological_factors.json
  def index
    @technological_factors = TechnologicalFactor.all
  end

  # GET /technological_factors/1
  # GET /technological_factors/1.json
  def show
  end

  # GET /technological_factors/new
  def new
    @technological_factor = TechnologicalFactor.new
  end

  # GET /technological_factors/1/edit
  def edit
  end

  # POST /technological_factors
  # POST /technological_factors.json
  def create
    @technological_factor = TechnologicalFactor.new(technological_factor_params)

    respond_to do |format|
      if @technological_factor.save
        format.html { redirect_to @technological_factor, notice: 'Technological factor was successfully created.' }
        format.json { render :show, status: :created, location: @technological_factor }
      else
        format.html { render :new }
        format.json { render json: @technological_factor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /technological_factors/1
  # PATCH/PUT /technological_factors/1.json
  def update
    respond_to do |format|
      if @technological_factor.update(technological_factor_params)
        format.html { redirect_to @technological_factor, notice: 'Technological factor was successfully updated.' }
        format.json { render :show, status: :ok, location: @technological_factor }
      else
        format.html { render :edit }
        format.json { render json: @technological_factor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /technological_factors/1
  # DELETE /technological_factors/1.json
  def destroy
    @technological_factor.destroy
    respond_to do |format|
      format.html { redirect_to technological_factors_url, notice: 'Technological factor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_technological_factor
      @technological_factor = TechnologicalFactor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def technological_factor_params
      params.require(:technological_factor).permit(:factor, :opportunity)
    end
end
