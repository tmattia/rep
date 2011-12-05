module ApplicationHelper

  include StatesCollectionHelper
  include DateNavigationHelper

  def is_path_to_current_controller path
    actual_path = Rep::Application::routes.recognize_path(path)
    actual_path[:controller] == controller.controller_name
  end

  def link_to_current(title, path)
    if is_path_to_current_controller(path)
      link_to title, path, :class => 'current'
    else
      link_to title, path
    end
  end

  def title(title)
    content_for(:title, title.to_s)
  end

end
