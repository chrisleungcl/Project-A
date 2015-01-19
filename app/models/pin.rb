class Pin < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, 
						:styles => { :medium => "x300", :thumb => "x100" },
            :storage => :s3,
            :bucket => '******',
            :s3_credentials => {
							:bucket => ENV['AWS_BUCKET'],
      				:access_key_id => ENV['AWS_ACCESS_KEY_ID'],
      				:secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
            }
end