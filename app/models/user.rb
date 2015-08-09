class User < ActiveRecord::Base
  has_secure_password

  validates :firstname, :lastname, :email, presence: true

  has_many :budgets

  def self.authenticate(email, password)
    user = find_by_email(email.downcase)

    user && user.authenticate(password) ?
      user :
      false
  end
end
