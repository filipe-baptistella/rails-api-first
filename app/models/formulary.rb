class Formulary < ApplicationRecord
    has_many :questions
    has_many :answers
    
    validates :name, presence: true, uniqueness: {case_sensitive: false}
end
