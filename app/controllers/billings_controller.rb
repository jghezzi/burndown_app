class BillingsController < ApplicationController
  before_action :set_billing, only: [:show, :edit, :update, :destroy]


  # GET /billings
  # GET /billings.json

  def bill
    @consultant = Consultant.find(params[:id])
    @billing = Billing.new
    @my_projects = @consultant.projects
    puts @my_projects

    
    respond_to do |format|
      format.js
      format.html
    end
  end


  def index
    @consultant = Consultant.find(params[:consultant_id])
    @project = Project.find(params[:project_id])
    @sow = Sow.find(params[:sow_id])
    @billings = @consultant.billings.where(project_id: @project.id, sow_id: @sow.id)
  end

  # GET /billings/1
  # GET /billings/1.json
  def show
  end

  # GET /billings/new
  def new
    @consultant = Consultant.find(params[:consultant_id])
    @project = Project.find(params[:project_id])
    @sow = Sow.find(params[:sow_id])
    @billings = @consultant.billings.where(project_id: @project.id, sow_id: @sow.id)
  end

  # GET /billings/1/edit
  def edit
  end

  # POST /billings
  # POST /billings.json
  def create
    @billing = Billing.new(billing_params)

    respond_to do |format|
      if @billing.save
        format.html { redirect_to @billing, notice: 'Billing was successfully created.' }
        format.json { render :show, status: :created, location: @billing }
      else
        format.html { render :new }
        format.json { render json: @billing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /billings/1
  # PATCH/PUT /billings/1.json
  def update2
    respond_to do |format|
      if @billing.update(billing_params)
        format.html { redirect_to @billing, notice: 'Billing was successfully updated.' }
        format.json { render :show, status: :ok, location: @billing }
      else
        format.html { render :edit }
        format.json { render json: @billing.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    params['billing'].keys.each do |id|
    @billing = Billing.find(id.to_i)
    @billing.update_attributes(billing_params(id))
  end
end

  # DELETE /billings/1
  # DELETE /billings/1.json
  def destroy
    @billing.destroy
    respond_to do |format|
      format.html { redirect_to billings_url, notice: 'Billing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_billing
      @billing = Billing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def billing_params(id)
      params.require(:billing).fetch(id).permit(:bill_date, :hours, :project_id, :consultant_id, :sow_id)
    end
end
