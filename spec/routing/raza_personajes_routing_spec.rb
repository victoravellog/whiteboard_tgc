require "rails_helper"

RSpec.describe RazaPersonajesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/raza_personajes").to route_to("raza_personajes#index")
    end

    it "routes to #new" do
      expect(get: "/raza_personajes/new").to route_to("raza_personajes#new")
    end

    it "routes to #show" do
      expect(get: "/raza_personajes/1").to route_to("raza_personajes#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/raza_personajes/1/edit").to route_to("raza_personajes#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/raza_personajes").to route_to("raza_personajes#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/raza_personajes/1").to route_to("raza_personajes#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/raza_personajes/1").to route_to("raza_personajes#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/raza_personajes/1").to route_to("raza_personajes#destroy", id: "1")
    end
  end
end
