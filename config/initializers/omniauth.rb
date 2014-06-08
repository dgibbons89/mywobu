OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '506537142787997', '865dccb165d454810738fa14a63c20db',
  :scope => 'email, offline_access, user_birthday, user_friends, read_friendlists, friends_birthday' {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end