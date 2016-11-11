require 'rails_helper'

RSpec.describe "orders/new", type: :view do
  before(:each) do
    assign(:order, Order.new(
      :number => "MyString",
      :email => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :shopify_order_id => 1,
      :total => 1.5,
      :line_item_count => 1,
      :financial_status => "MyString"
    ))
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

      assert_select "input#order_number[name=?]", "order[number]"

      assert_select "input#order_email[name=?]", "order[email]"

      assert_select "input#order_first_name[name=?]", "order[first_name]"

      assert_select "input#order_last_name[name=?]", "order[last_name]"

      assert_select "input#order_shopify_order_id[name=?]", "order[shopify_order_id]"

      assert_select "input#order_total[name=?]", "order[total]"

      assert_select "input#order_line_item_count[name=?]", "order[line_item_count]"

      assert_select "input#order_financial_status[name=?]", "order[financial_status]"
    end
  end
end
