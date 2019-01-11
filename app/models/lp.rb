class Lp < ApplicationRecord

  belongs_to :artist

  validates :artist_id, presence: true

end
