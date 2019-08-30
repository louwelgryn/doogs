class Task < ApplicationRecord
  PRIORITY_LEVEL = ["Normale", "Prioritaire", "Urgente"]
  STATUS = ["A faire", "Terminée"]
  belongs_to :user
  belongs_to :project
  validates :name, :priority_level, :description, presence: true

  scope :normale, -> { where(priority_level: 'Normale') }
  scope :urgente, -> { where(priority_level: 'Urgente') }
  scope :prioritaire, -> { where(priority_level: 'Prioritaire') }
  scope :a_faire, -> { where(status: "A faire") }
  scope :terminee, -> { where(status: "Terminée") }


end
