class Api::LiveStatsController < ApplicationController
  skip_before_filter :verify_authenticity_token,
                     :if => Proc.new { |c| c.request.format == 'application/json' }

  # Just skip the authentication for now
  before_filter :authenticate_user!


  def index

  	myObject = Object.new

  	#live_stats = User.includes(:timeline).all.map { |u| u.timeline.last }
  	


  	#Task.all.each do |t|
  	#	myObject.instance_variable_set("@#{t.name}", live_stats) 
  	#end

  	sql = "Select * from user"
	records_array = ActiveRecord::Base.connection.execute(sql)

  	render :status => 200,
        :json => { :success => true,
                  :info => "What the hell are you doing",
                  :data => { :live =>  records_array } }
  end

end