class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  [:first_name, :last_name].each do |column|
    validates column, presence: true, length: { maximum: 30 }
  end
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    uniqueness: { case_sensitive: false },
                    format: { with: VALID_EMAIL_REGEX }
end
