class AddCatalogIdToProduct < ActiveRecord::Migration
  def change
    add_column :products, :catalog_id, :integer
  end
end
