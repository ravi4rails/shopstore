class ChangeIntegerLimitForContestFields < ActiveRecord::Migration
  def change
    change_column :contests, :product_id, :integer, limit: 8
    change_column :contests, :order_id, :integer, limit: 8
  end
end
