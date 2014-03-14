# file: app/controllers/api/tasks_controller.rb
class Api::TasksController < ApplicationController
  skip_before_filter :verify_authenticity_token,
                     :if => Proc.new { |c| c.request.format == 'application/json' }

  # Just skip the authentication for now
  before_filter :authenticate_user!

  respond_to :json

  def index
    render :status => 200,
           :json => { :success => true,
                      :info => "All tasks",
                      :data => { :tasks => Task.all } }
  end
end