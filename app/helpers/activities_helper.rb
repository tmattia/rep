module ActivitiesHelper

  def datetime_label datetime
    "<span class='date'>#{datetime.day}/#{datetime.month}</span>
     <span class='time'>#{datetime.hour}h#{datetime.min}</span>".html_safe
  end

  def activity_description activity
    link_to "
      <span class='text'>
        #{activity_name(activity)}
        #{activity_target_name(activity)}
        #{activity_action(activity)}
      </span>
      #{activity_details(activity)}
    ".html_safe, activity.target
  end

  protected
  def activity_name activity
    I18n.t("activerecord.models.#{activity.target_type.underscore.singularize}")
  end

  def activity_action activity
    I18n.t("label.activity.type.#{activity.activity_type}")
  end

  def activity_details activity
    case activity.target_type
    when 'Client'
      "<span class='city'>#{activity.target.city}</span>".html_safe
    when 'Order'
      "<span class='company'>#{activity.target.company.name} | </span>
       <span class='client'>#{activity.target.client.name}</span>".html_safe
    when 'Product'
      "<span class='company'>#{activity.target.company.name}</span>"
    else
      nil
    end
  end

  def activity_target_name activity
    case activity.target_type
    when 'Client'
      activity.target.name
    when 'Order'
      activity.target.id
    when 'Product'
      activity.target.code
    else
      nil
    end
  end

end
