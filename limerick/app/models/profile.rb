class Profile < ApplicationRecord
  has_many :users
  after_initialize :defaults, :if => :new_record?
  validates :profile, uniqueness: true
  validates :age_group, inclusion: { in: %w(under12 under17 all),
    message: "%{value} is not a valid age group" }
  validates :auth_level, inclusion: { in: %w(user moderator),
    message: "%{value} is not a valid authorization level" }

  def defaults
    self.age_group ||= 'under12'
    self.admin ||= 'false'
    self.auth_level ||= 'user'
  end
end
