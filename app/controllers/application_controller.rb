class ApplicationController < ActionController::Base
  before_action :authenticate_user! #protect_from_forgery with: :exceptionより後におく。

  helper_method :current_basket

  def current_basket
    if session[:basket_id]
      @basket = Basket.find(session[:basket_id])
    else
      @basket = Basket.create
      session[:basket_id] = @basket.id
    end
  end
end
