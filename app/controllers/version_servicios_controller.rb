class VersionServiciosController < ApplicationController
  before_action :set_version_servicio, only: [:show, :edit, :update, :destroy]

  # GET /version_servicios
  # GET /version_servicios.json
  def index
    @version_servicios = VersionServicio.all
  end

  # GET /version_servicios/1
  # GET /version_servicios/1.json
  def show
  end

  # GET /version_servicios/new
  def new
    @version_servicio = VersionServicio.new
  end

  # GET /version_servicios/1/edit
  def edit
  end

  # POST /version_servicios
  # POST /version_servicios.json
  def create
    @version_servicio = VersionServicio.new(version_servicio_params)

    respond_to do |format|
      if @version_servicio.save
        format.html { redirect_to @version_servicio, notice: 'Version servicio was successfully created.' }
        format.json { render :show, status: :created, location: @version_servicio }
      else
        format.html { render :new }
        format.json { render json: @version_servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /version_servicios/1
  # PATCH/PUT /version_servicios/1.json
  def update
    respond_to do |format|
      if @version_servicio.update(version_servicio_params)
        format.html { redirect_to @version_servicio, notice: 'Version servicio was successfully updated.' }
        format.json { render :show, status: :ok, location: @version_servicio }
      else
        format.html { render :edit }
        format.json { render json: @version_servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /version_servicios/1
  # DELETE /version_servicios/1.json
  def destroy
    @version_servicio.destroy
    respond_to do |format|
      format.html { redirect_to version_servicios_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_version_servicio
      @version_servicio = VersionServicio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def version_servicio_params
      params.require(:version_servicio).permit(:version, :fechaInicio, :fechaFin)
    end
end
