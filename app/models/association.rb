class Association < ApplicationRecord
  has_many :projects
  has_many :commitments, through: :projects
  has_many :users, through: :commitments
  validates :name, :description, :referent_name, :logo, presence: true

end
