class Question < ActiveRecord::Base
    belongs_to :test
    belongs_to :attempt
    belongs_to :result, through: :attempt
    has_many :answers
end