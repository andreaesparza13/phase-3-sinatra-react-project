class Exhibit < ActiveRecord::Base
    has_many :arts
    has_many :artists, through: :arts

    def grab_exhibit
        Art.where(exhibit_id: self.id)
    end
end