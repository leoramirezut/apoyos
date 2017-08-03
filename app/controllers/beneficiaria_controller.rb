class BeneficiariaController < ApplicationController
  before_action :set_beneficiarium, only: [:show, :edit, :update, :destroy]

  # GET /beneficiaria
  # GET /beneficiaria.json
  def index
    @beneficiaria = Beneficiarium.all
  end

  # GET /beneficiaria/1
  # GET /beneficiaria/1.json
  def show
  end

  # GET /beneficiaria/new
  def new
    @beneficiarium = Beneficiarium.new
  end

  # GET /beneficiaria/1/edit
  def edit
  end

  # POST /beneficiaria
  # POST /beneficiaria.json
  def create
    @beneficiarium = Beneficiarium.new(beneficiarium_params)

    respond_to do |format|
      if @beneficiarium.save
        format.html { redirect_to @beneficiarium, notice: 'Beneficiarium was successfully created.' }
        format.json { render :show, status: :created, location: @beneficiarium }
      else
        format.html { render :new }
        format.json { render json: @beneficiarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beneficiaria/1
  # PATCH/PUT /beneficiaria/1.json
  def update
    respond_to do |format|
      if @beneficiarium.update(beneficiarium_params)
        format.html { redirect_to @beneficiarium, notice: 'Beneficiarium was successfully updated.' }
        format.json { render :show, status: :ok, location: @beneficiarium }
      else
        format.html { render :edit }
        format.json { render json: @beneficiarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beneficiaria/1
  # DELETE /beneficiaria/1.json
  def destroy
    @beneficiarium.destroy
    respond_to do |format|
      format.html { redirect_to beneficiaria_url, notice: 'Beneficiarium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beneficiarium
      @beneficiarium = Beneficiarium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beneficiarium_params
      params.require(:beneficiarium).permit(:nombre, :estatura, :complexion, :tez)
    end
end
