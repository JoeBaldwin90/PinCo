class OrderMailer < ApplicationMailer

  default :from => 'jcameronbaldwin@gmail.com'

  def receipt(order)
    @order = order # Enable orders to be used in Views

    mail( :to => @order.email,
          :subject => "Thank you for ordering from PinCo")
  end
end
