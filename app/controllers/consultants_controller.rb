class ConsultantsController < ApplicationController
  before_action :set_consultant, only: [:show, :edit, :update, :destroy]

  # GET /consultants
  # GET /consultants.json

  def index
    @consultants = Consultant.all
  end

  # GET /consultants/1
  # GET /consultants/1.json
  def show
    @consultant = Consultant.find(params[:id])
    @projects = @consultant.projects
  end

  # GET /consultants/new
  def new
    @consultant = Consultant.new
    @consultant.build_sei_loc
  end

  # GET /consultants/1/edit
  def edit
  end

  # POST /consultants
  # POST /consultants.json
  def create
    @consultant = Consultant.new(consultant_params)

    respond_to do |format|
      if @consultant.save
        format.html { redirect_to @consultant, notice: 'Consultant was successfully created.' }
        format.json { render :show, status: :created, location: @consultant }
      else
        format.html { render :new }
        format.json { render json: @consultant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consultants/1
  # PATCH/PUT /consultants/1.json
  def update
    respond_to do |format|
      if @consultant.update(consultant_params)
        format.html { redirect_to @consultant, notice: 'Consultant was successfully updated.' }
        format.json { render :show, status: :ok, location: @consultant }
      else
        format.html { render :edit }
        format.json { render json: @consultant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consultants/1
  # DELETE /consultants/1.json
  def destroy
    @consultant.destroy
    respond_to do |format|
      format.html { redirect_to consultants_url, notice: 'Consultant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consultant
      @consultant = Consultant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def consultant_params
      params.require(:consultant).permit(:first_name, :last_name, :sei_loc_id, consultant_projects_attributes: [:consultant_id, :project_id], billings_attributes: [:bill_date, :hours, :project_id, :consultant_id, :sow_id])
    end
end
