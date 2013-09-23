if Rails.env.development?
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    :address        => 'smtp.sendgrid.net',
    :port           => '587',
    :authentication => :plain,
    :user_name      =>  ENV['app17686896@heroku.com'],
    :password       =>  ENV['uscqevkb'],

    :domain         => 'heroku.com',
    :enable_starttls_auto => true
  }
end