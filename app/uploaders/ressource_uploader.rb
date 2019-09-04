class RessourceUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  # process :save_content_type_in_model

  # def save_content_type_in_model
  #   model.content_type = file.format
  # end

  def extension_whitelist
    %w(jpg pdf csv)
  end
end
