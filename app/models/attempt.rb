class Attempt < ActiveRecord::Base
    belongs_to :user
    has_many :questions
    has_many :answers, through: :questions
    belongs_to :do
    has_one :result
end