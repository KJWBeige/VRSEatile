class User < ActiveRecord::Base
  has_secure_password
  validates :email, presence: true, uniqueness: true

  validates :f_name, presence: true
  has_one :orders
end
