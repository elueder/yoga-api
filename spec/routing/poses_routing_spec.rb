require "rails_helper"

RSpec.describe PosesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/poses").to route_to("poses#index")
    end


    it "routes to #show" do
      expect(:get => "/poses/1").to route_to("poses#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/poses").to route_to("poses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/poses/1").to route_to("poses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/poses/1").to route_to("poses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/poses/1").to route_to("poses#destroy", :id => "1")
    end

  end
end
