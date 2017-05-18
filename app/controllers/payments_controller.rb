class PaymentsController < ApplicationController
  before_action :authenticate_user!

  def create
    token = params[:stripeToken]
    # Create the charge on Stripe's servers - this will charge the user's card
    @product = Product.find (params[:product_id])
    @user = current_user

    begin
      charge = Stripe::Charge.create(
        :amount => @product.price*100, # amount in cents, again
        :currency => "usd",
        :source => token,
        :description => params[:stripeEmail]
        )

        if charge.paid
          Order.create(
            product_id: @product.id,
            user_id: @user.id,
            total: @product.price
        )

        # UserMailer.order_recieved(@user).deliver_now

        end

    rescue Stripe::CardError => e
      # The card has been declined
      body = e.json_body
      err = body[:error]
      flash[:error] = "Unfortunately, there was an error processing your payment: #{err[:message]}"
    end

    redirect_to product_path(@product), notice: "Your payment has been processed!"

  end

end
