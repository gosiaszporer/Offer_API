class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :acceptOffer, :rejectOffer]

  # GET /offers
  def index
    @offers = Offer.all
    json_response(@offers)
  end

  # GET /offers/:id
  def show
    render :json => @offer , :include => @offer.lineItems
  end

  # PUT /offers/:id/acceptOffer
  def acceptOffer
    if @offer.lineItems.empty?
      render json: {status: "error", code: 422, message: "Offer need at least one line item"}
    else
      @offer.userOffers.create(accepted: true, 
                               user: User.find_or_create_by(fullName: params[:fullName], emailAdress: params[:emailAdress]))
      render :json => @offer , :include => @offer.users
    end
  end

  def rejectOffer
    @offer.userOffers.create(accepted: false, 
                             user: User.find_or_create_by(fullName: params[:fullName], emailAdress: params[:emailAdress]))
    render :json => @offer , :include => @offer.users
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end
end
