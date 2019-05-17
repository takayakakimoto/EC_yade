class Products::AddToBasketsController < Products::ApplicationController

  def create
    basket = current_user.prepare_basket
  end
end
