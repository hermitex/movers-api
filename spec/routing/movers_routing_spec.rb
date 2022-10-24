require "rails_helper"

RSpec.describe MoversController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/movers").to route_to("movers#index")
    end

    it "routes to #show" do
      expect(get: "/movers/1").to route_to("movers#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/movers").to route_to("movers#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/movers/1").to route_to("movers#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/movers/1").to route_to("movers#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/movers/1").to route_to("movers#destroy", id: "1")
    end
  end
end
