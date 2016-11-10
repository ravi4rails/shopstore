require 'rails_helper'

RSpec.describe "variants/edit", type: :view do
  before(:each) do
    @variant = assign(:variant, Variant.create!(
      :product_id => 1,
      :shopify_variant_id => 1,
      :option1 => "MyString",
      :option2 => "MyString",
      :option3 => "MyString",
      :sku => "MyString",
      :barcode => "MyString",
      :price => 1.5
    ))
  end

  it "renders the edit variant form" do
    render

    assert_select "form[action=?][method=?]", variant_path(@variant), "post" do

      assert_select "input#variant_product_id[name=?]", "variant[product_id]"

      assert_select "input#variant_shopify_variant_id[name=?]", "variant[shopify_variant_id]"

      assert_select "input#variant_option1[name=?]", "variant[option1]"

      assert_select "input#variant_option2[name=?]", "variant[option2]"

      assert_select "input#variant_option3[name=?]", "variant[option3]"

      assert_select "input#variant_sku[name=?]", "variant[sku]"

      assert_select "input#variant_barcode[name=?]", "variant[barcode]"

      assert_select "input#variant_price[name=?]", "variant[price]"
    end
  end
end
