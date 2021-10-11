require 'rails_helper'

RSpec.describe RazaPersonaje, type: :model do
  describe '::validations' do
    let(:raza_personaje) { build(:raza_personaje) }
    it 'tests that factory is valid' do
      expect(raza_personaje).to be_valid
      raza_personaje.save!
      another_raza_personaje = build(:raza_personaje)
      expect(another_raza_personaje).to be_valid
    end

    it 'has an invalid descripcion' do
      raza_personaje.descripcion = ''
      expect(raza_personaje).not_to be_valid
      expect(raza_personaje.errors[:descripcion]).to include("can't be blank")
    end
  end
end
