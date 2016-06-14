class UsuarioUnidadsController < ApplicationController
  before_action :set_usuario_unidad, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!

  # GET /usuario_unidads
  # GET /usuario_unidads.json
  def index
    @usuario_unidads = UsuarioUnidad.all
  end

  # GET /usuario_unidads/1
  # GET /usuario_unidads/1.json
  def show
  end

  # GET /usuario_unidads/new
  def new
    @usuario_unidad = UsuarioUnidad.new
  end

  # GET /usuario_unidads/1/edit
  def edit
  end

  # POST /usuario_unidads
  # POST /usuario_unidads.json
  def create
    @usuario_unidad = UsuarioUnidad.new(usuario_unidad_params)

    respond_to do |format|
      if @usuario_unidad.save
        format.html { redirect_to @usuario_unidad, notice: 'Usuario unidad was successfully created.' }
        format.json { render :show, status: :created, location: @usuario_unidad }
      else
        format.html { render :new }
        format.json { render json: @usuario_unidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuario_unidads/1
  # PATCH/PUT /usuario_unidads/1.json
  def update
    respond_to do |format|
      if @usuario_unidad.update(usuario_unidad_params)
        format.html { redirect_to @usuario_unidad, notice: 'Usuario unidad was successfully updated.' }
        format.json { render :show, status: :ok, location: @usuario_unidad }
      else
        format.html { render :edit }
        format.json { render json: @usuario_unidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuario_unidads/1
  # DELETE /usuario_unidads/1.json
  def destroy
    @usuario_unidad.destroy
    respond_to do |format|
      format.html { redirect_to usuario_unidads_url, notice: 'Usuario unidad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario_unidad
      @usuario_unidad = UsuarioUnidad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_unidad_params
      params.require(:usuario_unidad).permit(:usuario_id, :unidad_id)
    end
end
