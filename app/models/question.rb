class Question < ActiveRecord::Base
    belongs_to :test
    belongs_to :attempt
    belongs_to :result
    has_many :answers
end