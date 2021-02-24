class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :life

  # TODO add validations
end
