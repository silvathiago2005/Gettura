class PaginaPrincipalsController < ApplicationController
  before_action :set_pagina_principal, only: [:show, :edit, :update, :destroy]

  # GET /pagina_principals
  # GET /pagina_principals.json
  def index
    @pagina_principals = PaginaPrincipal.all
     def index
    if(     !(session[:cafe] != nil && session[:cafe] != '')     )
      redirect_to '/'
    end
  end
  end

  # GET /pagina_principals/1
  # GET /pagina_principals/1.json
  def show
  end

  # GET /pagina_principals/new
  def new
    @pagina_principal = PaginaPrincipal.new
  end

  # GET /pagina_principals/1/edit
  def edit
  end

  # POST /pagina_principals
  # POST /pagina_principals.json
  def create
    @pagina_principal = PaginaPrincipal.new(pagina_principal_params)

    respond_to do |format|
      if @pagina_principal.save
        format.html { redirect_to @pagina_principal, notice: 'Pagina principal was successfully created.' }
        format.json { render :show, status: :created, location: @pagina_principal }
      else
        format.html { render :new }
        format.json { render json: @pagina_principal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pagina_principals/1
  # PATCH/PUT /pagina_principals/1.json
  def update
    respond_to do |format|
      if @pagina_principal.update(pagina_principal_params)
        format.html { redirect_to @pagina_principal, notice: 'Pagina principal was successfully updated.' }
        format.json { render :show, status: :ok, location: @pagina_principal }
      else
        format.html { render :edit }
        format.json { render json: @pagina_principal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pagina_principals/1
  # DELETE /pagina_principals/1.json
  def destroy
    @pagina_principal.destroy
    respond_to do |format|
      format.html { redirect_to pagina_principals_url, notice: 'Pagina principal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pagina_principal
      @pagina_principal = PaginaPrincipal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pagina_principal_params
      params.require(:pagina_principal).permit(:index)
    end
end
