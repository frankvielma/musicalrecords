class LPsController < ApplicationController
  before_action :set_lp, only: [:show, :edit, :update, :destroy]

  # GET /lps
  # GET /lps.json
  def index
    artist_id = params[:artist_id]
    @artists = Artist.all
    if artist_id.present?
      @lps = Lp.where(artist_id: artist_id)
    else
      @lps = Lp.all
    end
  end

  # GET /lps/1
  # GET /lps/1.json
  def show
  end

  # GET /lps/new
  def new
    @lp = Lp.new
    @artists = Artist.all
  end

  # GET /lps/1/edit
  def edit
    @artists = Artist.all
  end

  # POST /lps
  # POST /lps.json
  def create
    @lp = Lp.new(lp_params)
    @artists = Artist.all

    respond_to do |format|
      if @lp.save
        format.html { redirect_to @lp, notice: 'Lp was successfully created.' }
        format.json { render :show, status: :created, location: @lp }
      else
        format.html { render :new }
        format.json { render json: @lp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lps/1
  # PATCH/PUT /lps/1.json
  def update
    @artists = Artist.all
    respond_to do |format|
      if @lp.update(lp_params)
        format.html { redirect_to @lp, notice: 'Lp was successfully updated.' }
        format.json { render :show, status: :ok, location: @lp }
      else
        format.html { render :edit }
        format.json { render json: @lp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lps/1
  # DELETE /lps/1.json
  def destroy
    @lp.destroy
    respond_to do |format|
      format.html { redirect_to lps_url, notice: 'Lp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lp
      @lp = Lp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lp_params
      params.require(:lp).permit(:name, :description, :artist_id)
    end
end
