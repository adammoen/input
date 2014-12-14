json.array!(@joinings) do |joining|
  json.extract! joining, :id, :joined_at, :reason, :user_id, :group_id, :created_at, :updated_at
  json.url joining_url(joining, format: :json)
end
