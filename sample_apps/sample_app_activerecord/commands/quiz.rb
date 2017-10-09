class Quiz < SlackRubyBot::Commands::Base
  command 'quiz'

  #currently displays all messsages with proper formatting for love of job survey
  #next steps: get user response and save user quiz results

  def self.call(client, data, match)
    #welcome message
    client.web_client.chat_postMessage(
    channel: data['channel'],
    as_user: true,
    attachments: [
      {
        fallback: "Required plain-text summary of the attachment.",
        color: "#6575b9",
        title: "ScoutFor Love of Job quiz",
        text: "How much do you love your job compared to others? Let's find out! Please consider only the your current work experiences when responding to these statements. Your individual responses will never be shared with any other organization or entity.",
        mrkdwn_in: ["text"],
        image_url: "https://s3-us-west-2.amazonaws.com/scoutfor-assets/ilovemyjob_1.gif",
        footer: "Estimated finish time: Less then 2 minutes",
        actions: [
          {
            name: "LOJ",
            text: "Start",
            type: "button",
            style: "primary",
            value: 1
          },
          {
            name: "LOJ",
            text: "Later",
            type: "button",
            style: "default",
            value: 2
          }
        ]
      }
    ].to_json)

    loj_questions = ["*My work is more than a job to me, it is a passion.*", "*I am excited to do my job every day.*", "*I adore what I do at work.*", "*I love the organization for which I work.*", "*I really feel as if this organization's problems are my own.*", "*This organization has a great deal of personal meaning for me.*", "*I love the people I work with*", "*I feel very close with the people I work with*", "*We can confide in each other at work.*"]
    loj_questions.each_with_index do |loj_question, index|
      client.web_client.chat_postMessage(
      channel: data['channel'],
      as_user: true,
      attachments: [
        {
          fallback: "Required plain-text summary of the attachment.",
          color: "#6575b9",
          text: loj_question,
          mrkdwn_in: ["text"],
          image_url: "http://my-website.com/path/to/image.jpg",
          footer: "#{index} of 12 answered",
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
    client.web_client.chat_postMessage(
    channel: data['channel'],
    as_user: true,
    attachments: [
      {
        fallback: "Required plain-text summary of the attachment.",
        color: "#6575b9",
        text:"Thank you!",
        mrkdwn_in: ["text"],
        image_url:"https://s3-us-west-2.amazonaws.com/scoutfor-assets/Fireworks.gif",
      }
    ].to_json)
  end
end
