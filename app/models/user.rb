class User < ApplicationRecord

	before_save { self.email = email.downcase }
	before_create :create_remember_token 		#for sessions


	validates :name, presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  	validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  	has_secure_password
  	validates :password, length: { minimum: 6 }



  	#for sessions
  	def User.new_remember_token
    	SecureRandom.urlsafe_base64 	# генерируем токен (16 цифр методом urlsafe_base64)
  	end

  	def User.encrypt(token)
    	Digest::SHA1.hexdigest(token.to_s)	# кодируем токен методом SHA1.hexdigest
  	end
  	

	  private

	    def create_remember_token
	      self.remember_token = User.encrypt(User.new_remember_token)
	      # remember_token - в базе отдельное поле для юзера
	    end


end
