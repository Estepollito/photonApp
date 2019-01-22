Rails.application.routes.draw do
  get 'leds/encender'
  get 'leds/apagar'
  resources :leds
  post 'leds/encender'
  post 'leds/apagar'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
