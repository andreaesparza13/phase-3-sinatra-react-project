class Artist < ActiveRecord::Base
    has_many :arts
    has_many :exhibits, through: :arts

    def full_name
        "#{self.first_name} #{self.last_name}" 
    end

    def return_art
        self.arts.each{|art| art}
    end

end