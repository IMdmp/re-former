class User < ApplicationRecord
  validates :username, length: { in:4..12 } 
  validates :password, presence:true
  validates :email, presence:true
end
