module StatesCollectionHelper

  def states_collection
    I18n.t('states_collection').invert.to_a
  end

  def state_name state_abbr
    if state_abbr.blank?
      I18n.t("show_for.blank")
    else
      I18n.t("states_collection.#{state_abbr.upcase}")
    end
  end

end
