# frozen_string_literal: true

Rails.application.routes.draw do
  post '/', to: 'home#roll', as: 'roll'

  # get '/patients/:id', to: 'patients#show', as: 'patient'
  get '/', to: 'home#index', as: 'home_index'
  root 'home#index'
end
