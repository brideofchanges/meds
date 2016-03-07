class PagesController < ApplicationController
    def home
        @student_role = Role.find(1)
        @teacher_role = Role.find(2)
    end
end
