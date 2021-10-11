require 'rails_helper'

RSpec.describe "raza_personajes/edit", type: :view do
  before(:each) do
    @raza_personaje = assign(:raza_personaje, RazaPersonaje.create!(
      descripcion: "MyString"
    ))
  end

  it "renders the edit raza_personaje form" do
    render

    assert_select "form[action=?][method=?]", raza_personaje_path(@raza_personaje), "post" do

      assert_select "input[name=?]", "raza_personaje[descripcion]"
    end
  end
end
