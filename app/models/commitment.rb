class Commitment < ApplicationRecord
  belongs_to :skill
  belongs_to :user
  belongs_to :project

end
