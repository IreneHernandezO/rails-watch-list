class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks#, dependent: :destroy this is wrong, if smb deletes a list, should not destroy all bookmarks from everybody
  validates :name, uniqueness: true
  validates :name, presence: true
  has_one_attached :photo
end
