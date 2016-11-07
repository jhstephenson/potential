class OtherOpportunitiesController < ApplicationController
  before_action :set_other_opportunity, only: [:show, :edit, :update, :destroy]

  # GET /other_opportunities
  # GET /other_opportunities.json
  def index
    @other_opportunities = OtherOpportunity.all
  end

  # GET /other_opportunities/1
  # GET /other_opportunities/1.json
  def show
  end

  # GET /other_opportunities/new
  def new
    @other_opportunity = OtherOpportunity.new
  end

  # GET /other_opportunities/1/edit
  def edit
  end

  # POST /other_opportunities
  # POST /other_opportunities.json
  def create
    @other_opportunity = OtherOpportunity.new(other_opportunity_params)

    respond_to do |format|
      if @other_opportunity.save
        format.html { redirect_to @other_opportunity, notice: 'Other opportunity was successfully created.' }
        format.json { render :show, status: :created, location: @other_opportunity }
      else
        format.html { render :new }
        format.json { render json: @other_opportunity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /other_opportunities/1
  # PATCH/PUT /other_opportunities/1.json
  def update
    respond_to do |format|
      if @other_opportunity.update(other_opportunity_params)
        format.html { redirect_to @other_opportunity, notice: 'Other opportunity was successfully updated.' }
        format.json { render :show, status: :ok, location: @other_opportunity }
      else
        format.html { render :edit }
        format.json { render json: @other_opportunity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /other_opportunities/1
  # DELETE /other_opportunities/1.json
  def destroy
    @other_opportunity.destroy
    respond_to do |format|
      format.html { redirect_to other_opportunities_url, notice: 'Other opportunity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_other_opportunity
      @other_opportunity = OtherOpportunity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def other_opportunity_params
      params.require(:other_opportunity).permit(:opportunity)
    end
end
