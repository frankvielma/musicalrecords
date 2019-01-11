class Artist < ApplicationRecord

  has_many :lps

  validates :name, presence: true
end
