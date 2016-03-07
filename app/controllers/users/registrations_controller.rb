class Users::RegistrationsController < Devise::RegistrationsController
    before_filter :select_role, only: :new    

    def create 
        super do |resource|
            if params[:role]
                resource.role_id = params[:role]
                resource.save
            else
                resource.save
            end
        end
    end

private
    def select_role
        unless params[:role] && (params[:role] == '1' || params[:role] == '2')
            flash[:notice] = "Выберите тарифный план из предложенных."
            redirect_to root_url
        end
    end
    
end