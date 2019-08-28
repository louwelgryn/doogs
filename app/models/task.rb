class Task < ApplicationRecord
  PRIORITY_LEVEL = ["optionnelle", "à faire", "urgente"]
  belongs_to :user
  belongs_to :project
  validates :name, :priority_level, :description, presence: true
end
