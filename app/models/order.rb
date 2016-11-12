class Order < ActiveRecord::Base
  has_many :order_items

  def customer_name
    "#{self.first_name} #{self.last_name}"
  end

end
