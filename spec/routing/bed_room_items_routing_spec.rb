require "rails_helper"

RSpec.describe BedRoomItemsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bed_room_items").to route_to("bed_room_items#index")
    end

    it "routes to #show" do
      expect(get: "/bed_room_items/1").to route_to("bed_room_items#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bed_room_items").to route_to("bed_room_items#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bed_room_items/1").to route_to("bed_room_items#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bed_room_items/1").to route_to("bed_room_items#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bed_room_items/1").to route_to("bed_room_items#destroy", id: "1")
    end
  end
end
