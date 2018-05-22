require "rails_helper"

RSpec.describe Example1sController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/example1s").to route_to("example1s#index")
    end

    it "routes to #new" do
      expect(:get => "/example1s/new").to route_to("example1s#new")
    end

    it "routes to #show" do
      expect(:get => "/example1s/1").to route_to("example1s#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/example1s/1/edit").to route_to("example1s#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/example1s").to route_to("example1s#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/example1s/1").to route_to("example1s#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/example1s/1").to route_to("example1s#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/example1s/1").to route_to("example1s#destroy", :id => "1")
    end

  end
end
