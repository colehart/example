require 'rails_helper'

RSpec.describe "Example2s", type: :request do
  describe "GET /example2s" do
    it "works! (now write some real specs)" do
      get example2s_path
      expect(response).to have_http_status(200)
    end
  end
end
