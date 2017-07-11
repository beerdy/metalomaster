class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :title
      t.text :description
      t.text :slave
      t.string :image_uid
      t.string :image_name
      t.string :url
      t.integer :sort

      t.timestamps null: false
    end
  end
end
