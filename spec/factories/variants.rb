FactoryGirl.define do
  factory :variant do
    product_id 1
    shopify_variant_id 1
    option1 "MyString"
    option2 "MyString"
    option3 "MyString"
    sku "MyString"
    barcode "MyString"
    price 1.5
    last_shopify_sync "2016-11-11 00:01:04"
  end
end
