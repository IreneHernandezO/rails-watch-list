class Movie < ApplicationRecord
  has_many :bookmarks#, dependent: :destroy
  has_many :lists, through: :bookmarks
  #before_destroy :check_for_bookmarks
  validates :title, uniqueness: true
  validates :overview, uniqueness: true
  validates :title, presence: true
  validates :overview, presence: true
end
