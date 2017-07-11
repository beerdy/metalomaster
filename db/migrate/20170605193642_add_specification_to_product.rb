class AddSpecificationToProduct < ActiveRecord::Migration
  def change
    add_column :products, :specification, :text
  end
end
