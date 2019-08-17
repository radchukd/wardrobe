module ApparelsHelper
  def apparel_author(apparel)
    user_signed_in? && current_user.id == apparel.user_id
  end
end
