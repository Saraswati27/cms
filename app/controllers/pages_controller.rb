class PagesController < ApplicationController
	layout "admin"

	#before_action :confirm_logged_in
	#before_action :find_topic
     #@topic=Topic1.find(params[:topic_id])

	def index
		@topic=Topic1.find(params[:topic_id])
		topic_id = @topic.id
		@page =@topic.page1s

	end
	
	def show
	 @topic=Topic1.find(params[:topic_id])	
	 @page1s =Page1.find(params[:id])
	end
	


	def new 
	 @topic=Topic1.find(params[:topic_id])
	 @page1s=Page1.new
     #@page1s =Page1.new(:topic1_id => @topic.id, :name => "default")
	 #@page.topic1_id = topic_id, 
	 #@page.name = "default"
	 @topics=Topic1.order('position ASC')
	 @page_count = Page1.count+1

	end
	
	def create
		
	  @topic =Topic1.find(params[:topic_id])

	  @page1s=Page1.new(page_params)

	  @page1s.topic1_id = @topic.id,

	  if @page1s.save
	      flash[:notice] = "Page created successfully"
	      redirect_to(action: 'index', topic_id:  @topic.id)
	   else
	      @topics =Topic1.order('position ASC')
	      @page_count= Page1.count + 1
	      render('new')
	   end
	end

	 def edit
	 	@topic=Topic1.find(params[:topic_id])
	 	@page1s = Page1.find(params[:id])
	 	@topics =Topic1.order('position ASC')
	 	@page_count =Page1.count
	 end

	 def update 
	   @topic=Topic1.find(params[:topic_id])
	   @page1s = Page1.find(params[:id])
	   id = @page1s.id
	  if @page1s.update_attributes(page_params)
	      flash[:notice] = "Page updated successfully"
	      redirect_to(action: 'show', topic_id: @topic.id, id: @page1s.id )
	   else
	      @topics =Topic1.order('position ASC')
	      @page_count= Page1.count
	      render('edit')
	   end
	 end

	 def delete
	 	@topic=Topic1.find(params[:topic_id])
	 	@page = Page1.find(params[:id])
	 end	

     def destroy
    	pg=Page1.find(params[:id])
    	pg.destroy
    	flash[:notice]= "Page #{pg.name} deleted successfully!!!"
    	redirect_to(action: 'show', id:  @page.id, topic_id: @topic.id)
     end


private

  def page_params
    params.require(:page1s).permit(:name, :weblink, :position, :visible)
  end
	 	



end
