class Event < ApplicationRecord
  belongs_to :project
  has_many :participations
  attr_accessor :participants

  validates :name, :description, :hub, presence: true
end
