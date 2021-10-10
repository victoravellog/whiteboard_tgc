require 'rails_helper'

RSpec.describe "personajes/new", type: :view do
  before(:each) do
    assign(:personaje, Personaje.new(
      poder: 1,
      ataque: 1,
      defensa: 1,
      carisma: 1,
      espiritu: 1,
      habilidad_especial: nil
    ))
  end

  it "renders new personaje form" do
    render

    assert_select "form[action=?][method=?]", personajes_path, "post" do

      assert_select "input[name=?]", "personaje[poder]"

      assert_select "input[name=?]", "personaje[ataque]"

      assert_select "input[name=?]", "personaje[defensa]"

      assert_select "input[name=?]", "personaje[carisma]"

      assert_select "input[name=?]", "personaje[espiritu]"

      assert_select "input[name=?]", "personaje[habilidad_especial_id]"
    end
  end
end
