class Article < ActiveRecord::Base
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
