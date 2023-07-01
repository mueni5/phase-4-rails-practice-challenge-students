class Student < ApplicationRecord
    belongs_to :instructor

    validates :name, presence: true
    validates :major, presence: true
    validates :age, presence: true, numericality: { greater_than_or_equal_to: 18 }

    validate :age_validation

    def age_validation
        if age.nil?
            errors.add(:age, "must be present" )
        end
    end

end 
