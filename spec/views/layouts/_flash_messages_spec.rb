require 'spec_helper'

describe 'layouts/_flash_messages.html.haml' do
  let(:alert_message)  { 'alert message' }
  let(:notice_message) { 'notice message' }

  context 'when an alert message exists' do
    before do
      flash[:alert] = alert_message
    end

    it { should include(alert_message) }
    it { should_not include(notice_message) }
  end

  context 'when a notice message exists' do
    before do
      flash[:notice] = notice_message
    end

    it { should include(notice_message) }
    it { should_not include(alert_message) }
  end

end

