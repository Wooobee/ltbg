require "spec_helper"

describe ChatmessagesController do
  describe "routing" do

    it "routes to #index" do
      get("/chatmessages").should route_to("chatmessages#index")
    end

    it "routes to #new" do
      get("/chatmessages/new").should route_to("chatmessages#new")
    end

    it "routes to #show" do
      get("/chatmessages/1").should route_to("chatmessages#show", :id => "1")
    end

    it "routes to #edit" do
      get("/chatmessages/1/edit").should route_to("chatmessages#edit", :id => "1")
    end

    it "routes to #create" do
      post("/chatmessages").should route_to("chatmessages#create")
    end

    it "routes to #update" do
      put("/chatmessages/1").should route_to("chatmessages#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/chatmessages/1").should route_to("chatmessages#destroy", :id => "1")
    end

  end
end
