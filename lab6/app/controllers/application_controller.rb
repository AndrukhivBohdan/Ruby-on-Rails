class ApplicationController < ActionController::Base
    before_action :authenticate_user!
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

    # Після успішної реєстрації/логіну
  def after_sign_in_path_for(resource)
    landing_pages_path   # або назва шляху до твоєї landing_page
  end

  # Якщо хочеш окремо після sign up
  def after_sign_up_path_for(resource)
    landing_pages_path
  end
  # Changes to the importmap will invalidate the etag for HTML responses
  stale_when_importmap_changes
end
