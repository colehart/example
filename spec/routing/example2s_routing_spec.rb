require "rails_helper"

RSpec.describe Example2sController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/example2s").to route_to("example2s#index")
    end

    it "routes to #new" do
      expect(:get => "/example2s/new").to route_to("example2s#new")
    end

    it "routes to #show" do
      expect(:get => "/example2s/1").to route_to("example2s#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/example2s/1/edit").to route_to("example2s#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/example2s").to route_to("example2s#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/example2s/1").to route_to("example2s#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/example2s/1").to route_to("example2s#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/example2s/1").to route_to("example2s#destroy", :id => "1")
    end

  end
end
