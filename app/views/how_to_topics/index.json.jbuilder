json.array!(@how_to_topics) do |how_to_topic|
  json.extract! how_to_topic, :id, :title, :description
  json.url how_to_topic_url(how_to_topic, format: :json)
end
