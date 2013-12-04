class Owner < SalesPerson

  def initialize(name, annual_base_salary)
    super(name, annual_base_salary)
  end

  def gross_monthly_sales
    #sum of all salespeoples' gross monthly sales
  end
end