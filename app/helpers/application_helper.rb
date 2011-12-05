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

  def no_records_found(model=nil)
    model ||= controller.controller_name.singularize
    t 'label.no_records', :model => t("activerecord.models.#{model}")
  end

  def no_records_found_for_date(model=nil, date=nil)
    model ||= controller.controller_name.singularize
    date ||= @date
    if date
      t 'label.no_records_found_for_date',
        :model => t("activerecord.models.#{model}"),
        :date => l(date)
    else
      no_records_found model
    end
  end

end
