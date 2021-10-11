class TipoPersonajesController < ApplicationController
  before_action :set_tipo_personaje, only: %i[ show edit update destroy ]

  # GET /tipo_personajes or /tipo_personajes.json
  def index
    @tipo_personajes = TipoPersonaje.all
  end

  # GET /tipo_personajes/1 or /tipo_personajes/1.json
  def show
  end

  # GET /tipo_personajes/new
  def new
    @tipo_personaje = TipoPersonaje.new
  end

  # GET /tipo_personajes/1/edit
  def edit
  end

  # POST /tipo_personajes or /tipo_personajes.json
  def create
    @tipo_personaje = TipoPersonaje.new(tipo_personaje_params)

    respond_to do |format|
      if @tipo_personaje.save
        format.html { redirect_to @tipo_personaje, notice: "Tipo personaje was successfully created." }
        format.json { render :show, status: :created, location: @tipo_personaje }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tipo_personaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_personajes/1 or /tipo_personajes/1.json
  def update
    respond_to do |format|
      if @tipo_personaje.update(tipo_personaje_params)
        format.html { redirect_to @tipo_personaje, notice: "Tipo personaje was successfully updated." }
        format.json { render :show, status: :ok, location: @tipo_personaje }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tipo_personaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_personajes/1 or /tipo_personajes/1.json
  def destroy
    @tipo_personaje.destroy
    respond_to do |format|
      format.html { redirect_to tipo_personajes_url, notice: "Tipo personaje was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_personaje
      @tipo_personaje = TipoPersonaje.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tipo_personaje_params
      params.require(:tipo_personaje).permit(:descripcion)
    end
end
