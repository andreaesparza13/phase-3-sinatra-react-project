class User < ActiveRecord::Base
    has_many :arts
    has_many :comments
end