require "spec_helper"

describe DreamsController do
  describe "routing" do

    it "routes to #index" do
      get("/dreams").should route_to("dreams#index")
    end

    it "routes to #new" do
      get("/dreams/new").should route_to("dreams#new")
    end

    it "routes to #show" do
      get("/dreams/1").should route_to("dreams#show", :id => "1")
    end

    it "routes to #edit" do
      get("/dreams/1/edit").should route_to("dreams#edit", :id => "1")
    end

    it "routes to #create" do
      post("/dreams").should route_to("dreams#create")
    end

    it "routes to #update" do
      put("/dreams/1").should route_to("dreams#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/dreams/1").should route_to("dreams#destroy", :id => "1")
    end

  end
end
