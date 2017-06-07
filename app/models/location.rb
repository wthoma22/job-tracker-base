class Location < ActiveRecord::Base
  validates :city, presence: true

  has_many :company_locations
  has_many :companies, through: :company_locations

  def count
    locations.count
  end
  
end
