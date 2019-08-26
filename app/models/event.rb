class Event < ApplicationRecord
  belongs_to :project
  has_many :participations
end
