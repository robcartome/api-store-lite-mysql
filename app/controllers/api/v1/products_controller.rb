# frozen_string_literal: true

module Api
  module V1
    class ProductsController < ApplicationController
      before_action :set_product, only: %i[show update destroy]
      # Modificar por la URL del dominio
      @@base_url = 'https://store-lite.herokuapp.com'

      # GET /products
      def index
        num_page = params[:page].nil? ? 1 : params[:page].to_i
        products = if params[:query].nil?
                     # Product.all
                     Product.paginate(page: num_page).order('id DESC')
                   else
                     # Product.search_by_term(params[:query])
                     Product.where('name LIKE ?',
                                   "%#{params[:query]}%").paginate(page: num_page).order('id DESC')
                   end

        next_num_page = num_page + 1
        previous_num_page = num_page - 1
        url_next = "#{@@base_url}/api/v1/products?page=#{next_num_page}"
        url_previous = "#{@@base_url}/api/v1/products?page=#{previous_num_page}"

        render json: { status: 'OK', next: products == [] ? '' : url_next, previous: previous_num_page.positive? ? url_previous : '', data: products },
               status: :ok
      end

      # GET /categories/category_id/products
      def show_by_category
        num_page = params[:page].nil? ? 1 : params[:page].to_i
        products = Product.where('category=?', params[:category_id]).paginate(page: num_page).order('id DESC')
        next_num_page = num_page + 1
        previous_num_page = num_page - 1
        url_next = "#{@@base_url}/api/v1/categories/2/products?page=#{next_num_page}"
        url_previous = "#{@@base_url}/api/v1/categories/2/products?page=#{previous_num_page}"
        render json: { status: 'OK', next: products == [] ? '' : url_next, previous: previous_num_page.positive? ? url_previous : '', data: products },
               status: :ok
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
