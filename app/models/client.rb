class Client < ActiveRecord::Base

  validates :corporate_name, :presence => true,
                             :uniqueness => true,
                             :length => { :maximum => 255 }

end

