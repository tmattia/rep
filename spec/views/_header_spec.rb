require 'spec_helper'

describe 'layouts/_header.html.haml' do

  before do
    render
  end

  subject { rendered }

  it { should have_css("a[href='#{companies_path}']") }

end
