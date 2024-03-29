class User < ActiveRecord::Base
	before_save { self.email = email.downcase}
	before_create :create_remember_token

	validates :name, presence:true, length: { maximum: 50 }
	validates :email, presence:true, uniqueness: { case_sensitive:false }
	#validates :password, length: { minimum:5 }
	has_secure_password

	def User.new_remember_token
		SecureRandom.urlsafe_base64
	end

	def User.hash(token)
		Digest::SHA1.hexdigest(token.to_s)
	end

	private
	
		def create_remember_token
			self.remember_token = User.hash(User.new_remember_token)
		end


end
