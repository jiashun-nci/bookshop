# Category model
# 
# 
# @author jia    
#
class Category < ApplicationRecord
	validates :name, presence: true # category name required while creating new category
end
