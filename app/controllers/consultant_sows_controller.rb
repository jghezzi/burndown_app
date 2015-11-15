class ConsultantSowsController < ApplicationController
  before_action :set_consultant_sow, only: [:show, :edit, :update, :destroy]

  # GET /consultant_sows
  # GET /consultant_sows.json
  def index
    @consultant_sows = ConsultantSow.all
  end

  def assign
    @consultant = Consultant.find(params[:id])
    @consultant_sows = @consultant.sows
    @consultant_projects = @consultant.projects
    @all_sows = Sow.all
  end

  # GET /consultant_sows/1
  # GET /consultant_sows/1.json
  def show
  end

  # GET /consultant_sows/new
  def new
    @consultant_sow = ConsultantSow.new
  end

  # GET /consultant_sows/1/edit
  def edit
  end

  # POST /consultant_sows
  # POST /consultant_sows.json
  def create
    @consultant_sow = ConsultantSow.new(consultant_sow_params)

    respond_to do |format|
      if @consultant_sow.save
        format.html { redirect_to @consultant_sow, notice: 'Consultant sow was successfully created.' }
        format.json { render :show, status: :created, location: @consultant_sow }
      else
        format.html { render :new }
        format.json { render json: @consultant_sow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consultant_sows/1
  # PATCH/PUT /consultant_sows/1.json
  def update
    respond_to do |format|
      if @consultant_sow.update(consultant_sow_params)
        format.html { redirect_to @consultant_sow, notice: 'Consultant sow was successfully updated.' }
        format.json { render :show, status: :ok, location: @consultant_sow }
      else
        format.html { render :edit }
        format.json { render json: @consultant_sow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consultant_sows/1
  # DELETE /consultant_sows/1.json
  def destroy
    @consultant_sow.destroy
    respond_to do |format|
      format.html { redirect_to consultant_sows_url, notice: 'Consultant sow was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consultant_sow
      @consultant_sow = ConsultantSow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def consultant_sow_params
      params.require(:consultant_sow).permit(:consultant_id, :sow_id)
    end
end
