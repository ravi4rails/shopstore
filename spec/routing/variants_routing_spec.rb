require "rails_helper"

RSpec.describe VariantsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/variants").to route_to("variants#index")
    end

    it "routes to #new" do
      expect(:get => "/variants/new").to route_to("variants#new")
    end

    it "routes to #show" do
      expect(:get => "/variants/1").to route_to("variants#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/variants/1/edit").to route_to("variants#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/variants").to route_to("variants#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/variants/1").to route_to("variants#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/variants/1").to route_to("variants#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/variants/1").to route_to("variants#destroy", :id => "1")
    end

  end
end
