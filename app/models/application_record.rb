class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  DEVELOPMENT_GOAL = ["Pas de pauvreté", "Faim zéro", "Bonne santé et bien-être", "Éducation de qualité", "Égalité entre les sexes", "Eau propre et assainissement", "Énergie propre et d'un coût abordable", "Travail décent et croissance économique", "industrie innovation et infrastructure", "Inégalités  réduites", "Villes et communautés durables", "Consommation et production responsables", "Mesures relatives à la lutte contre les changements climatiques", "Vie  aquatique", "Vie  terrestre", "Paix, justice et institutions efficaces", "Partenariat pour la réalisation des objectifs"]
  PROJECT_STATUS = ["on going", "pending", "finished"]
end
