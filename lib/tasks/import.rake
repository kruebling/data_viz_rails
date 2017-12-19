require 'csv'

namespace :csv do
  desc "Import data from csv file"
  task :import => [:environment] do
    file = "whitehouse.csv"
    CSV.foreach(file) do |row|
      Earning.create({
        name:  row[0],
        status: row[1],
        salary: row[2],
        pay_basis: row[3],
        position_title: row[4],
      })
    end
  end
end
