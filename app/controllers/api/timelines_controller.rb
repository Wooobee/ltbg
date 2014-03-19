# file: app/controllers/api/tasks_controller.rb
class Api::TimelinesController < ApplicationController
  skip_before_filter :verify_authenticity_token,
                     :if => Proc.new { |c| c.request.format == 'application/json' }

  # Just skip the authentication for now
  before_filter :authenticate_user!

  respond_to :json

  def index
    render :status => 200,
           :json => { :success => true,
                      :info => "The user timeline",
                      :data => { :tasks =>  current_user.timeline.all } }
  end


  def create
    timeline = Timeline.new()
    timeline.user_id = current_user.id
    timeline.task_id = timeline_params[:task_id]
    timeline.custom_text = timeline_params[:custom_text]
    timeline.id = timeline_params[:id]
    

    if timeline.save
      render :status => 200,
           :json => { :success => true,
                      :info => "Timeline event added",
                      :data => { :event => timeline } }
    else
      render :status => :unprocessable_entity,
             :json => { :success => false,
                        :info => timeline.errors,
                        :data => {} }
    end
  end

  def update
    timeline = Timeline.find(timeline_params[:id])
    timeline.created_at = timeline_params[:created_at]

    if timeline.save
      render :status => 200,
           :json => { :success => true,
                      :info => "Timeline event updated",
                      :data => { :event => timeline } }
    else
      render :status => :unprocessable_entity,
             :json => { :success => false,
                        :info => timeline.errors,
                        :data => {} }
    end
  end

  def destroy
    timeline = Timeline.find(timeline_params[:id])
    if timeline.destroy
      render :status => 200,
           :json => { :success => true,
                      :info => "Timeline event deleted"}
    else
      render :status => :unprocessable_entity,
             :json => { :success => false,
                        :info => timeline.errors,
                        :data => {} }
    end
  end

  private
  # Only allow a trusted parameter "white list" through.
    def timeline_params
      params.require(:timeline).permit(:id, :user_id, :task_id, :custom_text, :created_at)
    end
end