json.array!(@posts) do |post|
  json.extract! post, :id, :titre, :corps
  json.url post_url(post, format: :json)
end
