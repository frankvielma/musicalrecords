class Lp < ApplicationRecord

  belongs_to :artist

  validates :name, :artist_id, presence: true

end
