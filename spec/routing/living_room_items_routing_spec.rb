require "rails_helper"

RSpec.describe LivingRoomItemsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/living_room_items").to route_to("living_room_items#index")
    end

    it "routes to #show" do
      expect(get: "/living_room_items/1").to route_to("living_room_items#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/living_room_items").to route_to("living_room_items#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/living_room_items/1").to route_to("living_room_items#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/living_room_items/1").to route_to("living_room_items#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/living_room_items/1").to route_to("living_room_items#destroy", id: "1")
    end
  end
end
