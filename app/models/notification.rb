class Notification < ApplicationRecord
  
  belongs_to :notificationtype
  
  has_attached_file :image, styles: { medium: "300x300", thumb: "150x150" }
  # Validate content type
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  
   # validations
  validates :title, presence: true
  validates :message, presence: true
  
end
