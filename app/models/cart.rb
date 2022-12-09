# Cart model
# 
# define relationship with others models
# @author jia    
#
class Cart < ApplicationRecord
    # one2many relationship
    has_many :orderables
    has_many :books, through: :orderables # use orderables table as middleware to connect books and carts

    # define total method to calculate total order price
    def total
        orderables.to_a.sum { |orderable| orderable.total }
    end
end
