require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/raza_personajes", type: :request do
  
  # HabilidadEspecial. As you add validations to HabilidadEspecial, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {
      descripcion: "Orco"
    }
  }

  let(:raza_personaje) { create :raza_personaje }

  let(:invalid_attributes) {
    {
      descripcion: ""
    }
  }

  describe "GET /index" do
    it "renders a successful response" do
      HabilidadEspecial.create! valid_attributes
      get raza_personajes_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      get raza_personaje_url(raza_personaje)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_raza_personaje_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      get edit_raza_personaje_url(raza_personaje)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      subject { post raza_personajes_url, params: { raza_personaje: valid_attributes } }
      it "creates a new HabilidadEspecial" do
        expect {
          subject
        }.to change(HabilidadEspecial, :count).by(1)
      end

      it "redirects to the created raza_personaje" do
        subject
        expect(response).to redirect_to(raza_personaje_url(HabilidadEspecial.last))
      end
    end

    context "with invalid parameters" do
      subject { post raza_personajes_url, params: { raza_personaje: invalid_attributes } }
      it "does not create a new HabilidadEspecial" do
        expect {
          subject
        }.to change(HabilidadEspecial, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        subject
        expect(response).to have_http_status :unprocessable_entity
      end
    end
  end

  describe "PATCH /update" do
    
    context "with valid parameters" do 
      let(:new_attributes) {
        {
          descripcion: "Resistencia al veneno"
        }
      }

      subject { patch raza_personaje_url(raza_personaje), params: { raza_personaje: new_attributes } }
      it "updates the requested raza_personaje" do
        subject       
        expect(raza_personaje.reload.descripcion).to eq new_attributes[:descripcion]
      end

      it "redirects to the raza_personaje" do
        subject
        raza_personaje.reload
        expect(response).to redirect_to(raza_personaje_url(raza_personaje))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        patch raza_personaje_url(raza_personaje), params: { raza_personaje: invalid_attributes }
        expect(response).to have_http_status :unprocessable_entity
      end
    end
  end

  describe "DELETE /destroy" do
    subject { delete raza_personaje_url(raza_personaje) }
    it "destroys the requested raza_personaje" do
      raza_personaje
      expect {
        subject
      }.to change(HabilidadEspecial, :count).by(-1)
    end

    it "redirects to the raza_personajes list" do
      subject
      expect(response).to redirect_to(raza_personajes_url)
    end
  end
end