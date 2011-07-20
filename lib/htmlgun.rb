require 'mailgun'
require 'mail'

class HTMLgun

  def self.init(api_key, api_url = "https://mailgun.net/api/")
    Mailgun::init api_key, api_url
  end

  def self.send_html the_sender, the_recipient, the_subject,the_body
      mail = Mail.new do 
        from    the_sender
        to      the_recipient
        subject the_subject

        html_part do
          content_type "text/html; charset=UTF-8"
          body the_body
        end
      end

      MailgunMessage::send_raw( the_sender, the_recipient, mail.to_s )
  end


end
