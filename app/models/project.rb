class Project < ApplicationRecord
  belongs_to :charity
  has_many :commitments
  has_many :users, through: :commitments
  has_many :events
  has_many :tasks
  validates :name, :description, :development_goal, :end_date, presence: true
  validates :development_goal, inclusion: { in: DEVELOPMENT_GOAL }
  validates :name, uniqueness: true
  validates :status, inclusion: { in: PROJECT_STATUS }
  mount_uploader :image, PhotoUploader

  def volunteers
    self.commitments.map do |commitment|
      commitment.user
    end
  end
end
