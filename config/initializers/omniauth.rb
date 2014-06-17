OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '506537142787997', '865dccb165d454810738fa14a63c20db',
  :scope => 'email, friends_photos, user_photos, offline_access, user_birthday, user_friends, read_friendlists, friends_birthday'
end