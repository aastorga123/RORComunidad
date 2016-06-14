class UnidadsController < ApplicationController
  before_action :set_unidad, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!
  load_and_authorize_resource

  # GET /unidads
  # GET /unidads.json
  def index
    @unidads = Unidad.all
  end

  # GET /unidads/1
  # GET /unidads/1.json
  def show
    
  end
  
  # GET
  def buscarubicacion
  @ubicacion = Ubicacion.find(params[:ubicacion_id])
  #Devuelve un json como salida al navegador.
    respond_to do |format|
      format.json { render json: @ubicacion, status: :ok }
    end
  end

  # GET /unidads/new
  def new
    @unidad = Unidad.new
  end

  # GET /unidads/1/edit
  def edit
  end

  # POST /unidads
  # POST /unidads.json
  def create
    @unidad = Unidad.new(unidad_params)

     respond_to do |format|
      if @unidad.save
        format.html { redirect_to @unidad, notice: 'Unidad se ha creado correctamente.' }
        format.json { render :show, status: :created, location: @unidad }
      else
        format.html { render :new }
        format.json { render json: @unidad.errors, status: :unprocessable_entity }
      end
     end
    
  end

  # PATCH/PUT /unidads/1
  # PATCH/PUT /unidads/1.json
  def update
    respond_to do |format|
      if @unidad.update(unidad_params)
        format.html { redirect_to @unidad, notice: 'Unidad se ha modificado correctamente.' }
        format.json { render :show, status: :ok, location: @unidad }
      else
        format.html { render :edit }
        format.json { render json: @unidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unidads/1
  # DELETE /unidads/1.json
  def destroy
    @unidad.destroy
    respond_to do |format|
      format.html { redirect_to unidads_url, notice: 'Unidad se ha eliminado correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unidad
      @unidad = Unidad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unidad_params
      params.require(:unidad).permit(:numero_unidad, :calle_interna, :ubicacion_id, :categoria_id)
    end
end
