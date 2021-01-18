# frozen_string_literal: true

Rails.application.routes.draw do
  get 'contacts/new'
  post 'contacts/create' => 'contacts#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'contacts#new'
end
