class Driver < ApplicationRecord
  has_many :trips
  
  def average_rating
    avg_rating = 0
    if self.trips !=[]
      avg_rating = self.trips.average(:rating).round(1)
    end
    return avg_rating
  end

  def total_earnings
    total_earnings = 0
    if self.trips != []
      total_earnings = (self.trips.sum(:cost) * 0.01)
    end
    return total_earnings
  end

end
