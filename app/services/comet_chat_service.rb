# frozen_string_literal: true

class CometChatService
  include HTTParty
  BASE_URI = 'https://api.cometchat.com/v1'

  def initialize(user)
    @user = user
  end

  def request_uid
    headers = {
      apikey: ENV['COMETCHAT_API_KEY'],
      appid: ENV['COMETCHAT_APP_ID']
    }
    body = {
      uid: user.id,
      name: user.name
    }
    response = HTTParty.post("#{BASE_URI}/users", headers: headers, body: body)
    response.dig('data', 'uid') == user.id.to_s
  end

  private

  attr_accessor :user
end
