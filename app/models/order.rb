class Order < ActiveRecord::Base
  has_many :order_items

  def customer_name
    "#{self.first_name} #{self.last_name}"
  end

  def self.candidate_list(params={})
    params[:order] ||= "order_date asc"
    orders = order(params[:order]).includes(:order_items)

    if params[:limit].present?
      orders = orders.limit(params[:limit].to_i)
    end

    if params[:product_id].present?
      orders = orders.where("order_items.shopify_product_id" => params[:product_id].to_i)
    end

    if params[:start_date].present?
      orders = orders.where(["orders.order_date >= ?", params[:start_date]])
    end

    if params[:end_date].present?
      orders = orders.where(["orders.order_date <= ?", params[:end_date]])
    end

    # .pluck returns an array containing the specified field
    return orders.pluck(:id).uniq

  end

end
