class Tour < ApplicationRecord
  has_many :shedules
  validates :title, presence: true,
            length: {minimum: 5}

  def Tour
  end

end
