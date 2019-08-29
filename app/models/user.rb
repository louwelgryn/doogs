class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :commitments
  has_many :tasks
  has_many :user_skills
  has_many :skills, through: :user_skills
  has_many :projects, through: :commitments
  mount_uploader :image, PhotoUploader

  def notifications
    pending_tasks = self.tasks.where("status = ?", "A faire")
    return pending_tasks.length
  end
end
