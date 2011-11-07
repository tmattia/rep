module FormSupport
  def fill_text_fields_with(model, fields)
    fields.each do |field|
      value = model.send(field)
      fill_in I18n.t("simple_form.labels.#{field}"),
        :with => value unless value.nil?
    end
  end

  def select_collection(collection_name, model, field)
    value = model.send(field)
    select I18n.t("#{collection_name}_collection.#{value}"),
      :from => I18n.t("simple_form.labels.#{field}") unless value.nil?
  end

  def submit
    find('input[type=submit]').click
  end
end

World(FormSupport)
