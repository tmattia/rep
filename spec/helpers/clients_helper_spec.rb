require 'spec_helper'

describe ClientsHelper do

  describe 'link_to_client' do
    context 'a client without a city' do
      before do
        @client = Factory(:client)
      end

      subject { link_to_client(@client) }

      it { should include(@client.name) }
    end

    context 'a client with a city' do
      before do
        @client = Factory(:client, :city => 'Amazing City')
      end

      subject { link_to_client(@client) }

      it { should include(@client.name) }
      it { should include(@client.city) }
    end

  end

end
