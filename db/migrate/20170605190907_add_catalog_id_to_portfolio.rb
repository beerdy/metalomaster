class AddCatalogIdToPortfolio < ActiveRecord::Migration
  def change
    add_column :portfolios, :catalog_id, :integer
  end
end
