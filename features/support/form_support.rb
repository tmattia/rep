module FormSupport
  def fill_text_fields_with(model, fields)
    fields.each do |field|
      value = model.send(field)
      fill_in I18n.t("simple_form.labels.#{field}"),
        :with => value unless value.nil?
    end
  end

  def submit
    find('input[type=submit]').click
  end
end

World(FormSupport)
