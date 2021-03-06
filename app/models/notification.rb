class Notification < ApplicationRecord
  
  belongs_to :notificationtype
  
  has_attached_file :image, styles: { medium: "600x350", thumb: "100x100", card: "450x250", show: "300x300" }
  # Validate content type
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  
   # validations
  validates :title, presence: true
  validates :message, presence: true
  
  default_scope { order(updated_at: :desc) }
  
end
