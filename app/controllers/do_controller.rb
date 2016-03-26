class DoController < ApplicationController
    def show
        @list1 = Test.where(id: params[:test_id])
        @list2 = Question.where(test_id: @list1.all)
        @list3 = Answer.where(question_id: @list2.all)
    end
end
