require 'csv'

doubled_rows = []

CSV.foreach("input.csv") do |row|
  doubled_row = row.map { |cell| (cell.to_f * 2).to_s }
  doubled_rows << doubled_row
end


CSV.open("output.csv", "w") do |csv|
  doubled_rows.each { |row| csv << row }
end
