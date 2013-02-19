require "spec_helper"

describe TestspecsController do
  describe "routing" do

    it "routes to #index" do
      get("/testspecs").should route_to("testspecs#index")
    end

    it "routes to #new" do
      get("/testspecs/new").should route_to("testspecs#new")
    end

    it "routes to #show" do
      get("/testspecs/1").should route_to("testspecs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/testspecs/1/edit").should route_to("testspecs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/testspecs").should route_to("testspecs#create")
    end

    it "routes to #update" do
      put("/testspecs/1").should route_to("testspecs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/testspecs/1").should route_to("testspecs#destroy", :id => "1")
    end

  end
end
