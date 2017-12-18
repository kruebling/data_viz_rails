require 'csv'

namespace :csv do
  desc "Import csv file to Active Record"
  task :import => :environment do
    path = END.fetch("CSV_FILE") {
      File.join(File.dirname(__FILE__), %w[.. .. db data users.csv])
    }
    CSV.foreach(path, headers: true, header_converters: :symbol) do |row|
      User.create(row.to_hash)
    end
  end
end
