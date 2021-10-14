require 'rails_helper'

RSpec.describe "tipo_personajes/edit", type: :view do
  before(:each) do
    @tipo_personaje = assign(:tipo_personaje, TipoPersonaje.create!(
      Descripción: "MyString"
    ))
  end

  it "renders the edit tipo_personaje form" do
    render

    assert_select "form[action=?][method=?]", tipo_personaje_path(@tipo_personaje), "post" do

      assert_select "input[name=?]", "tipo_personaje[descripcion]"
    end
  end
end
