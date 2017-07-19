class Photo < ActiveRecord::Base
  dragonfly_accessor :image
  belongs_to :product
  rails_admin do
    include_all_fields
    exclude_fields  :portfolio_id, :sort, :updated_at, :created_at, :description, :slave, :url
  end
end
