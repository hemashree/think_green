class ContactUsController < ApplicationController

  def create
  	contact_us_params
  	UserMailer.contact_email(@name,@email,@subject,@message,@to_email).deliver_now
  	flash[:notice]= "Message sent successfully"
  	redirect_to root_url
  end

  def contact_us_params
  	@name = params[:contact][:name]
  	@email = params[:contact][:email]
  	@subject = params[:contact][:subject]
  	@message = params[:contact][:message]
   	@to_email=  "hshri@qwinixtech.com" #ConfigCenter::Default::CONTACT_EMAIL
  end

end
