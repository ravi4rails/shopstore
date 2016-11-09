require 'rails_helper'

RSpec.describe "accounts/index", type: :view do
  before(:each) do
    assign(:accounts, [
      Account.create!(
        :shopify_account_url => "Shopify Account Url",
        :shopify_api_key => "Shopify Api Key",
        :shopify_password => "Shopify Password",
        :shopify_shared_secret => "Shopify Shared Secret"
      ),
      Account.create!(
        :shopify_account_url => "Shopify Account Url",
        :shopify_api_key => "Shopify Api Key",
        :shopify_password => "Shopify Password",
        :shopify_shared_secret => "Shopify Shared Secret"
      )
    ])
  end

  it "renders a list of accounts" do
    render
    assert_select "tr>td", :text => "Shopify Account Url".to_s, :count => 2
    assert_select "tr>td", :text => "Shopify Api Key".to_s, :count => 2
    assert_select "tr>td", :text => "Shopify Password".to_s, :count => 2
    assert_select "tr>td", :text => "Shopify Shared Secret".to_s, :count => 2
  end
end
