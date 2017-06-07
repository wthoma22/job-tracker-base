class Company < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true
  has_many :jobs
  has_many :locations
end
