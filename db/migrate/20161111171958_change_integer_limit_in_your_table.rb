class ChangeIntegerLimitInYourTable < ActiveRecord::Migration
  def change
    change_column :products, :shopify_product_id, :integer, limit: 8
  end
end
