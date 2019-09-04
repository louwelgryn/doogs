class RessourceUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  def extension_whitelist
    %w(jpg pdf csv)
  end
end
