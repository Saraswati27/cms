class PublicController < ApplicationController
  def index
  end

  def view
  	@page=Page1.where(:weblink =>params[:weblink],:visible=>true).first
     if @page.nil?
       redirect_to(action: 'index')
     else
     	 #display view using view.html
        redirect_to(action: 'view') 	

     end
  end
 end 
