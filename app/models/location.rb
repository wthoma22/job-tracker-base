class Location < ActiveRecord::Base
  validates :city, presence: true

  has_many :companies
end
