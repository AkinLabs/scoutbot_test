class Home < SlackRubyBot::Commands::Base
  command 'home'

  #send users scoutfor.io
  
  def self.call(client, data, match)
    client.say(channel: data.channel, text: 'www.scoutfor.io')
  end
end
