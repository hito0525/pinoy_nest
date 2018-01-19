class TopicsController < ApplicationController
before_action :set_topic,only:[:edit,:update,:destroy]

  def index
    @topics = Topic.all
    @topics = Topic.order(:created_at).reverse_order
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    if @topic.save
    # Topic.create(topic_params)
    redirect_to topics_path,notice:"Successfully Posted your Topic💌"
    else
      render :new
    end
  end

  def edit
    # @topic = Topic.find(params[:id])
  end

  def update
    # @topic = Topic.find(params[:id])
    if @topic.update(topic_params)
    redirect_to topics_path,notice: "Successfully edited your Topic💌"
    else
      render :edit
    end
  end

  def destroy
    # @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to topics_path, notice: "Deleted your Topic"
  end

private
  def topic_params
    params.require(:topic).permit(:title,:content)
  end

  def set_topic
    @topic = Topic.find(params[:id])
  end

end
