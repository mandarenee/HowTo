class HowToTopicsController < ApplicationController
  before_action :set_how_to_topic, only: [:show, :edit, :update, :destroy]

  def index
    @how_to_topics = HowToTopic.all
  end

  def show
  end

  def new
    @how_to_topic = HowToTopic.new
  end

  def edit
  end

  def create
    @how_to_topic = HowToTopic.new(how_to_topic_params)

    if @how_to_topic.save
      redirect_to @how_to_topic, notice: 'How to topic was successfully created.'
    else
      render :new
    end
  end

  def update
    if @how_to_topic.update(how_to_topic_params)
      redirect_to @how_to_topic, notice: 'How to topic was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @how_to_topic.destroy
    redirect_to how_to_topics_url, notice: 'How to topic was successfully destroyed.'
  end

  private

  def set_how_to_topic
    @how_to_topic = HowToTopic.find(params[:id])
  end

  def how_to_topic_params
    params.require(:how_to_topic).permit(:title, :description)
  end
end
