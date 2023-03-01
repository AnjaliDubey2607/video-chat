require 'opentok'

class VideoController < ApplicationController
  before_action :set_opentok_vars

  def set_opentok_vars
    @api_key = "47671421"
    @api_secret = "239c35564d367828681de0398afb3ac47430cbdb"
    @session_id = "1_MX40NzY3MTQyMX5-MTY3NzY2MjU0NjA1OH5Za1hJTkYyZmViay9LcGVaK3dNT2lYbGh-fn4"
    @moderator_name = ENV['MODERATOR_NAME']
    @name ||= params[:name]
    @token = Session.create_token(@name, @moderator_name, @session_id)
  end

  def landing; end

  def name
    @name = name_params[:name]
    if name_params[:password] == "123456"
      redirect_to party_url(name: @name)
    else
      redirect_to('/', flash: { error: 'Incorrect password' })
    end
  end

  def index; end

  def chat; end

  def screenshare
    @darkmode = 'dark'
  end

  private

  def name_params
    params.permit(:name, :password, :authenticity_token, :commit)
  end
end
