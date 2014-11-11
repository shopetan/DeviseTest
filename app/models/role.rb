class Role < ActiveRecord::Base
#tuika  
has_and_belongs_to_many :users

end
