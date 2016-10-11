Rails.application.routes.draw do
  get 'application/index'
  get 'application/test' => 'welcome#test'
  
  get 'dashboard' => 'dashboard#index'
  
  get 'payments' => 'payments#index'
  
  get 'benefits' => 'benefits#index'
  get 'benefits/more' => 'benefits#more'
  get 'benefits/report' => 'benefits#report'
  
  root 'application#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end