class Group < ActiveRecord::Base
  dragonfly_accessor :image
  has_many :catalogs
  has_many :products, through: :catalogs

  rails_admin do
    include_all_fields
    exclude_fields  :sort, :updated_at, :created_at, :description, :slave, :image, :url
  end
end
