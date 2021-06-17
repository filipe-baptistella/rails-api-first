class Answer < ApplicationRecord
  belongs_to :formulary
  belongs_to :question
  belongs_to :visit

  validates :question_id, presences: true
  validates :formulary_id, presences: true
end
