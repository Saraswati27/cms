class ReaderController < ApplicationController
   def new
    @user = User1.new 
   end
  
   def create
     @user = User1.new(params[:username])
     if @user.save
       flash[:notice] = "You signed up successfully"
       flash[:color]= "valid"

     else
       flash[:notice] = "Form is invalid"
       flash[:color]= "invalid"
     end
    render "new"
  end
  
end
