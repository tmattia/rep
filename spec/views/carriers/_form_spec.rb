require 'spec_helper'

describe 'carriers/_form.html.haml' do

  before do
    assign(:carrier, Factory(:carrier))
    render
  end

  subject { rendered }

  [:name].each do |field|
    it { should have_field(t("activerecord.attributes.carrier.#{field}")) }
  end

end
