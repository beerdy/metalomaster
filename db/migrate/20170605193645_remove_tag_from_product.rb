class RemoveTagFromProduct < ActiveRecord::Migration
  def change
    remove_column :products, :tag_id, :integer
  end
end
