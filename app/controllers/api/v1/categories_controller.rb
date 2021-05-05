module Api
  module V1
    class CategoriesController < ApplicationController
      before_action :set_category, only: %i[show update destroy]

      # GET /categories
      def index
        categories = Category.all
        render json: { status: 'OK', data: categories }, status: :ok
      end

      # GET /categories/{id}
      def show
        render json: { status: 'OK', data: @category }, status: 200
      end

      # POST /categories
      def create
        @category = Category.new(category_params)

        if @category.save
          render json: { status: 'Created', data: @category }, status: :created
        else
          render json: @category.errors.full_messages, status: :unprocessable_entity
        end
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_category
        @category = Category.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def category_params
        params.require(:category).permit(:name)
      end

    end
  end
end

