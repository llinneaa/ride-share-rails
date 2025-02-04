class Trip < ApplicationRecord
  belongs_to :driver, optional: true
  belongs_to :passenger, optional: true

  validates :date, presence: true
  validates :cost, presence: true
  validates :driver_id, presence: true
  validates :passenger_id, presence: true
end
