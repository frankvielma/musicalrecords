require 'rails_helper'

RSpec.describe "Lps", type: :request do
  describe "GET /lps" do
    it "works! (now write some real specs)" do
      get lps_path
      expect(response).to have_http_status(200)
    end
  end
end
