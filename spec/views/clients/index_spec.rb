require 'spec_helper'

describe 'clients/index.html.haml' do

  context 'always' do
    before do
      assign(:clients, [Factory(:client)])
      render
    end

    subject { rendered }

    it { should have_css("a[href='#{new_client_path}']") }
  end

  context 'when at least one client exists' do
    before do
      assign(:clients, [Factory(:client)])
      render
    end

    subject { rendered }

    it { should have_css('table.clients') }
    it {
      should_not include(t('label.no_records',
                           :model => t('activerecord.models.client')))
    }
  end

  context 'when no client exists' do
    before do
      assign(:clients, [])
      render
    end

    subject { rendered }

    it { should_not have_css('table.clients') }
    it {
      should include(t('label.no_records',
                       :model => t('activerecord.models.client')))
    }
  end

end

