class Project < ApplicationRecord
  DEVELOPMENT_GOAL = ["Pas de pauvreté", "Faim zéro", "Bonne santé et bien-être", "Éducation de qualité", "Égalité entre les sexes", "Eau propre et assainissement", "Énergie propre et d'un coût abordable", "Travail décent et croissance économique", "Industrie innovation et infrastructure", "Inégalités réduites", "Villes et communautés durables", "Consommation et production responsables", "Mesures relatives à la lutte contre les changements climatiques", "Vie aquatique", "Vie terrestre", "Paix, justice et institutions efficaces", "Partenariat pour la réalisation des objectifs"]
  PROJECT_STATUS = ["En attente", "En cours", "Terminé"]
  CORRESPONDANCE_MOIS_CHIFFRE = { 1 => "Janvier", 2 => "Février", 3 => "Mars", 4 => "Avril", 5 => "Mai", 6 => "Juin", 7 => "Juillet", 8 => "Août", 9 => "Septembre", 10 => "Octobre", 11 => "Novembre", 12 => "Décembre"}
  CORRESPONDANCE_MOIS_ANGLAIS = { "January" => "Janvier", "February" => "Février", "March" => "Mars", "April" => "Avril", "May" => "Mai", "June" => "Juin", "July" => "Juillet", "August" => "Août", "September" => "Septembre", "October" => "Octobre", "November" => "Novembre", "December" => "Décembre"}

  belongs_to :charity
  has_many :commitments
  has_many :users, through: :commitments
  has_many :events
  has_many :participations, through: :events
  has_many :tasks
  has_one :chat_room
  has_many :messages, through: :chat_rooms
  validates :name, :description, :development_goal, :end_date, presence: true
  validates :development_goal, inclusion: { in: DEVELOPMENT_GOAL }
  validates :name, uniqueness: true
  validates :status, inclusion: { in: PROJECT_STATUS }
  mount_uploader :image, PhotoUploader

  def remaining_days
    (end_date - Date.today).to_i
  end

  def total_days
    (end_date - start_date).to_i
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
