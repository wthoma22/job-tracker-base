require 'rails_helper'

describe "User sees company office locations" do
  scenario "a user sees an office location associated with a specific company" do
    company = Company.create!(name: "ESPN")
    location_1 = company.locations.create!(city: "Denver")
    location_2 = company.locations.create!(city: "Boston")

    visit company_path(company)

    expect(current_path).to eq("/companies/#{company.id}/jobs")
    expect(page).to have_content("Denver")
    expect(page).to have_content("Boston")
  end
end
