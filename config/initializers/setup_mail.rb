ActionMailer::Base.smtp_settings = {
  address: 'mail-smtp.us-west-2.amazonaws.com',
  port: '465',
  enable_starttls_auto: true,
  authentication: :plain,
  user_name: ENV['SES_USER_NAME'],
  password: ENV['SES_PASSWORD']
}

#
# ActionMailer::Base.smtp_settings = {
#   address: 'smtp.gmail.com',
#   port: '587',
#   enable_starttls_auto: true,
#   authentication: :plain,
#   user_name: ENV['EMAIL_USER_NAME'],
#   password: ENV['EMAIL_PASSWORD']
# }
