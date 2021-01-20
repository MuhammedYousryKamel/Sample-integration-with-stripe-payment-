
module Stripe::StripeTool
  def self.create_customer(email: email ,source: stripetoken)
    customer = Stripe::Customer.create(
        email: email,
        source: stripetoken
        )
  end

  def self.create_charge(customer_id, amount_id, description_id, currency_id)
    charge = Stripe::Charge.create(
            customer: customer_id,
            amount: amount_id,
            description: description_id,
            currency: currency_id
          )
  end
end