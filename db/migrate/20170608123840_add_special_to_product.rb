class AddSpecialToProduct < ActiveRecord::Migration
  def change
    add_column :products, :special, :boolean
  end
end
