require 'csv'

CSV.open "#{Rails.root}/db/characters.csv" do |csv|
  csv.each do |row|
    Character.create! :name => row[0], :name_roma => row[1]
  end
end
