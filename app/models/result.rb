class Result < ActiveRecord::Base
    belongs_to :user
    belongs_to :attempt
    has_many :questions, through: :attempt
    has_many :answers, through: :questions
    
end