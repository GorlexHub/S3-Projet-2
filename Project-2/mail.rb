require 'mail'
require 'net/smtp'

options = { :address              => "smtp.gmail.com",
            :port                 => 587,
            :user_name            => 'paul.testthp@gmail.com'
            :password             => 'THPpassword'
            :authentication       => 'plain',
            :enable_starttls_auto => true  }



Mail.defaults do
  delivery_method :smtp, options
end

Mail.deliver do
       to 'alexandre.lovergne@gmail.com'
     from 'alexandre.lovergne@gmail.com'
  subject 'testing sendmail'
     body 'testing sendmail'
end