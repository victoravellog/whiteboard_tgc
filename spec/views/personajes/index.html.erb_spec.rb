require 'rails_helper'

RSpec.describe "personajes/index", type: :view do
  before(:each) do
    assign(:personajes, [
      Personaje.create!(
        poder: 2,
        ataque: 3,
        defensa: 4,
        carisma: 5,
        espiritu: 6,
        habilidad_especial: nil
      ),
      Personaje.create!(
        poder: 2,
        ataque: 3,
        defensa: 4,
        carisma: 5,
        espiritu: 6,
        habilidad_especial: nil
      )
    ])
  end

  it "renders a list of personajes" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: 5.to_s, count: 2
    assert_select "tr>td", text: 6.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
