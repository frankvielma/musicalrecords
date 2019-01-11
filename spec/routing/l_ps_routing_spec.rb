require "rails_helper"

RSpec.describe LPsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/lps").to route_to("l_ps#index")
    end

    it "routes to #new" do
      expect(:get => "/lps/new").to route_to("l_ps#new")
    end

    it "routes to #show" do
      expect(:get => "/lps/1").to route_to("l_ps#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/lps/1/edit").to route_to("l_ps#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/lps").to route_to("l_ps#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/lps/1").to route_to("l_ps#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/lps/1").to route_to("l_ps#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/lps/1").to route_to("l_ps#destroy", :id => "1")
    end
  end
end
