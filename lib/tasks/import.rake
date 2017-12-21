require 'csv'

namespace :csv do
  desc "Import data from csv file"
  task :house => [:environment] do
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

namespace :csv do
  desc "Import data from csv file"
  task :food => [:environment] do
    file = "food.csv"
    CSV.foreach(file) do |row|
      Food.create({
        camis:  row[0],
        dba: row[1],
        boro: row[2],
        building: row[3],
        street: row[4],
        zipcode:  row[5],
        phone: row[6],
        cuisine_description: row[7],
        action: row[8],
        violation_code: row[9],
        violation_description:  row[10],
        critical_flag: row[11],
        score: row[12],
        grade: row[13],
        grade_date: row[14],
        record_date: row[15],
        inspection_type: row[16],
      })
    end
  end
end
