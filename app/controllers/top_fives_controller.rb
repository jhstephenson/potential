class TopFivesController < ApplicationController
  before_action :set_top_fife, only: [:show, :edit, :update, :destroy]

  # GET /top_fives
  # GET /top_fives.json
  def index
    @top_fives = TopFive.all
  end

  # GET /top_fives/1
  # GET /top_fives/1.json
  def show
  end

  # GET /top_fives/new
  def new
    @top_fife = TopFive.new
  end

  # GET /top_fives/1/edit
  def edit
  end

  # POST /top_fives
  # POST /top_fives.json
  def create
    @top_fife = TopFive.new(top_fife_params)

    respond_to do |format|
      if @top_fife.save
        format.html { redirect_to @top_fife, notice: 'Top five was successfully created.' }
        format.json { render :show, status: :created, location: @top_fife }
      else
        format.html { render :new }
        format.json { render json: @top_fife.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /top_fives/1
  # PATCH/PUT /top_fives/1.json
  def update
    respond_to do |format|
      if @top_fife.update(top_fife_params)
        format.html { redirect_to @top_fife, notice: 'Top five was successfully updated.' }
        format.json { render :show, status: :ok, location: @top_fife }
      else
        format.html { render :edit }
        format.json { render json: @top_fife.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /top_fives/1
  # DELETE /top_fives/1.json
  def destroy
    @top_fife.destroy
    respond_to do |format|
      format.html { redirect_to top_fives_url, notice: 'Top five was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_top_fife
      @top_fife = TopFive.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def top_fife_params
      params.require(:top_fife).permit(:opportunity)
    end
end
