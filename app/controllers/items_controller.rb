class ItemsController < ApplicationController
  include ItemsHelper
  before_action :save_items_in_cart
  before_action :set_item, only: %i[ show edit update destroy ]

  def index
    @items = Item.all
    @join_table_item_cart = JoinTableItemsCart.new
  end

  def show
    @items = Item.find(params[:id])
    @join_table_item_cart = JoinTableItemsCart.new
    # Use callbacks to share common setup or constraints between actions.
  end
  private
    def set_item
      @item = Item.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def item_params
      params.fetch(:item, {})
    end
end
