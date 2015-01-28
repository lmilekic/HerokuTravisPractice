json.array!(@practices) do |practice|
  json.extract! practice, :id, :game, :score
  json.url practice_url(practice, format: :json)
end
