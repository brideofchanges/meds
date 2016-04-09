class DoController < ApplicationController
    before_filter :i_default, :only => [:show]
    
    def show
        #@attempt = Attempt.create(user_id: params[:user_id], test_id: params[:test_id]) # creating attempt
        i_default
        @cur_test = Test.where(id: params[:test_id])
        @cur_q_all = Question.where(test_id: @cur_test)
        
        @cur_q = @cur_q_all[@i] 
            
        @cur_ans_all = Answer.where(question_id: @cur_q)
        
    end
    
    def list_update
        @i=0
        @i = params[:current_i].try(:to_i)
        @i = @i+1
        @cur_test = Test.where(id: params[:test_id])
        @cur_q_all = Question.where(test_id: @cur_test)
        @cur_q = @cur_q_all[@i] 
            
        @cur_ans_all = Answer.where(question_id: @cur_q)
          respond_to do |format|
              format.html {}
              format.js {}
          end
    end
end

private
    def i_default
        @i = 0
    end