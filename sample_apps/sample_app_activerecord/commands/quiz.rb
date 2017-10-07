class Quiz < SlackRubyBot::Commands::Base
  command 'quiz'

  def self.call(client, data, match)
  #   client.say(channel: data.channel, text: 'called')
  # end

client.web_client.chat_postMessage(
    channel: data['channel'],
    # text: 'Hello World',
    as_user: true,
    attachments: [
          {
          fallback: "Required plain-text summary of the attachment.",
          color: "#6575b9",
          # pretext: "Optional text that appears above the attachment block",
          # author_name: "Bobby Tables",
          # author_link: "http://flickr.com/bobby/",
          # author_icon: "https://s3-us-west-2.amazonaws.com/scoutfor-assets/Scout_avatar_bliss.png",
          # title: "Slack API Documentation",
          # title_link: "https://api.slack.com/",
          text: "*My work is more than a job to me, it is a passion.*",
          mrkdwn_in: ["text"],
          image_url: "http://my-website.com/path/to/image.jpg",
          # icon_url: "https://s3-us-west-2.amazonaws.com/scoutfor-assets/Scout_avatar_bliss.png",
          footer: "0 of 12 answered",
          # footer_icon: "https://platform.slack-edge.com/img/default_application_icon.png",
          # ts: 123456789,
          actions: [
                {
                    name: "LOJ",
                    text: "strongly disagree",
                    type: "button",
                    value: 1
                },
                {
                    name: "LOJ",
                    text: "disagree",
                    type: "button",
                    value: 2
                },
                {
                    name: "LOJ",
                    text: "neutral",
                    type: "button",
                    value: 3,
                },
                {
                    name: "LOJ",
                    text: "agree",
                    type: "button",
                    value: 4,
                },
                {
                    name: "LOJ",
                    text: "strongly agree",
                    type: "button",
                    value: 5,
                }
            ]



          }
      ].to_json)
end
end
