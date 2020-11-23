class User < ApplicationRecord
    has_many :lists, dependent: :destroy
    has_many :tasks, :through => :lists
    has_secure_password
end
