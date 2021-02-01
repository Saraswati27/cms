class SecController < ApplicationController
  def new
  	@s=Sec.new
  	
  end

  def edit
  end

  def index
    @sc = Sec.all
    # @users = User.find(0)
  end
  def show
  	@topic=Topic1.find(params[:topic_id])	
	 @page1s =Page1.find(params[:id])
  end

  def delete
  end
end
