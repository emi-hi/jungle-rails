module SalesHelper
  def active_sale?
    Sale.active.any?
  end

  def sale_info
    if self.active_sale?
      @sale = Sale.active.first
     end
  end

  def new_price(productPrice)
    @newprice = productPrice * (self.sale_info.percent_off.to_f/100)
  end

  def new_price_stripe(productPrice)
    @newpricestripe = (productPrice * (self.sale_info.percent_off.to_f/100)).to_i
  end
end
