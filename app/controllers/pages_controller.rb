class PagesController < ApplicationController
    def home
        @student_role = Role.find(1)
    end
end
