class User < ActiveRecord::Base
  VALID_EMAIL_FORMAT = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  has_many :book

  has_secure_password
  validates name, presence: true, length: { maximum: 70 }
  validates password, presence: true, length: { minium: 6 }
  validates email, presence: true, lenght: { maximum: 260 }, format: { with: VALID_EMAIL_FORMAT }, uniqueness: { case_sensitive: false }
  before_save { self.email = email.downcase }
end
