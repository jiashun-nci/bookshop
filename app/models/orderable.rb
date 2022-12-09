# Orderable model
# 
# 
# @author jia    
#
class Orderable < ApplicationRecord
  # build relationship with book and cart
  belongs_to :book
  belongs_to :cart

  # def total price method for orders
  def total
    book.price * quantity
  end
end
