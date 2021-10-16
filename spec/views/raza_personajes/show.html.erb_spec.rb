require 'rails_helper'

RSpec.describe "raza_personajes/show", type: :view do
  before(:each) do
    @raza_personaje = assign(:raza_personaje, RazaPersonaje.create!(
      descripcion: "Descripcion"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Descripcion/)
  end
end
