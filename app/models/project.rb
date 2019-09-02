class Project < ApplicationRecord
  DEVELOPMENT_GOAL = ["Pas de pauvreté", "Faim zéro", "Bonne santé et bien-être", "Éducation de qualité", "Égalité entre les sexes", "Eau propre et assainissement", "Énergie propre et d'un coût abordable", "Travail décent et croissance économique", "Industrie innovation et infrastructure", "Inégalités réduites", "Villes et communautés durables", "Consommation et production responsables", "Mesures relatives à la lutte contre les changements climatiques", "Vie aquatique", "Vie terrestre", "Paix, justice et institutions efficaces", "Partenariat pour la réalisation des objectifs"]
  PROJECT_STATUS = ["En attente", "En cours", "Terminé"]

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

  def progression_days
    (end_date - Date.today).to_i
  end

  def progression_percent
    duration = (end_date - start_date).to_i
    progress = (Date.today - start_date).to_i
    return (100 * progress).fdiv(duration).round
  end

  def volunteers
    self.commitments.map do |commitment|
      commitment.user
    end
  end
end
