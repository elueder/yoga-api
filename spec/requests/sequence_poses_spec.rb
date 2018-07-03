require 'rails_helper'

RSpec.describe "SequencePoses", type: :request do
  describe "GET /sequence_poses" do
    it "works! (now write some real specs)" do
      get sequence_poses_path
      expect(response).to have_http_status(200)
    end
  end
end
