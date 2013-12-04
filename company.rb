class Company
  @@data = []
  def self.load_employees(file_name)
    CSV.foreach(file_name, headers:true ) do |row|
      employee = row.to_hash
      binding.pry
      @@data << employee
    end
  end
end