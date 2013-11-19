class Image < ActiveRecord::Base
  #Sattr_accessible :name, :image, :remote_image_url
  belongs_to :user
  has_many :albums, through: :image_albums
  has_many :image_albums
  mount_uploader :file, ImageUploader
end
