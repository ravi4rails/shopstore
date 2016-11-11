require 'rails_helper'

RSpec.describe "orders/index", type: :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        :number => "Number",
        :email => "Email",
        :first_name => "First Name",
        :last_name => "Last Name",
        :shopify_order_id => 2,
        :total => 3.5,
        :line_item_count => 4,
        :financial_status => "Financial Status"
      ),
      Order.create!(
        :number => "Number",
        :email => "Email",
        :first_name => "First Name",
        :last_name => "Last Name",
        :shopify_order_id => 2,
        :total => 3.5,
        :line_item_count => 4,
        :financial_status => "Financial Status"
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", :text => "Number".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Financial Status".to_s, :count => 2
  end
end
