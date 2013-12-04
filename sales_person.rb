class SalesPerson < Employee

  def gross_monthly_sales(gross_monthly_sales)
    @gross_monthly_sales = gross_monthly_sales
  end

  def commission_paid
    @commission_paid
  end

  def gross_monthly_salary
    @gross_monthly_salary = super + @commission_paid
  end
end