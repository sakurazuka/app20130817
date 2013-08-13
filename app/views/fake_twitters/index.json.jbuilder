json.array!(@fake_twitters) do |fake_twitter|
  json.extract! fake_twitter, :tweet
  json.url fake_twitter_url(fake_twitter, format: :json)
end
