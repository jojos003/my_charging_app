class ApplicationController < ActionController::Base
  before_action :set_locale

  def set_locale
    locale = params[:locale] || I18n.default_locale

    I18n.locale = locale
  end
end
