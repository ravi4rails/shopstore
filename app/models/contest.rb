class Contest < ActiveRecord::Base
  belongs_to :order
  validates :name, :presence => true

  def criteria
    results = []
    results << "Product Name: #{product_name}" if product_name.present?
    results << "Start Date: #{I18n.l start_date.to_date,
    format: :short}" if start_date.present?
    results << "End Date: #{I18n.l end_date.to_date,
    format: :short}" if end_date.present?
    results << "Max #: #{max_results}" if max_results.present?
    return results.join(', ')
  end

end
