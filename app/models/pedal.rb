class Pedal < ActiveRecord::Base
  attr_accessible :price, :rating, :title

# check out Rails validations for length, presence, etc.
  validates :title, presence: :true, length: { maximum: 100}
end
