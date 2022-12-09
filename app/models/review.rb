# Review model
# 
# 
# @author jia    
#
class Review < ApplicationRecord
  # build many2one relationship with book
  belongs_to :book
  
  # required fields input when create a review
  validates :who, presence: true
  validates :message, presence: true
end
