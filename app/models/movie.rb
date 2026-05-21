class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :restrict_with_error
# dependent: :restrict_with_error = bloque la suppression d'un film si un signet y est lié

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end
