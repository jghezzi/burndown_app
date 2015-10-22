class ClientConsultantsController < ApplicationController
  before_action :set_client_consultant, only: [:show, :edit, :update, :destroy]

  # GET /client_consultants
  # GET /client_consultants.json
  def index
    @client_consultants = ClientConsultant.all
  end

  # GET /client_consultants/1
  # GET /client_consultants/1.json
  def show
  end

  # GET /client_consultants/new
  def new
    @client_consultant = ClientConsultant.new
  end

  # GET /client_consultants/1/edit
  def edit
  end

  # POST /client_consultants
  # POST /client_consultants.json
  def create
    @client_consultant = ClientConsultant.new(client_consultant_params)

    respond_to do |format|
      if @client_consultant.save
        format.html { redirect_to @client_consultant, notice: 'Client consultant was successfully created.' }
        format.json { render :show, status: :created, location: @client_consultant }
      else
        format.html { render :new }
        format.json { render json: @client_consultant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /client_consultants/1
  # PATCH/PUT /client_consultants/1.json
  def update
    respond_to do |format|
      if @client_consultant.update(client_consultant_params)
        format.html { redirect_to @client_consultant, notice: 'Client consultant was successfully updated.' }
        format.json { render :show, status: :ok, location: @client_consultant }
      else
        format.html { render :edit }
        format.json { render json: @client_consultant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client_consultants/1
  # DELETE /client_consultants/1.json
  def destroy
    @client_consultant.destroy
    respond_to do |format|
      format.html { redirect_to client_consultants_url, notice: 'Client consultant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client_consultant
      @client_consultant = ClientConsultant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_consultant_params
      params.require(:client_consultant).permit(:client_id, :consultant)
    end
end
