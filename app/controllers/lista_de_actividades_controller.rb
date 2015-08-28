class ListaDeActividadesController < ApplicationController
  before_action :set_lista_de_actividade, only: [:show, :edit, :update, :destroy]

  # GET /lista_de_actividades
  # GET /lista_de_actividades.json
  def index
    @lista_de_actividades = ListaDeActividade.all
  end

  # GET /lista_de_actividades/1
  # GET /lista_de_actividades/1.json
  def show
  end

  # GET /lista_de_actividades/new
  def new
    @lista_de_actividade = ListaDeActividade.new
  end

  # GET /lista_de_actividades/1/edit
  def edit
  end

  # POST /lista_de_actividades
  # POST /lista_de_actividades.json
  def create
    @lista_de_actividade = ListaDeActividade.new(lista_de_actividade_params)

    respond_to do |format|
      if @lista_de_actividade.save
        format.html { redirect_to @lista_de_actividade, notice: 'Lista de actividade was successfully created.' }
        format.json { render :show, status: :created, location: @lista_de_actividade }
      else
        format.html { render :new }
        format.json { render json: @lista_de_actividade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lista_de_actividades/1
  # PATCH/PUT /lista_de_actividades/1.json
  def update
    respond_to do |format|
      if @lista_de_actividade.update(lista_de_actividade_params)
        format.html { redirect_to @lista_de_actividade, notice: 'Lista de actividade was successfully updated.' }
        format.json { render :show, status: :ok, location: @lista_de_actividade }
      else
        format.html { render :edit }
        format.json { render json: @lista_de_actividade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lista_de_actividades/1
  # DELETE /lista_de_actividades/1.json
  def destroy
    @lista_de_actividade.destroy
    respond_to do |format|
      format.html { redirect_to lista_de_actividades_url, notice: 'Lista de actividade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lista_de_actividade
      @lista_de_actividade = ListaDeActividade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lista_de_actividade_params
      params.require(:lista_de_actividade).permit(:title, :description)
    end
end
