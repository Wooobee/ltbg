class Api::ChatmessagesController < ApplicationController
  skip_before_filter :verify_authenticity_token,
                     :if => Proc.new { |c| c.request.format == 'application/json' }

  # Just skip the authentication for now
  before_filter :authenticate_user!

  respond_to :json

  def index
    render :status => 200,
           :json => { :success => true,
                      :info => "All Chatmessages",
                      :data => { :Chatmessages =>  Chatmessage.all } }
  end

  def create
  	chatmessage = Chatmessage.new()
    chatmessage.user_id = current_user.id
    chatmessage.task_id = chatmessage_params[:task_id]
    chatmessage.message = chatmessage_params[:message]
    chatmessage.id = chatmessage_params[:id]

    if chatmessage.save
      render :status => 200,
           :json => { :success => true,
                      :info => "Message posted",
                      :data => { :event => chatmessage } }
    else
      render :status => :unprocessable_entity,
             :json => { :success => false,
                        :info => chatmessage.errors,
                        :data => {} }
    end
  end

  private
  # Only allow a trusted parameter "white list" through.
    def chatmessage_params
      params.require(:chatmessage).permit(:id, :task_id, :message)
    end
end