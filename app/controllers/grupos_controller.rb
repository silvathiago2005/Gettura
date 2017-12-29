class GruposController < ApplicationController
  before_action :set_grupo, only: [:show, :edit, :update, :destroy]
  
  # GET /grupos
  # GET /grupos.json
  def index
    if(     !(session[:cafe] != nil && session[:cafe] != '')     )
      redirect_to '/'
    end
    @grupos = Grupo.all
  end

  # GET /grupos/1
  # GET /grupos/1.json
  def show
    @permissao = Permissao.find_each.collect{ |p| [p.nome, p.id] }
    if(     !(session[:cafe] != nil && session[:cafe] != '')     )
      redirect_to '/'
    end
  end

  # GET /grupos/new
  def new
    if(     !(session[:cafe] != nil && session[:cafe] != '')     )
      redirect_to '/'
    end
    @grupo = Grupo.new
  end

  # GET /grupos/1/edit
  def edit
    if(     !(session[:cafe] != nil && session[:cafe] != '')     )
      redirect_to '/'
    end
  end

  # POST /grupos
  # POST /grupos.json
  def create
    @grupo = Grupo.new(grupo_params)
    respond_to do |format|
      if @grupo.save #params[:permissao][:"1"] #  "Grupo was successfully created."
        format.html { redirect_to @grupo, notice:  "Grupo was successfully created."}
        format.json { render :show, status: :created, location: @grupo }
      else
        format.html { render :new }
        format.json { render json: @grupo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grupos/1
  # PATCH/PUT /grupos/1.json
  def update
    respond_to do |format|
      if @grupo.update(grupo_params) #@grupo.id 
        @grupopermissao = GrupoPermissao.select{ |gp| gp.grupo_id == @grupo.id }
        @grupopermissao.each do |x|
            x.destroy
        end
        cont = 0
        for x in params[:permissao] do
            cont += 1
            if params[:permissao][:"#{cont}"].to_i == 1
              @grupopermissao = GrupoPermissao.new({'grupo_id'=>@grupo.id, 'permissao_id'=>cont})
              @grupopermissao.save              
            end
        end#'Grupo was successfully updated.'
        format.html { redirect_to @grupo, notice: 'Grupo was successfully updated.'}#length
        format.json { render :show, status: :ok, location: @grupo }
      else
        format.html { render :edit }
        format.json { render json: @grupo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grupos/1
  # DELETE /grupos/1.json
  def destroy
    @grupo.destroy
    respond_to do |format|
      format.html { redirect_to grupos_url, notice: 'Grupo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grupo
      @grupo = Grupo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grupo_params
      params.require(:grupo).permit(:nome, :descricao)
    end
end
