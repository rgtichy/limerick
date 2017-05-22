class User < ApplicationRecord
  belongs_to :profile
  has_secure_password
  has_one :profile
  after_initialize :defaults, :if => :new_record?
  #has_many :songs, through: :playlist
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

  validates :email, presence: true
  validates :email, format: { with: EMAIL_REGEX }
  validates :email, uniqueness: true
  validates :password, length: {in: 8..32}
  validates :password, presence: true
  

  before_save :email_lowercase
  def email_lowercase
    self.email.downcase!
  end

  def defaults
    self.profile ||= Profile.where("profile = ?", "users").take(1)[0]
  end

end
