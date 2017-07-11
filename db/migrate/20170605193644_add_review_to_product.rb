class AddReviewToProduct < ActiveRecord::Migration
  def change
    add_column :products, :review, :text
  end
end
