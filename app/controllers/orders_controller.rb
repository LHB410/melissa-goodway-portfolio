class OrdersController < ApplicationController
  def create
    art = Art.find(params[:art_id])
    order  = Order.create!(art: art, amount: art.price.cents, state: 'pending', user: current_user)

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
        shipping_address_collection: {
          allowed_countries: ['US', 'CA'],
        },
        shipping_options: [
          {
            shipping_rate: "shr_1LpWQgHTvXipvTsOdxp5wPih",
          },
        ],
      line_items: [{
        price_data: {
          currency: 'usd',
          unit_amount: art.price.cents,
          product_data:
          {
            name: art.title,
            description: art.description,
            images: [art.photo.key],
          },
        },
        quantity: 1,
          }],
          mode: 'payment',
          success_url: order_url(order),
          cancel_url: order_url(order)
        )

    order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(order)
  end

  def show
    @order = current_user.orders.find(params[:id])
  end

end
