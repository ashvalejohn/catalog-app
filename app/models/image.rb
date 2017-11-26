# == Schema Information
#
# Table name: images
#
#  id         :integer          not null, primary key
#  image_url  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image_maps :integer          default([]), is an Array
#

class Image < ApplicationRecord
  validates :image_url, presence: true
  
  has_many :image_maps
end
