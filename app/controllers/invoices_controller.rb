class InvoicesController < ApplicationController
  def index
    @invoices = Invoice.all
  end

  def new
    @invoice = Invoice.new
  end

  def create
    @invoice = current_user.invoices.new(invoice_params)
    # TODO: Add items as nested attributes
    @invoice.save!
  end

  private
  def invoice_params
    params.require(:invoice).permit(:invoice_number)
  end
end
