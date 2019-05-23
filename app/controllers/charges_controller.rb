class ChargesController < ApplicationController
  def create
    Stripe.api_key = ENV['STRIPE_SECRET_KEY']
    token = params[:stripeToken]
    product_ids = params[:product_ids].map(&:to_i)

    #正しい金額で決済する
    total = current_user.basket.total_price(product_ids: product_ids)

    #削除
    basket_products = current_user.basket.basket_products.where(product_id: product_ids)
    basket_products.each(&:destroy!)

    Stripe::Charge.create({
      amount: total,
      currency: 'jpy',
      description: 'Example charge',
      source: token
    })
    redirect_to root_path, notice: '決済に成功しました'
  end
end
