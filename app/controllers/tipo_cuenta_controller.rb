class TipoCuentaController < ApplicationController
  before_action :set_tipo_cuentum, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!

  # GET /tipo_cuenta
  # GET /tipo_cuenta.json
  def index
    @tipo_cuenta = TipoCuentum.all
  end

  # GET /tipo_cuenta/1
  # GET /tipo_cuenta/1.json
  def show
  end

  # GET /tipo_cuenta/new
  def new
    @tipo_cuentum = TipoCuentum.new
  end

  # GET /tipo_cuenta/1/edit
  def edit
  end

  # POST /tipo_cuenta
  # POST /tipo_cuenta.json
  def create
    @tipo_cuentum = TipoCuentum.new(tipo_cuentum_params)

    respond_to do |format|
      if @tipo_cuentum.save
        format.html { redirect_to @tipo_cuentum, notice: 'Tipo cuentum was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_cuentum }
      else
        format.html { render :new }
        format.json { render json: @tipo_cuentum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_cuenta/1
  # PATCH/PUT /tipo_cuenta/1.json
  def update
    respond_to do |format|
      if @tipo_cuentum.update(tipo_cuentum_params)
        format.html { redirect_to @tipo_cuentum, notice: 'Tipo cuentum was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_cuentum }
      else
        format.html { render :edit }
        format.json { render json: @tipo_cuentum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_cuenta/1
  # DELETE /tipo_cuenta/1.json
  def destroy
    @tipo_cuentum.destroy
    respond_to do |format|
      format.html { redirect_to tipo_cuenta_url, notice: 'Tipo cuentum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_cuentum
      @tipo_cuentum = TipoCuentum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_cuentum_params
      params.require(:tipo_cuentum).permit(:tipo)
    end
end
