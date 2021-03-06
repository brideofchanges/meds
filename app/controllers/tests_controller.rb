class TestsController < ApplicationController
    def show
        @role = Role.find(current_user[:role_id])
        
        @tests = Test.all
        
        @list = Test.find_by_sql('select * from Tests, Users where Tests.user_id = Users.id')
     
     
        @list1 = Test.where(user_id: current_user.id)
        
        
        @list2 = @list1.each do |list|
            content_tag :div, :class => "well well-sm" do
                list.test_name link_to "Do It", user_test_path(id: list.id), class:"btn #{list.test_type} btn-float-r"
            end
        end
            
    end
end