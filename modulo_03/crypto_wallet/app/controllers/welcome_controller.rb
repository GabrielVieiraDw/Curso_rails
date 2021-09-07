class WelcomeController < ApplicationController
  def index
    cookies[:curso] = "Gabriel Ruby on Rails course"
    @meu_nome = params[:nome]
    @curso = params[:curso]
  end
end
