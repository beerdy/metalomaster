class AddGroupIdToCatalog < ActiveRecord::Migration
  def change
    add_column :catalogs, :group_id, :integer
  end
end
