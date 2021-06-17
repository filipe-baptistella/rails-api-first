class Questions < ApplicationRecord
  belongs_to :formulary
  has_many :answers
  has_one_attached :type

  validates :name, presence: true, uniqueness: {case_sensitive: false}
end
