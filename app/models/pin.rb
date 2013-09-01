class Pin < ActiveRecord::Base
  attr_accessible :description, :image, :image_remote_url

  validates :description, presence: true
  belongs_to :user
  validates :user_id, presence: true
  mount_uploader :image, ImageUploader

  def image_remote_url=(url_value)
  	self.image = URI.parse(url_value) unless url_value.blank?
  	super
  end


end
