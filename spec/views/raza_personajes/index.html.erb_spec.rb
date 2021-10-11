require 'rails_helper'

RSpec.describe "raza_personajes/index", type: :view do
  before(:each) do
    assign(:raza_personajes, [
      RazaPersonaje.create!(
        descripcion: "Descripcion"
      ),
      RazaPersonaje.create!(
        descripcion: "Descripcion"
      )
    ])
  end

  it "renders a list of raza_personajes" do
    render
    assert_select "tr>td", text: "Descripcion".to_s, count: 2
  end
end
