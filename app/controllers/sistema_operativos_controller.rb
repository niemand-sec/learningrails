class SistemaOperativosController < ApplicationController
  before_action :set_sistema_operativo, only: [:show, :edit, :update, :destroy]

  # GET /sistema_operativos
  # GET /sistema_operativos.json
  def index
    @sistema_operativos = SistemaOperativo.all
  end

  # GET /sistema_operativos/1
  # GET /sistema_operativos/1.json
  def show
  end

  # GET /sistema_operativos/new
  def new
    @sistema_operativo = SistemaOperativo.new
  end

  # GET /sistema_operativos/1/edit
  def edit
  end

  # POST /sistema_operativos
  # POST /sistema_operativos.json
  def create
    @sistema_operativo = SistemaOperativo.new(sistema_operativo_params)

    respond_to do |format|
      if @sistema_operativo.save
        format.html { redirect_to @sistema_operativo, notice: 'Sistema operativo was successfully created.' }
        format.json { render :show, status: :created, location: @sistema_operativo }
      else
        format.html { render :new }
        format.json { render json: @sistema_operativo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sistema_operativos/1
  # PATCH/PUT /sistema_operativos/1.json
  def update
    respond_to do |format|
      if @sistema_operativo.update(sistema_operativo_params)
        format.html { redirect_to @sistema_operativo, notice: 'Sistema operativo was successfully updated.' }
        format.json { render :show, status: :ok, location: @sistema_operativo }
      else
        format.html { render :edit }
        format.json { render json: @sistema_operativo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sistema_operativos/1
  # DELETE /sistema_operativos/1.json
  def destroy
    @sistema_operativo.destroy
    respond_to do |format|
      format.html { redirect_to sistema_operativos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sistema_operativo
      @sistema_operativo = SistemaOperativo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sistema_operativo_params
      params.require(:sistema_operativo).permit(:nombre, :descripcion)
    end
end
