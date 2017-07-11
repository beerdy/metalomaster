class AddPriceNewToProduct < ActiveRecord::Migration
  def change
    add_column :products, :price_new, :integer
  end
end
