require "spec_helper"

describe SocialNetworksController do
  describe "routing" do

    it "routes to #index" do
      get("/social_networks").should route_to("social_networks#index")
    end

    it "routes to #new" do
      get("/social_networks/new").should route_to("social_networks#new")
    end

    it "routes to #show" do
      get("/social_networks/1").should route_to("social_networks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/social_networks/1/edit").should route_to("social_networks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/social_networks").should route_to("social_networks#create")
    end

    it "routes to #update" do
      put("/social_networks/1").should route_to("social_networks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/social_networks/1").should route_to("social_networks#destroy", :id => "1")
    end

  end
end
