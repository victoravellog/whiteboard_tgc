require 'rails_helper'

RSpec.describe "raza_personajes/new", type: :view do
  before(:each) do
    assign(:raza_personaje, RazaPersonaje.new(
      descripcion: "MyString"
    ))
  end

  it "renders new raza_personaje form" do
    render

    assert_select "form[action=?][method=?]", raza_personajes_path, "post" do

      assert_select "input[name=?]", "raza_personaje[descripcion]"
    end
  end
end
