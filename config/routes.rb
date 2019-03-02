# frozen_string_literal: true

Rails.application.routes.draw do
  post '/', to: 'home#roll', as: 'roll'

  # get '/patients/:id', to: 'patients#show', as: 'patient'
  root 'home#index'
end
