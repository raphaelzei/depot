class ApplicationController < ActionController::Base
  before_filter :authorize
  protect_from_forgery

  private
    def current_cart
      Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
      cart = Cart.create
      session[:cart_id] = cart.id
      cart
    end

    def increment_counter
      if session[:counter].nil?
        session[:counter] = 0
      end
      session[:counter] += 1
    end

    def reset_session_counter
      if not session[:counter].nil?
        session[:counter] = 0
      end
    end

    protected
      def authorize
        unless User.find_by_id(session[:user_id])
          redirect_to login_url, :notice => "Please log in"
        end
      end
end

