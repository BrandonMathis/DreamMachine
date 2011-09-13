class User
  include Mongoid::Document
  authenticates_with_sorcery!

  attr_accessible :username, :password, :password_confirmation

  before_save :downcase_name

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :username
  validates_uniqueness_of :username

  private

  def downcase_name
    username.downcase! if username
  end
end
