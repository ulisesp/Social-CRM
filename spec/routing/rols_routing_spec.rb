require "spec_helper"

describe RolsController do
  describe "routing" do

    it "routes to #index" do
      get("/rols").should route_to("rols#index")
    end

    it "routes to #new" do
      get("/rols/new").should route_to("rols#new")
    end

    it "routes to #show" do
      get("/rols/1").should route_to("rols#show", :id => "1")
    end

    it "routes to #edit" do
      get("/rols/1/edit").should route_to("rols#edit", :id => "1")
    end

    it "routes to #create" do
      post("/rols").should route_to("rols#create")
    end

    it "routes to #update" do
      put("/rols/1").should route_to("rols#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/rols/1").should route_to("rols#destroy", :id => "1")
    end

  end
end
