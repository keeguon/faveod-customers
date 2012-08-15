class CustomersController < ApplicationController
  include WashOut::SOAP

  soap_action "index", :args => {}, :return => :string
  def index
    @customers = Customer.all

    render :soap => @customers.to_xml
  end

  soap_action "show", :args => { :name => :string }, :return => :string
  def show
    @customer = Customer.where :name => params[:name]

    render :soap => @customer.to_xml
  end
end
