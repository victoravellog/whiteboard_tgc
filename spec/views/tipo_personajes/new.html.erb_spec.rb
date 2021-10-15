require 'rails_helper'

RSpec.describe "tipo_personajes/new", type: :view do
  before(:each) do
    assign(:tipo_personaje, TipoPersonaje.new(
      Descripción: "MyString"
    ))
  end

  it "renders new tipo_personaje form" do
    render

    assert_select "form[action=?][method=?]", tipo_personajes_path, "post" do

      assert_select "input[name=?]", "tipo_personaje[descripcion]"
    end
  end
end
