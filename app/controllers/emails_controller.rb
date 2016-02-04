class EmailsController < ApplicationController
  def new
    @email = Email.new
  end

  def create
    @email = Email.create(email_params)
    if @email.save
      redirect_to root_url, notice: "Thanks for signing up!"
    else
      redirect_to root_url, notice: "Email has already been submitted"
    end
  end

  private
    def email_params
      params.require(:email).permit(:first_name, :email)
    end
end
