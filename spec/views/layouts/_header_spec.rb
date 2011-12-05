require 'spec_helper'

describe 'layouts/_header.html.haml' do

  before do
    render
  end

  subject { rendered }

  it { should have_css("a[href='#{root_path}']") }
  it { should have_css("a[href='#{companies_path}']") }
  it { should have_css("a[href='#{clients_path}']") }
  it { should have_css("a[href='#{products_path}']") }
  it { should have_css("a[href='#{date_orders_path(today)}']") }

end
