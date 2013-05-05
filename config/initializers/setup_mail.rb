# To change this template, choose Tools | Templates
# and open the template in the editor.

ActionMailer::Base.smtp_settings = {
:address              => "smtp.gmail.com",
:port                 => 587,
:domain               => "gmail.com",
:user_name            => "gestortesis",
:password             => "Uniandes2013",
:authentication       => "plain",
:enable_starttls_auto => true
} 