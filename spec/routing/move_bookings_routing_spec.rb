require "rails_helper"

RSpec.describe MoveBookingsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/move_bookings").to route_to("move_bookings#index")
    end

    it "routes to #show" do
      expect(get: "/move_bookings/1").to route_to("move_bookings#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/move_bookings").to route_to("move_bookings#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/move_bookings/1").to route_to("move_bookings#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/move_bookings/1").to route_to("move_bookings#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/move_bookings/1").to route_to("move_bookings#destroy", id: "1")
    end
  end
end
