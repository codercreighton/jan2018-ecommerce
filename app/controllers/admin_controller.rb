class AdminController < ApplicationController
  
  def all_users
  	if current_user.role != 'admin'
  		
  		redirect_to root_path, :notice => 'Admin credentials needed for Admin links.'
  		
  	else
  	
			@users = User.all
		end
  end


  def show_user
  	if current_user.role != 'admin'
  		
  		redirect_to root_path, :notice => 'Admin credentials needed for Admin links.'
  		
  	else
  	@user = User.find(params[:id])
  end
  end

 	def edit_user
 		if current_user.role != 'admin'
  		
  		redirect_to root_path, :notice => 'Admin credentials needed for Admin links.'
  		
  	else
 	
	  	@user = User.find(params[:id])
	  	@user.update(role: params[:role])
	  	redirect_back(fallback_location: root_path)
  	end
	end

  def delete_user
  	if current_user.role != 'admin'
  		
  		redirect_to root_path, :notice => 'Admin credentials needed for Admin links.'
  		
  	else
 
    @user = User.find(params[:id].to_i)
    @user.destroy
    redirect_to all_users_path
   end 
  end
end
