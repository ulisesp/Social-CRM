require "spec_helper"

describe FacebookDataController do
  describe "routing" do

    it "routes to #index" do
      get("/facebook_data").should route_to("facebook_data#index")
    end

    it "routes to #new" do
      get("/facebook_data/new").should route_to("facebook_data#new")
    end

    it "routes to #show" do
      get("/facebook_data/1").should route_to("facebook_data#show", :id => "1")
    end

    it "routes to #edit" do
      get("/facebook_data/1/edit").should route_to("facebook_data#edit", :id => "1")
    end

    it "routes to #create" do
      post("/facebook_data").should route_to("facebook_data#create")
    end

    it "routes to #update" do
      put("/facebook_data/1").should route_to("facebook_data#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/facebook_data/1").should route_to("facebook_data#destroy", :id => "1")
    end

  end
end
