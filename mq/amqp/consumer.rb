require 'bunny'


connection_string = "amqps://admin:nilsoemiro1A!@b-eb649fa0-dd31-4823-85c8-da2270a26515.mq.us-east-1.amazonaws.com:5671"
connection = Bunny.new(connection_string)
connection.start

channel = connection.create_channel
queue = channel.queue('hello')
begin
  queue.subscribe(block: true) do |_delivery_info, _properties, body|
    puts body
  end
rescue => e
    puts e.inspect
    channel.close
    connection.close
    exit(0)
end