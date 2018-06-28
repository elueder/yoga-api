require 'rails_helper'

RSpec.describe "Poses", type: :request do
  describe "GET /poses" do
    it "works! (now write some real specs)" do
      get poses_path
      expect(response).to have_http_status(200)
    end
  end
end
