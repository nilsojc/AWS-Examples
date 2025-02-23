require 'bunny'
connection_string = "amqps://admin:nilsoemiro1A!@b-eb649fa0-dd31-4823-85c8-da2270a26515.mq.us-east-1.amazonaws.com:5671"
connection = Bunny.new(connection_string)
connection.start


channel = connection.create_channel
queue = channel.queue('hello')
exchange = channel.default_exchange


begin
    exchange.publish("Hello World!", routing_key: queue.name)
    channel.close
    connection.close
rescue => e
    puts e.inspect
    channel.close
    connection.close
    exit(0)
end