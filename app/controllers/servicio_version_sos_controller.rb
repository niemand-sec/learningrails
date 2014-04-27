class ServicioVersionSosController < ApplicationController
  before_action :set_servicio_version_so, only: [:show, :edit, :update, :destroy]

  # GET /servicio_version_sos
  # GET /servicio_version_sos.json
  def index
    @servicio_version_sos = ServicioVersionSo.all
  end

  # GET /servicio_version_sos/1
  # GET /servicio_version_sos/1.json
  def show
  end

  # GET /servicio_version_sos/new
  def new
    @servicio_version_so = ServicioVersionSo.new
  end

  # GET /servicio_version_sos/1/edit
  def edit
  end

  # POST /servicio_version_sos
  # POST /servicio_version_sos.json
  def create
    @servicio_version_so = ServicioVersionSo.new(servicio_version_so_params)

    respond_to do |format|
      if @servicio_version_so.save
        format.html { redirect_to @servicio_version_so, notice: 'Servicio version so was successfully created.' }
        format.json { render :show, status: :created, location: @servicio_version_so }
      else
        format.html { render :new }
        format.json { render json: @servicio_version_so.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /servicio_version_sos/1
  # PATCH/PUT /servicio_version_sos/1.json
  def update
    respond_to do |format|
      if @servicio_version_so.update(servicio_version_so_params)
        format.html { redirect_to @servicio_version_so, notice: 'Servicio version so was successfully updated.' }
        format.json { render :show, status: :ok, location: @servicio_version_so }
      else
        format.html { render :edit }
        format.json { render json: @servicio_version_so.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servicio_version_sos/1
  # DELETE /servicio_version_sos/1.json
  def destroy
    @servicio_version_so.destroy
    respond_to do |format|
      format.html { redirect_to servicio_version_sos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_servicio_version_so
      @servicio_version_so = ServicioVersionSo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def servicio_version_so_params
      params[:servicio_version_so]
    end
end
