require 'rails_helper'

RSpec.describe "tipo_personajes/show", type: :view do
  before(:each) do
    @tipo_personaje = assign(:tipo_personaje, TipoPersonaje.create!(
      descripcion: "Descripcion"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Descripcion/)
  end
end
