Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
    provider :github, "e0b703266a99c89c6ec4", "2e18aacb2e0c8d162ef9c3f5b3b4c5a255120290"
  else
    provider :github,
             Rails.application.credentials.github[:client_id],
             Rails.application.credentials.github[:client_secret]
  end
end
