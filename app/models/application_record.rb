class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  DEVELOPMENT_GOAL = []
  PROJECT_STATUS =  []
end
