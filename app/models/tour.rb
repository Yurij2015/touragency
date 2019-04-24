class Tour < ApplicationRecord
  has_many :shedules
  has_many :tour_orders
  validates :title, presence: true,
            length: {minimum: 5}

  def Tour
  end

end
