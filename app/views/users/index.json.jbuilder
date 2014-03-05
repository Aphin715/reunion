json.array!(@users) do |user|
  json.extract! user, :id, :status, :location, :email, :personal_website, :buisness_website, :birthday, :spouse_or_partner, :children, :employer, :facebook, :bio, :photo
  json.url user_url(user, format: :json)
end
