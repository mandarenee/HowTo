class HowToStepsController < ApplicationController
  before_action :set_how_to_step, only: [:show, :edit, :update, :destroy]

  def index
    @how_to_topic = HowToTopic.find(params[:how_to_topic_id])
    @how_to_steps = @how_to_topic.how_to_steps
  end

  def show
    @how_to_topic = HowToTopic.find(params[:how_to_topic_id])
    @how_to_steps = @how_to_topic.how_to_steps.find(params[:id])
  end

  def new
    @how_to_topic = HowToTopic.find(params[:how_to_topic_id])
    @how_to_step = @how_to_topic.how_to_steps.build
  end

  def edit
    @how_to_topic = HowToTopic.find(params[:how_to_topic_id])
    @how_to_steps = @how_to_topic.how_to_steps.find(params[:id])
  end

  def create
    @how_to_topic = HowToTopic.find(params[:how_to_topic_id])
    @how_to_step = @how_to_topic.how_to_steps.build(how_to_step_params)
    if @how_to_step.save
      redirect_to how_to_topic_path(@how_to_topic), notice: 'How to step was successfully created.'
    else
      render :new
    end
  end

  def update
    @how_to_topic = HowToTopic.find(params[:how_to_topic_id])
    @how_to_step = HowToStep.find(params[:id])
    if @how_to_step.update(how_to_step_params)
      redirect_to @how_to_topic, notice: 'How to step was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @how_to_topic = HowToTopic.find(params[:how_to_topic_id])
    @how_to_step = HowToStep.find(params[:id])
    @how_to_step.destroy
    redirect_to how_to_topic_path(@how_to_topic), notice: 'How to step was successfully deleted.'
  end

  private

  def set_how_to_step
    @how_to_step = HowToStep.find(params[:id])
  end

  def how_to_step_params
    params.require(:how_to_step).permit(:content)
  end
end
