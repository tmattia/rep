# encoding: UTF-8

module ProductsSupport
  def fill_and_submit_product_form_with(product)
    within 'form.product' do
      select @company.name, :for => I18n.t('simple_form.labels.company')
      fill_text_fields_with(product, [:code])
      submit
    end
  end
end

World(ProductsSupport)

