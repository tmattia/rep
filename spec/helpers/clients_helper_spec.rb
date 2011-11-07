require 'spec_helper'

describe ClientsHelper do

  describe 'link_to_client' do
    context 'a client with an empty name' do
      before do
        @client = Factory(:client, :name => '')
      end

      subject { link_to_client(@client) }

      it { should include(@client.company_name) }
    end

    context 'a client with a name' do
      before do
        @client = Factory(:client, :name => 'Amazing Name')
      end

      subject { link_to_client(@client) }

      it { should include(@client.name) }
      it { should_not include(@client.company_name) }
    end

    context 'a client with a city' do
      before do
        @client = Factory(:client, :city => 'Amazing City')
      end

      subject { link_to_client(@client) }

      it { should include(@client.city) }
    end

  end

end
