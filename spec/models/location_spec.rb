require 'rails_helper'

describe Location do
  describe "validations" do
    context "location has valid attributes" do
      it "is valid with proper attributes" do
        location = Location.new(city: "Denver")
        expect(location).to be_valid
      end
    end
  end

  describe "relationships" do
    it "belongs to a company" do
      location = Location.new(city: "Denver")
      expect(location).to respond_to(:company)
    end
  end
end
