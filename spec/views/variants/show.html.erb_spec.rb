require 'rails_helper'

RSpec.describe "variants/show", type: :view do
  before(:each) do
    @variant = assign(:variant, Variant.create!(
      :product_id => 2,
      :shopify_variant_id => 3,
      :option1 => "Option1",
      :option2 => "Option2",
      :option3 => "Option3",
      :sku => "Sku",
      :barcode => "Barcode",
      :price => 4.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Option1/)
    expect(rendered).to match(/Option2/)
    expect(rendered).to match(/Option3/)
    expect(rendered).to match(/Sku/)
    expect(rendered).to match(/Barcode/)
    expect(rendered).to match(/4.5/)
  end
end
