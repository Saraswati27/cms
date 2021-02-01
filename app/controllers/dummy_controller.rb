class DummyController < ApplicationController
  #layout false
  layout "admin"
  
  def index
    @topic1s = Topic1.all
    # @users = User.find(0)
  end

  def show
    #id = 0
    @topic1s = Topic1.find(params[:id])
  end

  def new
    #Create an instance
    @topic1s = Topic1.new
  end

  def create
    @topic1s = Topic1.new(topic_params)
    #save
    if @topic1s.save
      flash[:notice]= "Topic created successfully!!!"
      redirect_to(action: 'index')
    else
      render('new')
    end
  end


  def edit
   @topic1s = Topic1.find(params[:id]) 
  end


  def update
   @topic1s = Topic1.find(params[:id])
    #save
    if @topic1s.update_attributes(topic_params)
      flash[:notice]= "Topic uodated successfully!!!"
      redirect_to(action: 'show', id: @topic1s.id)
    else
      render('edit')
    end 
  end

  def delete
   @topic1s = Topic1.find(params[:id]) 
  end

  def destroy
    topic=Topic1.find(params[:id])
    topic.destroy
    flash[:notice]= "Topic #{topic.name} deleted successfully!!!"
    redirect_to(action: 'index')
  end

    def helper status
      style = case status
        when "Green" then :true
        when "Red"   then :false
        end
      [status,style]
    end

private

def topic_params
  params.require(:topic1s).permit(:name,:position,:visible)
end


end
