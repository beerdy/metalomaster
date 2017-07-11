class Portfolio < ActiveRecord::Base
  dragonfly_accessor :image
  belongs_to :catalog
  has_many :photos
  accepts_nested_attributes_for :photos, allow_destroy: true, reject_if: lambda {|attributes| attributes['image'].blank?}
end
