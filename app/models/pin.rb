class Pin < ActiveRecord::Base
  attr_accessible :description, :image, :remote_image_url

  validates :description, presence: true
  belongs_to :user
  validates :user_id, presence: true
  mount_uploader :image, ImageUploader
end
