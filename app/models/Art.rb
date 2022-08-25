class Art < ActiveRecord::Base
    belongs_to :artist
    belongs_to :exhibit

    def self.alphabetize
        self.all.sort{ |a| a.title.downcase }
    end

end