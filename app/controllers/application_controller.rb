class ApplicationController < ActionController::Base
  # set before action
  before_action :set_render_cart
  before_action :initialize_cart

  # set render cart to true
  def set_render_cart
    @render_cart = true
  end

  # initialize cart session
  def initialize_cart
    @cart ||= Cart.find_by(id: session[:cart_id])

    # create cart session if cart not exist
    if @cart.nil?
      @cart = Cart.create  
      session[:cart_id] = @cart.id 
    end
  end
end