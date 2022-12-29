class User < ApplicationRecord
    validates :username, :email_address uniqueness: true
    has_secure_password
    has_one_attached :avatar
    has_many :articles
    has_many :reviews
end
