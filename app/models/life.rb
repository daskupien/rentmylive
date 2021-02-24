class Life < ApplicationRecord
  belongs_to :user
  has_one_attached :img_url
end
