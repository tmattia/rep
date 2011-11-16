require 'spec_helper'

describe 'layouts/_breadcrumbs.html.haml' do

  context 'when there are breadcrumb items' do
    before do
      breadcrumbs = stub!('Breadcrumbs')
      breadcrumbs.stub_chain('items.empty?').and_return(false)
      breadcrumbs.should_receive('render')
      render 'layouts/breadcrumbs', :breadcrumbs => breadcrumbs
    end

    subject { rendered }

    it { should have_css('#breadcrumbs') }
  end

  context 'when there are no breadcrumb items' do
    before do
      breadcrumbs = stub!('Breadcrumbs')
      breadcrumbs.stub_chain('items.empty?').and_return(true)
      breadcrumbs.should_not_receive('render')
      render 'layouts/breadcrumbs', :breadcrumbs => breadcrumbs
    end

    subject { rendered }

    it { should_not have_css('#breadcrumbs') }
  end

end
