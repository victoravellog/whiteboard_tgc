require "rails_helper"

RSpec.describe PersonajesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/personajes").to route_to("personajes#index")
    end

    it "routes to #new" do
      expect(get: "/personajes/new").to route_to("personajes#new")
    end

    it "routes to #show" do
      expect(get: "/personajes/1").to route_to("personajes#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/personajes/1/edit").to route_to("personajes#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/personajes").to route_to("personajes#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/personajes/1").to route_to("personajes#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/personajes/1").to route_to("personajes#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/personajes/1").to route_to("personajes#destroy", id: "1")
    end
  end
end
