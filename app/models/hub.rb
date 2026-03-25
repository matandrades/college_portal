class Hub < ApplicationRecord
  validates :name, presence: true
  validates :city, presence: true
  validates :state_code, presence: true
end
