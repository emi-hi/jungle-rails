# frozen_string_literal: true

module SalesHelper
  def active_sale?
    Sale.active.any?
  end

  def sale_info
    @sale = Sale.active.first if active_sale?
  end

  def new_price(product_price)
    @newprice = product_price * (sale_info.percent_off.to_f / 100)
  end

  def new_price_stripe(product_price)
    @newpricestripe = (product_price * (sale_info.percent_off.to_f / 100)).to_i
  end
end
