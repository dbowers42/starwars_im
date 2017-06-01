module HomeHelper
  def status_class(user)
    user.online ? 'online' : 'offline'
  end

  def active_class(user)
    screen_name = cookies.signed[:screen_name]
    screen_name == user.screen_name ? 'card active' : 'card'
  end
end
