class UsuarioRolsController < ApplicationController
  before_action :set_usuario_rol, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!

  # GET /usuario_rols
  # GET /usuario_rols.json
  def index
    @usuario_rols = UsuarioRol.all
  end

  # GET /usuario_rols/1
  # GET /usuario_rols/1.json
  def show
  end

  # GET /usuario_rols/new
  def new
    @usuario_rol = UsuarioRol.new
  end

  # GET /usuario_rols/1/edit
  def edit
  end

  # POST /usuario_rols
  # POST /usuario_rols.json
  def create
    @usuario_rol = UsuarioRol.new(usuario_rol_params)

    respond_to do |format|
      if @usuario_rol.save
        format.html { redirect_to @usuario_rol, notice: 'Usuario rol was successfully created.' }
        format.json { render :show, status: :created, location: @usuario_rol }
      else
        format.html { render :new }
        format.json { render json: @usuario_rol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuario_rols/1
  # PATCH/PUT /usuario_rols/1.json
  def update
    respond_to do |format|
      if @usuario_rol.update(usuario_rol_params)
        format.html { redirect_to @usuario_rol, notice: 'Usuario rol was successfully updated.' }
        format.json { render :show, status: :ok, location: @usuario_rol }
      else
        format.html { render :edit }
        format.json { render json: @usuario_rol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuario_rols/1
  # DELETE /usuario_rols/1.json
  def destroy
    @usuario_rol.destroy
    respond_to do |format|
      format.html { redirect_to usuario_rols_url, notice: 'Usuario rol was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario_rol
      @usuario_rol = UsuarioRol.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_rol_params
      params.require(:usuario_rol).permit(:usuario_id, :rol_id)
    end
end
