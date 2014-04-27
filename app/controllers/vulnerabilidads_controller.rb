class VulnerabilidadsController < ApplicationController
  before_action :set_vulnerabilidad, only: [:show, :edit, :update, :destroy]

  # GET /vulnerabilidads
  # GET /vulnerabilidads.json
  def index
    @vulnerabilidads = Vulnerabilidad.all
  end

  # GET /vulnerabilidads/1
  # GET /vulnerabilidads/1.json
  def show
  end

  # GET /vulnerabilidads/new
  def new
    @vulnerabilidad = Vulnerabilidad.new
  end

  # GET /vulnerabilidads/1/edit
  def edit
  end

  # POST /vulnerabilidads
  # POST /vulnerabilidads.json
  def create
    @vulnerabilidad = Vulnerabilidad.new(vulnerabilidad_params)

    respond_to do |format|
      if @vulnerabilidad.save
        format.html { redirect_to @vulnerabilidad, notice: 'Vulnerabilidad was successfully created.' }
        format.json { render :show, status: :created, location: @vulnerabilidad }
      else
        format.html { render :new }
        format.json { render json: @vulnerabilidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vulnerabilidads/1
  # PATCH/PUT /vulnerabilidads/1.json
  def update
    respond_to do |format|
      if @vulnerabilidad.update(vulnerabilidad_params)
        format.html { redirect_to @vulnerabilidad, notice: 'Vulnerabilidad was successfully updated.' }
        format.json { render :show, status: :ok, location: @vulnerabilidad }
      else
        format.html { render :edit }
        format.json { render json: @vulnerabilidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vulnerabilidads/1
  # DELETE /vulnerabilidads/1.json
  def destroy
    @vulnerabilidad.destroy
    respond_to do |format|
      format.html { redirect_to vulnerabilidads_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vulnerabilidad
      @vulnerabilidad = Vulnerabilidad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vulnerabilidad_params
      params.require(:vulnerabilidad).permit(:nombre, :descripcion, :fechaDescubrimiento)
    end
end
