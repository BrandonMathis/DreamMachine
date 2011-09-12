class User
  include Mongoid::Document

  attr_accessible :name, :password, :password_confirmation

  attr_accessor :password

  before_save :encrypt_password
  before_save :downcase_name

  field :name, :type => String
  field :password_hash, :type => String
  field :password_salt, :type => String

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create

  def self.authenticate(name, password)
    user = find_by_name(name)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end

  def self.find_by_name(name)
    first(:conditions => {:name => name.downcase})
  end

  private

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

  def downcase_name
    name.downcase! if name
  end
end
