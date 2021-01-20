class ChargesController < ApplicationController
  before_action :amount
  before_action :authenticate_user!

  CREATECUSTOMER = Stripe::StripeTool
  def new; end
  def create
    @amount = 500
    customer = CREATECUSTOMER.create_customer(email: params[:stripeEmail],
                                              source: params[:stripeToken])
    charge = CREATECUSTOMER.create_charge(ccustomer.id,@amount ,'Rails Stripe customer','usd')

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
  private
  def amount
    @amount = 500
  end
end
