class UserMailer < ApplicationMailer

  def contact_email(name,email,subject,message,to_email)
   	@name = name
   	@from_email = email
   	@subject = subject
   	@message = message
   	@to_email = "hshri@qwinixtech.com"
   	@body = "#{@name} send a subject '#{@subject}' with the message'#{@message}'"

    mail(from: @from_email,
    	 to: @to_email,
    	 body: @body)
  end

end
