class CometChatService
  include HTTParty
  BASE_URI = 'https://api.cometchat.com/v1'

  def initialize(user)
    @user = user
  end

  def create_user
    body = {
      uid: user.id,
      name: user.name
    }
    response = HTTParty.post("#{BASE_URI}/users", headers: headers, body: body)
    response.dig('data', 'uid') == user.id.to_s
  end

  def fetch_users
    response = HTTParty.get("#{BASE_URI}/users", headers: headers)
    response.dig('data')
  end

  private

  attr_accessor :user

  def headers
    {
      apikey: ENV['COMETCHAT_API_KEY'],
      appid: ENV['COMETCHAT_APP_ID']
    }
  end
end
