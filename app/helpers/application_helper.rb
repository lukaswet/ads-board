module ApplicationHelper
  def gravatar_url(email)
    gravatar_id = Digest::MD5::hexdigest(email).downcase
    "https://www.gravatar.com/avatar/#{gravatar_id}.jpg?d=identical&s=150"
  end
end
