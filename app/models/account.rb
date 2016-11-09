class Account < ActiveRecord::Base
  validates :shopify_account_url, :shopify_api_key, :shopify_password, :shopify_shared_secret, :presence => true
end
