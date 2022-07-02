class NegotiationsController < ApplicationController
  def index
    @negotiations = Negotiation.all
  end

  def new
    @negotiation = Negotiation.new
  end

  def edit
    @negotiation = Negotiation.find(params[:id])
  end

  def create
    @negotiation = Negotiation.new(negotiation_params)
    if @negotiation.save
      redirect_to root
    else
      render :index
    end
  end

  def update
    @negotiation = Negotiation.find(params[:id])
    if @negotiation.update(negotiation_params)
      redirect_to root
    else
      render :index
    end
  end

  def destroy

  end

  private

  def negotiation_params
    params[:negotiation].permit(:name, :client_name, :amount, :completion_date, :note, :rate, :phase)
  end

end
