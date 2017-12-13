ActionMailer::Base.smtp_settings = {
  address: 'smtp.sendgrid.net',
  port: '465',
  enable_starttls_auto: true,
  authentication: :plain,
  user_name: ENV['SENDGRID_USER_NAME'],
  password: ENV['SENDGRID_PASSWORD'],
  ssl:                   true,
  tls:                   true
}

# ActionMailer::Base.smtp_settings = {
#   address: 'mail-smtp.us-west-2.amazonaws.com',
#   port: '465',
#   enable_starttls_auto: true,
#   authentication: :login,
#   user_name: ENV['SES_USER_NAME'],
#   password: ENV['SES_PASSWORD']
# }


# ActionMailer::Base.smtp_settings = {
#   address: 'smtp.gmail.com',
#   port: '587',
#   enable_starttls_auto: true,
#   authentication: :plain,
#   user_name: ENV['EMAIL_USER_NAME'],
#   password: ENV['EMAIL_PASSWORD']
# }
