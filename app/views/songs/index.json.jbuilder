json.array!(@songs) do |song|
  json.extract! song, :id, :title, :author, :duration
  json.url song_url(song, format: :json)
end
