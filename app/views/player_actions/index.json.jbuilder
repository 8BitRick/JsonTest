json.array!(@player_actions) do |player_action|
  json.extract! player_action, :id, :name, :position
  json.url player_action_url(player_action, format: :json)
end
