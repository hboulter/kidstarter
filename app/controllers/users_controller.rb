class UsersController < ApplicationController
  
  def index
    @users = User.all
  end
  
  def show
    @user = find_user
    @user_donations = Donation.all.select{|d| d.user_id == @user.id}
    @username = @user.username
    
  end

  def new
    @user = User.new
  end 

  def create   
    @user = User.new(user_params)
      if @user.valid?
         @user.save
         redirect_to children_path
      else
        render :new
      end 
  end 

  private

  def user_params
    params.require(:user).permit(:password, :username, :email)
  end 

  private

  def find_user
    User.find(params[:id])
  end 


 
end




  