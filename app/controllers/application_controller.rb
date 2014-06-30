class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :infer_locale

  layout "landing"

  protected
  def infer_locale
    inferred_locale = http_accept_language.compatible_language_from(I18n.available_locales)
    I18n.locale = inferred_locale || I18n.default_locale
  end

end
