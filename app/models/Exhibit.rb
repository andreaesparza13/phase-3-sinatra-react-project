class Exhibit < ActiveRecord::Base
    has_many :arts
    has_many :artists, through: :arts
end