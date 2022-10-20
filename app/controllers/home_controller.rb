class HomeController < ApplicationController
  def index
    render 'index', locals: { name: name }
  end

  private

  def name
    params[:name] || 'John Doe'
  end
end
