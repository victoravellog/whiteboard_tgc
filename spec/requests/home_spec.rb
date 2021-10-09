require 'rails_helper'

RSpec.describe HomeController do
  describe "#index" do
    subject { get '/' }
    it 'Debe retornar status 200' do
      subject
       expect(response).to have_http_status :ok 
    end
  end
end
