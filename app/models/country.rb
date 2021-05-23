class Country < ApplicationRecord
    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
            company_hash = Country.new
            company_hash.name = row[0]
            company_hash.code = row[1]
            company_hash.timezone = row[2]
			company_hash.save
        end
    end
end