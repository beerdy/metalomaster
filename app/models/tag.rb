class Tag < ActiveRecord::Base
  has_many :products
  
  rails_admin do
    include_all_fields
    exclude_fields  :sort, :url, :slave, :image_uid, :image_name, :updated_at, :created_at
  end
end
