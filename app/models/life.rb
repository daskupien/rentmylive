class Life < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  # TODO add validations
end
