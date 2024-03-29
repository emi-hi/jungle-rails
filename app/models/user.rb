# frozen_string_literal: true

class User < ActiveRecord::Base
  has_secure_password
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 3 }
  validates :password_confirmation, presence: true

  def self.authenticate_with_credentials(email, password)
    user = User.where('lower(email) = lower(?)', email.strip).first
    if user&.authenticate(password)
      return user
    else
      return nil
    end
  end
end
