class Sale
  @sales_data = []
  attr_accessor :sales_data, :gross_monthly_sales
  def initialize(file_name)
    @sales_data = self.class.load_sales(file_name)
  end

  def self.load_sales(file_name)
    @sales = []
    CSV.foreach(file_name, headers:true) do |row|
      sale = row.to_hash
      @sales << sale
    end
    @sales
  end
  
  def gross_monthly_sales
    @gross_monthly_sales = 0
    @sales_data.each do |x|
      @gross_monthly_sales += x['gross_sale_value'].to_i
    end
    @gross_monthly_sales
  end
end