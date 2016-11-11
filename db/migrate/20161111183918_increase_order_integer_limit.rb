class IncreaseOrderIntegerLimit < ActiveRecord::Migration
  def change
    change_column :orders, :shopify_order_id, :integer, limit: 8
    change_column :orders, :line_item_count, :integer, limit: 8
    change_column :order_items, :shopify_product_id, :integer, limit: 8
    change_column :order_items, :shopify_variant_id, :integer, limit: 8
  end
end
