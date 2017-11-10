class PoliciesController < ApplicationController
  before_action :set_policy, only: [:show, :edit, :update, :destroy]

  # GET /policies
  # GET /policies.json
  def index
   @intermediary = Intermediary.find(328)
   @policies = @intermediary.policies.limit(10).includes(:assured, [:commission_invoice => :intermediary])
  end

  # GET /policies/1
  # GET /policies/1.json
  def show
    @policy = Policy.find(params[:id])
    @policy_due = PolicyDue.new
  end

  # GET /policies/new
  def new
    @policy_due = PolicyDue.new
  end

  # GET /policies/1/edit
  def edit

  end

  # POST /policies
  # POST /policies.json
  def create
    @intermediary = Intermediary.find(328)
    @policies = @intermediary.policies.limit(10).includes(:assured, [:commission_invoice => :intermediary])
    @policies.each do
      @policy = PolicyDue.new(policy_params)

      respond_to do |format|
        if @policy.save
          format.html { redirect_to policies_path, notice: 'Policy was successfully created.' }
          format.json { render :show, status: :created, location: @policy }
        else
          format.html { render :new }
          format.json { render json: @policy.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /policies/1
  # PATCH/PUT /policies/1.json
  def update
    respond_to do |format|
      if @policy.update(policy_params)
        format.html { redirect_to @policy, notice: 'Policy was successfully updated.' }
        format.json { render :show, status: :ok, location: @policy }
      else
        format.html { render :edit }
        format.json { render json: @policy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /policies/1
  # DELETE /policies/1.json
  def destroy
    @policy.destroy
    respond_to do |format|
      format.html { redirect_to policies_url, notice: 'Policy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_policy
      @policy = Policy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def policy_params
      params.permit(:policy_no, :endorsement_no, :assured_name, :intermediary_no, :intermediary_name, :tsi_amount, :inception_date, :expiry_date, :effective_date, :net_prem)
    end
end
