require 'spec_helper'

describe 'companies/index.html.haml' do

  context 'always' do
    before do
      assign(:companies, [Factory(:company)])
      render
    end

    subject { rendered }

    it { should have_css("a[href='#{new_company_path}']") }
  end

  context 'when at least one company exists' do
    before do
      assign(:companies, [Factory(:company)])
      render
    end

    subject { rendered }

    it { should have_css('table.companies') }
    it {
      should_not include(t('label.no_records',
                           :model => t('activerecord.models.company')))
    }
  end

  context 'when no company exists' do
    before do
      assign(:companies, [])
      render
    end

    subject { rendered }

    it { should_not have_css('table.companies') }
    it {
      should include(t('label.no_records',
                       :model => t('activerecord.models.company')))
    }
  end

end
