require 'rails_helper'

RSpec.describe "Variants", type: :request do
  describe "GET /variants" do
    it "works! (now write some real specs)" do
      get variants_path
      expect(response).to have_http_status(200)
    end
  end
end
