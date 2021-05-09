# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace 'api' do
    namespace 'v1' do
      resources :categories do
        get 'products', to: 'products#show_by_category'
      end
      resources :products
      get 'products', to: 'products#search'
    end
  end
end
