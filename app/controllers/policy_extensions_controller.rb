class PolicyExtensionsController < ApplicationController
  before_action :set_policy_extension, only: [:show, :edit, :update, :destroy]

  # GET /policy_extensions
  # GET /policy_extensions.json
  def index
    @policy_extensions = PolicyExtension.all
  end

  # GET /policy_extensions/1
  # GET /policy_extensions/1.json
  def show
  end

  # GET /policy_extensions/new
  def new
    # @policy = Policy.find(params[:id])
    @policy_extension = PolicyExtension.new
  end

  # GET /policy_extensions/1/edit
  def edit
  end

  # POST /policy_extensions
  # POST /policy_extensions.json
  def create
    @policy_extension = PolicyExtension.new(policy_extension_params)

    respond_to do |format|
      if @policy_extension.save
        format.html { redirect_to @policy_extension, notice: 'Policy extension was successfully created.' }
        format.json { render :show, status: :created, location: @policy_extension }
      else
        format.html { render :new }
        format.json { render json: @policy_extension.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /policy_extensions/1
  # PATCH/PUT /policy_extensions/1.json
  def update
    respond_to do |format|
      if @policy_extension.update(policy_extension_params)
        format.html { redirect_to @policy_extension, notice: 'Policy extension was successfully updated.' }
        format.json { render :show, status: :ok, location: @policy_extension }
      else
        format.html { render :edit }
        format.json { render json: @policy_extension.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /policy_extensions/1
  # DELETE /policy_extensions/1.json
  def destroy
    @policy_extension.destroy
    respond_to do |format|
      format.html { redirect_to policy_extensions_url, notice: 'Policy extension was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_policy_extension
      @policy_extension = PolicyExtension.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def policy_extension_params
      params.require(:policy_extension).permit(:policy_no, :endorsement_no, :assured_no, :intermediary_no, :intermediary_name, :effective_date, :premium_due, :credit_term, :orig_due_date, :extension, :new_due_date)
    end
end
