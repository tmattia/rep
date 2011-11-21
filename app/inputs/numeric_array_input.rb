class NumericArrayInput < SimpleForm::Inputs::Base

  def input
    5.times.inject("") do |ret, i|
      field = attribute_name.to_s + (i > 0 ? "_#{i}" : "")
      ret << @builder.label(field, input_options[:separator] || '+') if i > 0
      ret << @builder.input_field(attribute_name, input_html_options.merge({
        :id => "#{model_names}_#{field}",
        :name => "#{model_names}[#{attribute_name}][]",
        :value => @builder.object[attribute_name][i],
        :as => 'numeric'
      }))
    end.html_safe
  end

  private
  def model_names
    model_names = lookup_model_names.join('_')
  end

end
