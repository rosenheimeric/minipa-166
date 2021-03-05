class Course < ApplicationRecord
    has_one :school 
    has_many :students, through: :school
end
