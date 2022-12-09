# Book model
# define relationship with others models
# 
# @author jia    
#
class Book < ApplicationRecord
  # many2one relation to author and category
  belongs_to :author
  belongs_to :category
  has_many :reviews
  
  # link book to carts and orders with one2many relation
  has_many :orderables
  has_many :carts, through: :orderables
  
  # validate at least book title when create a book
  validates :title, presence: true
end
