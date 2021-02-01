class ScnController < ApplicationController
  layout "admin"
  
  def new
  	@s=Sec.new
  	
  end

  def edit
  end

  def index
    @topic=Topic1.find(params[:topic_id]) 
    @page1s =Page1.find(params[:id])
    @pg=Page1.find(params[:id])
    #topic_id = @topic.id
    @sc =@pg.secs
    #@sc = Sec.all
    # @users = User.find(0)
  end
  def show
    @pg=Page1.find(params[:id])
    @sc =@pg.secs
  	@topic=Topic1.find(params[:topic_id])	
	  @page1s =Page1.find(params[:id])
  end

  def delete
  end
end
