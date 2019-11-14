module SalesHelper
  def active_sale?
    Sale.active.any?
  end

  def sale_info
    if self.active_sale?
      @sale = Sale.active.first
     end
  end
end
