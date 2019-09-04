class Ressource < ApplicationRecord
  belongs_to :project
  belongs_to :user
  mount_uploader :source, RessourceUploader
  validates :name, presence: true
  validates :source, presence: true

  FILEFORMATS = ['jpg', 'csv', 'pdf']

  before_save :update_attributes

  def icon_file(format)
    "/file_type_icons/#{format}.svg"
  end

  def file_type
    self.source.filename.match(/[^\\]*\.(\w+)$/)[1]
  end

  private

  def update_attributes
    self.content_type = file_type
  end
end
