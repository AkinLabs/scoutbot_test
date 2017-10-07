class Whoami < SlackRubyBot::Commands::Base
  command 'hi'
  def self.call(client, data, _match)
    # client.say(channel: data.channel, text: "<@#{data.user}>")
    client.say(channel: data.channel, text: 'Hello World')

    # logger.info "UNAME: #{client.owner}, user=#{data.user}"

    # c.chat_postMessage(
    #   channel: data['channel'],
    #   text: 'Hello World',
    #   as_user: true,
    #   attachments: [
    #         {
    #             fallback: "New ticket from Andrea Lee - Ticket #1943: Can't rest my password - https://groove.hq/path/to/ticket/1943",
    #             pretext: "New ticket from Andrea Lee",
    #             title: "Ticket #1943: Can't reset my password",
    #             title_link: "https://groove.hq/path/to/ticket/1943",
    #             text: "Help! I tried to reset my password but nothing happened!",
    #             color: "#7CD197"
    #         }
    #     ].to_json)
  end
end

# client.chat_postMessage(
#   channel: ...,
#   text: 'Hello World',
#   as_user: true,
#   attachments: [
#         {
#             fallback: "New ticket from Andrea Lee - Ticket #1943: Can't rest my password - https://groove.hq/path/to/ticket/1943",
#             pretext: "New ticket from Andrea Lee",
#             title: "Ticket #1943: Can't reset my password",
#             title_link: "https://groove.hq/path/to/ticket/1943",
#             text: "Help! I tried to reset my password but nothing happened!",
#             color: "#7CD197"
#         }
#     ].to_json
