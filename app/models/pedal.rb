class Pedal < ActiveRecord::Base
  attr_accessible :price, :rating, :title, :image


# check out Rails validations for length, presence, etc.
  validates :title, presence: :true, length: { maximum: 100}
  validates :user_id, presence: true
  validates_attachment :image, presence: true, 
  														 content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']},
  														 size: { less_than: 5.megabytes }

  belongs_to :user
  has_attached_file :image, styles: { medium: "320x240>"}
end
