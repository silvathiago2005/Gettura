class GrupoPermissaosController < ApplicationController
  before_action :set_grupo_permissao, only: [:show, :edit, :update, :destroy]

  # GET /grupo_permissaos
  # GET /grupo_permissaos.json
  def index
    @grupo_permissaos = GrupoPermissao.all
  end

  # GET /grupo_permissaos/1
  # GET /grupo_permissaos/1.json
  def show
  end

  # GET /grupo_permissaos/new
  def new
    @grupo_permissao = GrupoPermissao.new
  end

  # GET /grupo_permissaos/1/edit
  def edit
  end

  # POST /grupo_permissaos
  # POST /grupo_permissaos.json
  def create
    @grupo_permissao = GrupoPermissao.new(grupo_permissao_params)

    respond_to do |format|
      if @grupo_permissao.save
        format.html { redirect_to @grupo_permissao, notice: 'Grupo permissao was successfully created.' }
        format.json { render :show, status: :created, location: @grupo_permissao }
      else
        format.html { render :new }
        format.json { render json: @grupo_permissao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grupo_permissaos/1
  # PATCH/PUT /grupo_permissaos/1.json
  def update
    respond_to do |format|
      if @grupo_permissao.update(grupo_permissao_params)
        format.html { redirect_to @grupo_permissao, notice: 'Grupo permissao was successfully updated.' }
        format.json { render :show, status: :ok, location: @grupo_permissao }
      else
        format.html { render :edit }
        format.json { render json: @grupo_permissao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grupo_permissaos/1
  # DELETE /grupo_permissaos/1.json
  def destroy
    @grupo_permissao.destroy
    respond_to do |format|
      format.html { redirect_to grupo_permissaos_url, notice: 'Grupo permissao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grupo_permissao
      @grupo_permissao = GrupoPermissao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grupo_permissao_params
      params.require(:grupo_permissao).permit(:grupo_id, :permissao_id)
    end
end
