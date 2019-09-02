class LineItemsController < ApplicationController
  before_action :set_item, only: :show

  # GET /line_items
  def index
    @items = LineItem.all
    json_response(@items)
  end

  # GET /line_items/:id
  def show
    json_response(@item)
  end

  private

  def set_item
    @item = LineItem.find(params[:id])
  end
end
