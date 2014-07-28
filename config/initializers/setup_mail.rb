ActionMailer::Base.smtp_settings = {  
  :address              => "smtp.gmail.com",  
  :port                 => 587,  
  :domain               => "gmail.com",  
  :user_name            => "sysdeingsender",  
  :password             => "marin0319",  
  :authentication       => :login,  
  :enable_starttls_auto => true  
}