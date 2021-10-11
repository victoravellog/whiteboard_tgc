require 'rails_helper'

RSpec.describe TipoPersonaje, type: :model do
  describe '::validations' do
    let(:tipo_personaje) { build(:tipo_personaje) }
    it 'tests that factory is valid' do
      expect(tipo_personaje).to be_valid
      tipo_personaje.save!
      another_tipo_personaje = build(:tipo_personaje)
      expect(another_tipo_personaje).to be_valid
    end

    it 'has an invalid descripcion' do
      tipo_personaje.descripcion = ''
      expect(tipo_personaje).not_to be_valid
      expect(tipo_personaje.errors[:descripcion]).to include("can't be blank")
    end
  end
end
