class Task < ApplicationRecord
  belongs_to :user
  belongs_to :project
  validates :name, :priority_level, :description, presence: true
end
