class PersonajesController < ApplicationController
  require 'securerandom'

  before_action :set_personaje, only: %i[ show edit update destroy ]
  before_action :set_select_collections, only: [:edit, :update, :new, :create]

  # GET /personajes or /personajes.json
  def index
    @personajes = user_signed_in? ? current_user.personajes.all : {}
  end

  # GET /personajes/1 or /personajes/1.json
  def show
  end

  # GET /personajes/new
  def new
    @personaje = Personaje.new
  end

  # GET /personajes/1/edit
  def edit
  end

  # POST /personajes or /personajes.json
  def create
    @personaje = user_signed_in? ? current_user.personajes.new(personaje_params) : Personaje.new(personaje_params)
    @personaje.visitor_token = SecureRandom.hex(10) if !user_signed_in?

    respond_to do |format|
      if @personaje.save
        format.html { redirect_to @personaje, notice: "Personaje exitosamente creado#{ ', por favor guarde este código para que pueda ver su personaje en el futuro: '+@personaje.visitor_token if @personaje.visitor_token }." }
        format.json { render :show, status: :created, location: @personaje }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @personaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personajes/1 or /personajes/1.json
  def update
    respond_to do |format|
      if @personaje.update(personaje_params)
        format.html { redirect_to @personaje, notice: "Personaje exitosamente actualizado." }
        format.json { render :show, status: :ok, location: @personaje }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @personaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personajes/1 or /personajes/1.json
  def destroy
    @personaje.destroy
    respond_to do |format|
      format.html { redirect_to personajes_url, notice: "Personaje exitosamente eliminado." }
      format.json { head :no_content }
    end
  end

  def validate_visitor_token
    #Buscar si existe un personaje con el token ingresado
    personaje = Personaje.find_by(visitor_token: params[:visitor_token])
    respond_to do |format|
      if personaje
        format.html { redirect_to personaje_url :show, id: personaje.id, notice: "Token válido." }
        format.json { render json: {}, status: :unprocessable_entity }
      else
        format.html { redirect_to personajes_url, alert: "Token inválido." }
        format.json { render json: {}, status: :unprocessable_entity }
      end
    end
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personaje
      @personaje = user_signed_in? ? current_user.personajes.find(params[:id]) : Personaje.find(params[:id])
    end

    def set_select_collections
      @razas = RazaPersonaje::all
      @tipos = TipoPersonaje::all
    end

    # Only allow a list of trusted parameters through.
    def personaje_params
      params.require(:personaje).permit(:poder, :ataque, :defensa, :carisma, :espiritu, :habilidad_especial, :raza_personaje_id, :tipo_personaje_id, :visitor_token, :nombre, :imagen, :historia, :public_status)
    end
end
