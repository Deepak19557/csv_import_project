class User < ApplicationRecord 
	def self.import(file)
		if file.content_type.in?(%w(application/vnd.ms-excel text/csv application/vnd.openxmlformats-officedocument.spreadsheetml.sheet))
			CSV.foreach(file.path, headers: true) do |row|
	            company_hash = User.new
				company_hash.date = row[0]
	            company_hash.timezone = row[1] 
	            company_hash.name = row[2]
	            company_hash.payment_type = row[3]
	            company_hash.status = row[4]
	            company_hash.currency = row[5]
	            company_hash.gross = row[6]
	            company_hash.fee = row[7]
	            company_hash.net = row[8]
	            company_hash.from_email = row[9]
	            company_hash.to_email = row[10]
	            company_hash.transaction_id = row[11]
	            company_hash.item_id = row[12]
	            company_hash.frequency = row[13]
				company_hash.save
            end
		end
    end
	after_create :send_mail
	def send_mail
        NotificationMailer.send_signup_email(self).deliver_now
    end
end









# var allowedExtension = ["csv", "xls"];
# $.each(inputFile.files, function() {
#     extName = this.name.split('.').pop();
#     if ($.inArray(extName, allowedExtension) == -1) {extError=true;};
#   })
 # private

   #def avatar_size_validation
 #   errors[:avatar] << "Must be a csv or a xls file" 
 #    if avatar.type == '.csv'
 #    	puts "valid"
 #    elsif avtar.type == '.xls' 
 #    	puts 'valid'
 #    elsif avtar.type == '.xlsx '
 #    	puts 'valid'
 #    else
 #    	puts 'invalid'
 # #    end
 #   end


 #  def extension_white_list
 #    %w(csv xls xlsx)
 #  end

 #  private

 #  def correct_document_mime_type
 #    if file.attached? && !file.content_type.in?(%w(application/csv application/xls))
 #       errors.add(:document, "Must be a csv or a xls file")
 #    end
 #  end

# def self.import(file)
  #        spreadsheet = open_spreadsheet(file)
 #        header = spreadsheet.row(1)
 #        (2..spreadsheet.last_row).each do |i|
 #          row = Hash[[header, spreadsheet.row(i)].transpose]
 #          user = find_by_id(row["id"]) || new
 #          user.attributes = row.to_hash.slice(*attr_accessor)
 #          user.save!
 #        end
 #    end
      
  #   def self.import(file)
  #       case File.extname(file.original_filename)
  #       when ".csv" then CSV.new(file.path, nil, :ignore)
		# when ".xls" then Excel.new(file.path, nil, :ignore)
		# when ".xlsx" then Roo::Excelx.new(file.path, nil, :ignore)
  #       else raise "Unknown file type: #{file.original_filename}"
  #       end
  #   end















	