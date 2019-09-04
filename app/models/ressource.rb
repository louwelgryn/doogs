class Ressource < ApplicationRecord
  belongs_to :project
  belongs_to :user
  mount_uploader :source, RessourceUploader
  validates :name, presence: true
  validates :source, presence: true

  def icon_file_type(filename)
    ext = filename.match(/[^\\]*\.(\w+)$/)[1]
    return "/file_type_icons/#{ext}.svg"
  end
end
