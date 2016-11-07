class SocioCulturalFactorsController < ApplicationController
  before_action :set_socio_cultural_factor, only: [:show, :edit, :update, :destroy]

  # GET /socio_cultural_factors
  # GET /socio_cultural_factors.json
  def index
    @socio_cultural_factors = SocioCulturalFactor.all
  end

  # GET /socio_cultural_factors/1
  # GET /socio_cultural_factors/1.json
  def show
  end

  # GET /socio_cultural_factors/new
  def new
    @socio_cultural_factor = SocioCulturalFactor.new
  end

  # GET /socio_cultural_factors/1/edit
  def edit
  end

  # POST /socio_cultural_factors
  # POST /socio_cultural_factors.json
  def create
    @socio_cultural_factor = SocioCulturalFactor.new(socio_cultural_factor_params)

    respond_to do |format|
      if @socio_cultural_factor.save
        format.html { redirect_to @socio_cultural_factor, notice: 'Socio cultural factor was successfully created.' }
        format.json { render :show, status: :created, location: @socio_cultural_factor }
      else
        format.html { render :new }
        format.json { render json: @socio_cultural_factor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /socio_cultural_factors/1
  # PATCH/PUT /socio_cultural_factors/1.json
  def update
    respond_to do |format|
      if @socio_cultural_factor.update(socio_cultural_factor_params)
        format.html { redirect_to @socio_cultural_factor, notice: 'Socio cultural factor was successfully updated.' }
        format.json { render :show, status: :ok, location: @socio_cultural_factor }
      else
        format.html { render :edit }
        format.json { render json: @socio_cultural_factor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /socio_cultural_factors/1
  # DELETE /socio_cultural_factors/1.json
  def destroy
    @socio_cultural_factor.destroy
    respond_to do |format|
      format.html { redirect_to socio_cultural_factors_url, notice: 'Socio cultural factor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_socio_cultural_factor
      @socio_cultural_factor = SocioCulturalFactor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def socio_cultural_factor_params
      params.require(:socio_cultural_factor).permit(:factor, :opportunity)
    end
end
