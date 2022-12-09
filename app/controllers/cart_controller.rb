# cart controller
# define methods: add , remove
# turbo_steam update cart content after clicking add or remove button
# @author jia    
# 

class CartController < ApplicationController
  # boolean value to show cart or not
  def show
    @render_cart = false
  end

  # add method 
  def add
    @book = Book.find_by(id: params[:id]) # find and add the book by id.
    quantity = params[:quantity].to_i  # convert quantity to integer number.
    current_orderable = @cart.orderables.find_by(book_id: @book.id)  # find the current order records.
    if current_orderable && quantity > 0  # if order record found and quantity greater than zero
      current_orderable.update(quantity:)   # update the quantity
    elsif quantity <= 0  # if quantity is less or equal zero, 
      current_orderable.destroy   # delete the order record
    else
      @cart.orderables.create(book: @book, quantity:) # create order record with book object and input quantity
    end
    # update cart page while new book added 
    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: [turbo_stream.replace('cart',
                                                   partial: 'cart/cart', # update partcial cart view under cart model
                                                   locals: { cart: @cart }),
                              turbo_stream.replace(@book)]
      end
    end
  end

  # remove method 
  def remove
    Orderable.find_by(id: params[:id]).destroy  # delete the order record by id
    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: turbo_stream.replace('cart',
                                                  partial: 'cart/cart', # update partcial cart view after item delete
                                                  locals: { cart: @cart })
      end
    end
  end
end
