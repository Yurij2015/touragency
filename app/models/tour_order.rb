class TourOrder < ApplicationRecord
  belongs_to :tour, class_name: '::Tour', foreign_key: :tour_id
end
