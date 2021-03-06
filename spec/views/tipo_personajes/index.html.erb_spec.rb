require 'rails_helper'

RSpec.describe "tipo_personajes/index", type: :view do
  before(:each) do
    assign(:tipo_personajes, [
      TipoPersonaje.create!(
        descripcion: "Descripcion"
      ),
      TipoPersonaje.create!(
        descripcion: "Descripcion"
      )
    ])
  end

  it "renders a list of tipo_personajes" do
    render
    assert_select "tr>td", text: "Descripcion".to_s, count: 2
  end
end
