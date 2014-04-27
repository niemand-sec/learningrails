class PuertosController < ApplicationController
  before_action :set_puerto, only: [:show, :edit, :update, :destroy]

  # GET /puertos
  # GET /puertos.json
  def index
    @puertos = Puerto.all
  end

  # GET /puertos/1
  # GET /puertos/1.json
  def show
  end

  # GET /puertos/new
  def new
    @puerto = Puerto.new
  end

  # GET /puertos/1/edit
  def edit
  end

  # POST /puertos
  # POST /puertos.json
  def create
    @puerto = Puerto.new(puerto_params)

    respond_to do |format|
      if @puerto.save
        format.html { redirect_to @puerto, notice: 'Puerto was successfully created.' }
        format.json { render :show, status: :created, location: @puerto }
      else
        format.html { render :new }
        format.json { render json: @puerto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /puertos/1
  # PATCH/PUT /puertos/1.json
  def update
    respond_to do |format|
      if @puerto.update(puerto_params)
        format.html { redirect_to @puerto, notice: 'Puerto was successfully updated.' }
        format.json { render :show, status: :ok, location: @puerto }
      else
        format.html { render :edit }
        format.json { render json: @puerto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /puertos/1
  # DELETE /puertos/1.json
  def destroy
    @puerto.destroy
    respond_to do |format|
      format.html { redirect_to puertos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_puerto
      @puerto = Puerto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def puerto_params
      params.require(:puerto).permit(:numero, :descripcion)
    end
end
