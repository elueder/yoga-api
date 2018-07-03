require "rails_helper"

RSpec.describe SequencePosesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sequence_poses").to route_to("sequence_poses#index")
    end


    it "routes to #show" do
      expect(:get => "/sequence_poses/1").to route_to("sequence_poses#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/sequence_poses").to route_to("sequence_poses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/sequence_poses/1").to route_to("sequence_poses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/sequence_poses/1").to route_to("sequence_poses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sequence_poses/1").to route_to("sequence_poses#destroy", :id => "1")
    end

  end
end
