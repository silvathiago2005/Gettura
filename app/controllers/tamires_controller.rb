class TamiresController < ApplicationController
  before_action :set_tamire, only: [:show, :edit, :update, :destroy]

  # GET /tamires
  # GET /tamires.json
  def index
    @tamires = Tamire.all
  end

  # GET /tamires/1
  # GET /tamires/1.json
  def show
  end

  # GET /tamires/new
  def new
    @tamire = Tamire.new
  end

  # GET /tamires/1/edit
  def edit
  end

  # POST /tamires
  # POST /tamires.json
  def create
    @tamire = Tamire.new(tamire_params)

    respond_to do |format|
      if @tamire.save
        format.html { redirect_to @tamire, notice: 'Tamire was successfully created.' }
        format.json { render :show, status: :created, location: @tamire }
      else
        format.html { render :new }
        format.json { render json: @tamire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tamires/1
  # PATCH/PUT /tamires/1.json
  def update
    respond_to do |format|
      if @tamire.update(tamire_params)
        format.html { redirect_to @tamire, notice: 'Tamire was successfully updated.' }
        format.json { render :show, status: :ok, location: @tamire }
      else
        format.html { render :edit }
        format.json { render json: @tamire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tamires/1
  # DELETE /tamires/1.json
  def destroy
    @tamire.destroy
    respond_to do |format|
      format.html { redirect_to tamires_url, notice: 'Tamire was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tamire
      @tamire = Tamire.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tamire_params
      params.fetch(:tamire, {})
    end
end
