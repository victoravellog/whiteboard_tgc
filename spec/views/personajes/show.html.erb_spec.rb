require 'rails_helper'

RSpec.describe "personajes/show", type: :view do
  before(:each) do
    @personaje = assign(:personaje, Personaje.create!(
      poder: 2,
      ataque: 3,
      defensa: 4,
      carisma: 5,
      espiritu: 6,
      habilidad_especial: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(//)
  end
end
