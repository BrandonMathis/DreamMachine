class User
  include Mongoid::Document

  attr_accessor :password

  before_save :encrypt_password

  field :email, :type => String
  field :password_hash, :type => String
  field :password_salt, :type => String

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
end
