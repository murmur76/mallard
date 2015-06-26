class Account < ActiveRecord::Base
  validates :email, :password,  presence: true
end
