class Portfolio < ActiveRecord::Base
  dragonfly_accessor :image
  belongs_to :catalog
  has_many :photos
  accepts_nested_attributes_for :photos, allow_destroy: true, reject_if: lambda {|attributes| attributes['image'].blank?}
  rails_admin do
    include_all_fields
    exclude_fields  :sort, :updated_at, :created_at, :description, :slave, :url
  end
end
