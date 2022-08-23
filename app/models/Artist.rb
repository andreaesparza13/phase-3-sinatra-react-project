class Artist < ActiveRecord::Base
    has_many :arts
    has_many :exhibits, through: :arts
end