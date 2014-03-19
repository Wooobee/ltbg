class ChatmessagesController < ApplicationController
  before_action :set_chatmessage, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /chatmessages
  def index
    @chatmessages = Chatmessage.all
  end

  # GET /chatmessages/1
  def show
  end

  # GET /chatmessages/new
  def new
    @chatmessage = Chatmessage.new
  end

  # GET /chatmessages/1/edit
  def edit
  end

  # POST /chatmessages
  def create
    @chatmessage = Chatmessage.new()
    @chatmessage.user_id = current_user.id
    @chatmessage.task_id = chatmessage_params[:task_id]
    @chatmessage.message = chatmessage_params[:message]

    if @chatmessage.save
      redirect_to @chatmessage, notice: 'Chatmessage was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /chatmessages/1
  def update
    if @chatmessage.update(chatmessage_params)
      redirect_to @chatmessage, notice: 'Chatmessage was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /chatmessages/1
  def destroy
    @chatmessage.destroy
    redirect_to chatmessages_url, notice: 'Chatmessage was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chatmessage
      @chatmessage = Chatmessage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def chatmessage_params
      params.require(:chatmessage).permit(:user_id, :task_id, :message)
    end
end
