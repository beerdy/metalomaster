class Group < ActiveRecord::Base
  dragonfly_accessor :image
  has_many :catalogs
  has_many :products, through: :catalogs
end
