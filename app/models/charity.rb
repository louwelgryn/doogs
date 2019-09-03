class Charity < ApplicationRecord
  has_many :projects
  has_many :commitments, through: :project
  has_many :users, through: :commitments
  validates :name, :description, :referent_name, presence: true
  validates :name, uniqueness: true
  mount_uploader :logo, PhotoUploader
  mount_uploader :referent_image, PhotoUploader

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
