class TopicsController < ApplicationController
  def index
    @topics =  Topic.all
  end

  def new
    @topic = Topic.new
  end

  def create
    Topic.create(topic_params)
    redirect_to topics_path,notice:"Successfully Posted your Topic"
  end

  def edit
    @topic = Topic.find(params[:id])
  end

  def update
    @topic = Topic.find(params[:id])
    @topic.update(topic_params)
    redirect_to topics_path,notice: "Successfully edited your Topic💌"
  end

  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to topics_path, notice: "Deleted your Topic"
  end



private
  def topic_params
    params.require(:topic).permit(:title,:content)
  end

end
