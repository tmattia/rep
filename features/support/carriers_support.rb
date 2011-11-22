# encoding: UTF-8

module CarriersSupport
  def fill_and_submit_carrier_form_with(carrier)
    within 'form.carrier' do
      fill_text_fields_with(carrier, [:name])
      submit
    end
  end
end

World(CarriersSupport)
