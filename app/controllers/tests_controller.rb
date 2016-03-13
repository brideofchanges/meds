class TestsController < ApplicationController
    def show
        @role = Role.find(current_user[:role_id])
        
        @tests = Test.all
        
        @list = Test.find_by_sql('select * from Tests, Users where Tests.user_id = Users.id')
     
     
        @list1 = Test.where(user_id: current_user.id)
        
            
    end
end