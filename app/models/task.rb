class Task < ApplicationRecord
  PRIORITY_LEVEL = ["Normale", "Prioritaire", "Urgente"]
  STATUS = ["A faire", "Terminée"]
  belongs_to :user
  belongs_to :project
  validates :name, :priority_level, :description, presence: true
end
