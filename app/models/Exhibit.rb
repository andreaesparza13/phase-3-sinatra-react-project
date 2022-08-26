class Exhibit < ActiveRecord::Base
    has_many :arts
    has_many :artists, through: :arts

    def grab_exhibit
        Art.where(exhibit_id: self.id)
    end

    def self.random_exhibit
        Exhibit.order('RANDOM()').first
    end

    def self.delete_first_exhibit
        first_exhibit = Exhibit.first
        first_exhibit.destroy
        Art.where(exhibit_id: first_exhibit.id).destroy_all
    end
end