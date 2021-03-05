class Student < ApplicationRecord
    has_one :school 
    has_many :courses, through: :school
end
