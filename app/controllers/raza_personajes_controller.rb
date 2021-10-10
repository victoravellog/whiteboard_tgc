class RazaPersonajesController < ApplicationController
  before_action :set_raza_personaje, only: %i[ show edit update destroy ]

  # GET /raza_personajes or /raza_personajes.json
  def index
    @raza_personajes = RazaPersonaje.all
  end

  # GET /raza_personajes/1 or /raza_personajes/1.json
  def show
  end

  # GET /raza_personajes/new
  def new
    @raza_personaje = RazaPersonaje.new
  end

  # GET /raza_personajes/1/edit
  def edit
  end

  # POST /raza_personajes or /raza_personajes.json
  def create
    @raza_personaje = RazaPersonaje.new(raza_personaje_params)

    respond_to do |format|
      if @raza_personaje.save
        format.html { redirect_to @raza_personaje, notice: "Raza personaje was successfully created." }
        format.json { render :show, status: :created, location: @raza_personaje }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @raza_personaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /raza_personajes/1 or /raza_personajes/1.json
  def update
    respond_to do |format|
      if @raza_personaje.update(raza_personaje_params)
        format.html { redirect_to @raza_personaje, notice: "Raza personaje was successfully updated." }
        format.json { render :show, status: :ok, location: @raza_personaje }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @raza_personaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /raza_personajes/1 or /raza_personajes/1.json
  def destroy
    @raza_personaje.destroy
    respond_to do |format|
      format.html { redirect_to raza_personajes_url, notice: "Raza personaje was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raza_personaje
      @raza_personaje = RazaPersonaje.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def raza_personaje_params
      params.require(:raza_personaje).permit(:descripcion)
    end
end
