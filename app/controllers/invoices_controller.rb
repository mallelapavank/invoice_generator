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
    if @invoice.save!
      redirect_to invoices_path
    end
  end

  def next_method
    binding.pry
  end

  private
  def invoice_params
    params.require(:invoice).permit(:invoice_number, :due_date, :generation_date, :tnc, items_attributes: [:id, :name, :description, :amount])
  end
end
