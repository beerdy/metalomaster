class AddTagToProduct < ActiveRecord::Migration
  def change
    add_column :products, :tag_id, :integer
  end
end
