class LineItem < ApplicationRecord
  belongs_to :apparel
  belongs_to :cart

  def total_price
    apparel.price.to_i * quantity.to_i
  end
end
