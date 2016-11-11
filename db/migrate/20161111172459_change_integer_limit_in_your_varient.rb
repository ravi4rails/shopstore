class ChangeIntegerLimitInYourVarient < ActiveRecord::Migration
  def change
    change_column :variants, :shopify_variant_id, :integer, limit: 8
    change_column :variants, :product_id, :integer, limit: 8
  end
end
