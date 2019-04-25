class OrderNotifierMailer < ApplicationMailer

   default from: 'Sam Ruby <myStore@example.com>'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier_mailer.received.subject
  #
def received(order)    
  @order = order
    mail to: order.email, subject: 'Подтверждение заказа в Pragmatic Store' 
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier_mailer.shipped.subject
  #
def shipped(order)    @order = order
    mail to: order.email, subject: 'Заказ из Pragmatic Store отправлен' 
  end


end
