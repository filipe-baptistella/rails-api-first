class Formulary < ApplicationRecord
    has_many :questions

    validates :name, presence: true, uniqueness: {case_sensitive: false}
end
