require 'rails_helper'

RSpec.describe "variants/index", type: :view do
  before(:each) do
    assign(:variants, [
      Variant.create!(
        :product_id => 2,
        :shopify_variant_id => 3,
        :option1 => "Option1",
        :option2 => "Option2",
        :option3 => "Option3",
        :sku => "Sku",
        :barcode => "Barcode",
        :price => 4.5
      ),
      Variant.create!(
        :product_id => 2,
        :shopify_variant_id => 3,
        :option1 => "Option1",
        :option2 => "Option2",
        :option3 => "Option3",
        :sku => "Sku",
        :barcode => "Barcode",
        :price => 4.5
      )
    ])
  end

  it "renders a list of variants" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Option1".to_s, :count => 2
    assert_select "tr>td", :text => "Option2".to_s, :count => 2
    assert_select "tr>td", :text => "Option3".to_s, :count => 2
    assert_select "tr>td", :text => "Sku".to_s, :count => 2
    assert_select "tr>td", :text => "Barcode".to_s, :count => 2
    assert_select "tr>td", :text => 4.5.to_s, :count => 2
  end
end
