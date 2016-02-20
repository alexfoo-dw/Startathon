json.array!(@members) do |member|
  json.extract! member, :id, :user, :user_id, :score
  json.url member_url(member, format: :json)
end
