class WelcomeController < ApplicationController
  def index
    flash[:warning] = "Hello notice"
  end
end
