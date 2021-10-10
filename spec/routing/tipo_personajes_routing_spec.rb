require "rails_helper"

RSpec.describe TipoPersonajesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/tipo_personajes").to route_to("tipo_personajes#index")
    end

    it "routes to #new" do
      expect(get: "/tipo_personajes/new").to route_to("tipo_personajes#new")
    end

    it "routes to #show" do
      expect(get: "/tipo_personajes/1").to route_to("tipo_personajes#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/tipo_personajes/1/edit").to route_to("tipo_personajes#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/tipo_personajes").to route_to("tipo_personajes#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/tipo_personajes/1").to route_to("tipo_personajes#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/tipo_personajes/1").to route_to("tipo_personajes#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/tipo_personajes/1").to route_to("tipo_personajes#destroy", id: "1")
    end
  end
end
