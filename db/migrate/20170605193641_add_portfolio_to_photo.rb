class AddPortfolioToPhoto < ActiveRecord::Migration
  def change
    add_reference :photos, :portfolio, index: true, foreign_key: true
  end
end
