class Instrument < ApplicationRecord
  has_many :evaluator_instruments

  validates :question_one, presence: true
  validates :question_two, presence: true
  validates :question_tree, presence: true
  validates :question_four, presence: true
  validates :question_five, presence: true
  validates :title, presence: true
end
