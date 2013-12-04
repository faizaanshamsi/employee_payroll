require_relative 'employee.rb'
require_relative 'sales_person.rb'
require_relative 'commission_sales_person.rb'
require_relative 'quota_sales_person.rb'
require_relative 'owner.rb'
require_relative 'sale.rb'
require_relative 'company.rb'
require 'csv'
require 'pry'

company = Company.new('employees.csv')
sale = Sale.new('sales.csv')
people = []

company.data.each do |x|
  people << company.assemble_human_bots(x)
end

binding.pry