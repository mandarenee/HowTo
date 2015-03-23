json.array!(@how_to_steps) do |how_to_step|
  json.extract! how_to_step, :id, :content
  json.url how_to_step_url(how_to_step, format: :json)
end
