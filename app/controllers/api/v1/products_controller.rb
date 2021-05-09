# frozen_string_literal: true

module Api
  module V1
    class ProductsController < ApplicationController
      before_action :set_product, only: %i[show update destroy]

      # GET /products
      def index
        products = if params[:query].nil?
                     Product.all
                   else
                     Product.search_by_term(params[:query])
                   end
        render json: { status: 'OK', data: products }, status: :ok
      end

      def search
        @products = Product.search_by_term(params[:query])

        render json: @products
      end

      # GET /categories/category_id/products
      def show_by_category
        category = Category.find(params[:category_id])
        products = category.products
        render json: { status: 'OK', data: products }, status: :ok
      end

      # GET /products/{id}
      def show
        render json: { status: 'OK', data: @product }, status: 200
      end

      def create; end

      private

      # Use callbacks to share common setup or constraints between actions
      def set_product
        @product = Product.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through
      def product_params
        params.require(:product).permit(:name, :price, :discount, :category_id)
      end
    end
  end
end
