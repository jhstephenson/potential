class StrengthOpportunitiesController < ApplicationController
  before_action :set_strength_opportunity, only: [:show, :edit, :update, :destroy]

  # GET /strength_opportunities
  # GET /strength_opportunities.json
  def index
    @strength_opportunities = StrengthOpportunity.all
  end

  # GET /strength_opportunities/1
  # GET /strength_opportunities/1.json
  def show
  end

  # GET /strength_opportunities/new
  def new
    @strength_opportunity = StrengthOpportunity.new
  end

  # GET /strength_opportunities/1/edit
  def edit
  end

  # POST /strength_opportunities
  # POST /strength_opportunities.json
  def create
    @strength_opportunity = StrengthOpportunity.new(strength_opportunity_params)

    respond_to do |format|
      if @strength_opportunity.save
        format.html { redirect_to @strength_opportunity, notice: 'Strength opportunity was successfully created.' }
        format.json { render :show, status: :created, location: @strength_opportunity }
      else
        format.html { render :new }
        format.json { render json: @strength_opportunity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /strength_opportunities/1
  # PATCH/PUT /strength_opportunities/1.json
  def update
    respond_to do |format|
      if @strength_opportunity.update(strength_opportunity_params)
        format.html { redirect_to @strength_opportunity, notice: 'Strength opportunity was successfully updated.' }
        format.json { render :show, status: :ok, location: @strength_opportunity }
      else
        format.html { render :edit }
        format.json { render json: @strength_opportunity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /strength_opportunities/1
  # DELETE /strength_opportunities/1.json
  def destroy
    @strength_opportunity.destroy
    respond_to do |format|
      format.html { redirect_to strength_opportunities_url, notice: 'Strength opportunity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_strength_opportunity
      @strength_opportunity = StrengthOpportunity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def strength_opportunity_params
      params.require(:strength_opportunity).permit(:opportunity)
    end
end
