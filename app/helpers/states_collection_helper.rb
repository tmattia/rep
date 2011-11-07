module StatesCollectionHelper

  def states_collection
    I18n.t('states_collection').invert.to_a
  end

  def state_name state_abbr
    I18n.t("states_collection.#{state_abbr.upcase}") unless state_abbr.blank?
  end

end
