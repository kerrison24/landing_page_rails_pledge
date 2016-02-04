class StaticPagesController < ApplicationController
  def index
    @email = Email.new
  end
end
