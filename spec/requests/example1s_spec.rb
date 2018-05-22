require 'rails_helper'

RSpec.describe "Example1s", type: :request do
  describe "GET /example1s" do
    it "works! (now write some real specs)" do
      get example1s_path
      expect(response).to have_http_status(200)
    end
  end
end
