require 'rails_helper'

describe "User sees company office locations" do
  scenario "a user sees an office location associated with a specific company" do
    company = Company.create!(name: "ESPN")
    company.jobs.create!(title: "Developer", level_of_interest: 90, city: "Denver")
    location_1 = company.locations.create!(city: "Denver")
    location_2 = company.locations.create!(city: "Boston")

    visit company_path(company)

    expect(current_path).to eq("/companies/#{company.id}/jobs")
    save_and_open_page
    expect(page).to have_content(location_1.city)
    expect(page).to have_content(location_2.city)
  end
end
