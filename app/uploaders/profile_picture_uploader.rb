class ProfilePictureUploader < CarrierWave::Uploader::Base
  def default_url(*args)
    "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  end

  # Adiciona o MiniMagick para permitir o redimensionamento das imagens
  include CarrierWave::MiniMagick
 
  storage :file

  # Local onde será guardado as imagens
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Thumb
  version :thumb do
     process resize_to_fit: [50, 50]
  end

  # Tipos de extensão aceitas
  def extension_whitelist
     %w(jpg jpeg gif png)
  end
end