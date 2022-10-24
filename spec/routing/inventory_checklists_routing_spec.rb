require "rails_helper"

RSpec.describe InventoryChecklistsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/inventory_checklists").to route_to("inventory_checklists#index")
    end

    it "routes to #show" do
      expect(get: "/inventory_checklists/1").to route_to("inventory_checklists#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/inventory_checklists").to route_to("inventory_checklists#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/inventory_checklists/1").to route_to("inventory_checklists#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/inventory_checklists/1").to route_to("inventory_checklists#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/inventory_checklists/1").to route_to("inventory_checklists#destroy", id: "1")
    end
  end
end
