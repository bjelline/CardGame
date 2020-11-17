# frozen_string_literal: true

Rails.application.routes.draw do
  get '/home', to: 'home#index'
  get '/home/play', to: 'home#play'
  root to: 'home#index'
end
