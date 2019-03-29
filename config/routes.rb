Rails.application.routes.draw do
root 'application#hello'
root 'users#index'
root 'static_pages#home'
  get  'static_pages/home'
  get  '/help',    to: 'static_pages#help', as: 'helf'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
get  '/signup',  to: 'users#new'
end
