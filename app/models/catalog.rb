class Catalog < ActiveRecord::Base
  belongs_to :group
  has_many :products
  has_one :portfolio
  dragonfly_accessor :image
  rails_admin do
    include_all_fields

    edit do
      field :description, :rich_editor do
        config({
          :insert_many => true
        })
      end
    end
  end
end
