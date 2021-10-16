FactoryBot.define do
  factory :personaje do
    poder { 700 }
    ataque { 100 }
    defensa { 100 }
    carisma { 100 }
    espiritu { 1000 }
    nombre { "Legolas" }
    historia { "Historia" }
    association :raza_personaje
    association :tipo_personaje
    
    after(:build) do |personaje|
      personaje.imagen.attach(
        io: File.open(Rails.root.join('test', 'fixtures','files', 'test.jpg')),
        filename: 'test.jpg',
        content_type: 'image/jpeg'
      )
    end
  end
end
