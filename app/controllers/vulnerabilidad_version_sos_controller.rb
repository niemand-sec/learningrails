class VulnerabilidadVersionSosController < ApplicationController
  before_action :set_vulnerabilidad_version_so, only: [:show, :edit, :update, :destroy]

  # GET /vulnerabilidad_version_sos
  # GET /vulnerabilidad_version_sos.json
  def index
    @vulnerabilidad_version_sos = VulnerabilidadVersionSo.all
  end

  # GET /vulnerabilidad_version_sos/1
  # GET /vulnerabilidad_version_sos/1.json
  def show
  end

  # GET /vulnerabilidad_version_sos/new
  def new
    @vulnerabilidad_version_so = VulnerabilidadVersionSo.new
  end

  # GET /vulnerabilidad_version_sos/1/edit
  def edit
  end

  # POST /vulnerabilidad_version_sos
  # POST /vulnerabilidad_version_sos.json
  def create
    @vulnerabilidad_version_so = VulnerabilidadVersionSo.new(vulnerabilidad_version_so_params)

    respond_to do |format|
      if @vulnerabilidad_version_so.save
        format.html { redirect_to @vulnerabilidad_version_so, notice: 'Vulnerabilidad version so was successfully created.' }
        format.json { render :show, status: :created, location: @vulnerabilidad_version_so }
      else
        format.html { render :new }
        format.json { render json: @vulnerabilidad_version_so.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vulnerabilidad_version_sos/1
  # PATCH/PUT /vulnerabilidad_version_sos/1.json
  def update
    respond_to do |format|
      if @vulnerabilidad_version_so.update(vulnerabilidad_version_so_params)
        format.html { redirect_to @vulnerabilidad_version_so, notice: 'Vulnerabilidad version so was successfully updated.' }
        format.json { render :show, status: :ok, location: @vulnerabilidad_version_so }
      else
        format.html { render :edit }
        format.json { render json: @vulnerabilidad_version_so.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vulnerabilidad_version_sos/1
  # DELETE /vulnerabilidad_version_sos/1.json
  def destroy
    @vulnerabilidad_version_so.destroy
    respond_to do |format|
      format.html { redirect_to vulnerabilidad_version_sos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vulnerabilidad_version_so
      @vulnerabilidad_version_so = VulnerabilidadVersionSo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vulnerabilidad_version_so_params
      params[:vulnerabilidad_version_so]
    end
end
