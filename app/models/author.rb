# Author model
# 
# 
# @author jia    
#
class Author < ApplicationRecord
	validates :name, presence: true # author name required while creating new author
end
