require 'spec_helper'

describe 'carriers/index.html.haml' do

  context 'always' do
    before do
      assign(:carriers, [Factory(:carrier)])
      render
    end

    subject { rendered }

    it { should have_css("a[href='#{new_carrier_path}']") }
  end

  context 'when at least one carrier exists' do
    before do
      assign(:carriers, [Factory(:carrier)])
      render
    end

    subject { rendered }

    it { should have_css('table.carriers') }
    it {
      should_not include(t('label.no_records',
                           :model => t('activerecord.models.carrier')))
    }
  end

  context 'when no carrier exists' do
    before do
      assign(:carriers, [])
      render
    end

    subject { rendered }

    it { should_not have_css('table.carriers') }
    it {
      should include(t('label.no_records',
                       :model => t('activerecord.models.carrier')))
    }
  end

end

