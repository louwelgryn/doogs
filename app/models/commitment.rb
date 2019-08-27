class Commitment < ApplicationRecord
  belongs_to :skill
  belongs_to :user, optional: true
  belongs_to :project
end
