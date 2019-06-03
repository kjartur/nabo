class TaskPhotosUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
end
