require 'twitter'

client = Twitter::REST::Client.new do |conf|
  conf.consumer_key = ENV['TWITTER_CONSUMER_KEY']
  conf.consumer_secret = ENV['TWITTER_CONSUMER_SECRET']
end

# resoucesを外すと全部のリストが見られる
limit = Twitter::REST::Request.new(client, :get, "https://api.twitter.com/1.1/application/rate_limit_status.json", resources: "application").perform
puts limit[:resources]

