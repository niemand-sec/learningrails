class PuertoServiciosController < ApplicationController
  before_action :set_puerto_servicio, only: [:show, :edit, :update, :destroy]

  # GET /puerto_servicios
  # GET /puerto_servicios.json
  def index
    @puerto_servicios = PuertoServicio.all
  end

  # GET /puerto_servicios/1
  # GET /puerto_servicios/1.json
  def show
  end

  # GET /puerto_servicios/new
  def new
    @puerto_servicio = PuertoServicio.new
  end

  # GET /puerto_servicios/1/edit
  def edit
  end

  # POST /puerto_servicios
  # POST /puerto_servicios.json
  def create
    @puerto_servicio = PuertoServicio.new(puerto_servicio_params)

    respond_to do |format|
      if @puerto_servicio.save
        format.html { redirect_to @puerto_servicio, notice: 'Puerto servicio was successfully created.' }
        format.json { render :show, status: :created, location: @puerto_servicio }
      else
        format.html { render :new }
        format.json { render json: @puerto_servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /puerto_servicios/1
  # PATCH/PUT /puerto_servicios/1.json
  def update
    respond_to do |format|
      if @puerto_servicio.update(puerto_servicio_params)
        format.html { redirect_to @puerto_servicio, notice: 'Puerto servicio was successfully updated.' }
        format.json { render :show, status: :ok, location: @puerto_servicio }
      else
        format.html { render :edit }
        format.json { render json: @puerto_servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /puerto_servicios/1
  # DELETE /puerto_servicios/1.json
  def destroy
    @puerto_servicio.destroy
    respond_to do |format|
      format.html { redirect_to puerto_servicios_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_puerto_servicio
      @puerto_servicio = PuertoServicio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def puerto_servicio_params
      params[:puerto_servicio]
    end
end
