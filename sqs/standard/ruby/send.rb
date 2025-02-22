require 'aws-sdk-sqs'

client = Aws::SQS::Client.new

queue_url = "https://sqs.us-east-1.amazonaws.com/137068224350/sqs-standard-MyQueue-bL0TfxEMZDdZ"

resp = client.send_message({
  queue_url: queue_url,
  message_body: "Hello Ruby!",
  delay_seconds: 1,
  message_attributes: {
    "Fruit" => {
      string_value: "Apple",
      data_type: "String"
    }
  }
})