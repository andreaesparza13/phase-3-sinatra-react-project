class Art < ActiveRecord::Base
    belongs_to :artist
    belongs_to :exhibit

    def self.alphabetize
        Art.order(:title)
    end
end