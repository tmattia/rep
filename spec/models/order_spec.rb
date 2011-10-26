require 'spec_helper'

describe Order do

  it { should have_db_column(:created_at) }

end
