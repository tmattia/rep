module FormSupport

  def field_name(model, field)
    model_name = model.kind_of?(ActiveRecord::Base) ?
                 model.class.name.underscore :
                 model
    I18n.t("activerecord.attributes.#{model_name}.#{field}")
  end

  def fill_text_fields_with(model, fields)
    fields.each do |field|
      value = model.send(field)
      fill_in field_name(model, field), :with => value unless value.nil?
    end
  end

  def select_collection(collection_name, model, field)
    value = model.send(field)
    select I18n.t("#{collection_name}_collection.#{value}"),
      :from => field_name(model, field) unless value.nil?
  end

  def search(query)
    within('#search') do
      fill_in 'q', :with => query
      submit
    end
  end

  def submit
    find('input[type=submit]').click
  end

end

World(FormSupport)
