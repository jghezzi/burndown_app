class SeiLocsController < ApplicationController
  before_action :set_sei_loc, only: [:show, :edit, :update, :destroy]

  # GET /sei_locs
  # GET /sei_locs.json
  def index
    @sei_locs = SeiLoc.all
  end

  # GET /sei_locs/1
  # GET /sei_locs/1.json
  def show
  end

  # GET /sei_locs/new
  def new
    @sei_loc = SeiLoc.new
  end

  # GET /sei_locs/1/edit
  def edit
  end

  # POST /sei_locs
  # POST /sei_locs.json
  def create
    @sei_loc = SeiLoc.new(sei_loc_params)

    respond_to do |format|
      if @sei_loc.save
        format.html { redirect_to @sei_loc, notice: 'Sei loc was successfully created.' }
        format.json { render :show, status: :created, location: @sei_loc }
      else
        format.html { render :new }
        format.json { render json: @sei_loc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sei_locs/1
  # PATCH/PUT /sei_locs/1.json
  def update
    respond_to do |format|
      if @sei_loc.update(sei_loc_params)
        format.html { redirect_to @sei_loc, notice: 'Sei loc was successfully updated.' }
        format.json { render :show, status: :ok, location: @sei_loc }
      else
        format.html { render :edit }
        format.json { render json: @sei_loc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sei_locs/1
  # DELETE /sei_locs/1.json
  def destroy
    @sei_loc.destroy
    respond_to do |format|
      format.html { redirect_to sei_locs_url, notice: 'Sei loc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sei_loc
      @sei_loc = SeiLoc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sei_loc_params
      params.require(:sei_loc).permit(:name)
    end
end
