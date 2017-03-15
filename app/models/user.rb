class User < ApplicationRecord
  # Save the email in our db as all lowercase
  before_save { email.downcase! }

  validates :name, presence: true, length: { maximum: 50 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  # This method gives us:
  # - The ability to save a securely hashed password_digest attribute to the db
  # - A pair of virtual attributes (password & password_confirmation), presence validations, and
  #   a validation requiring that they match
  # - An authenticate method that returns the user when the password is correct
  # Corresponding model needs to have an attribute called password_digest
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
