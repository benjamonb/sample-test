SampleApp::Application.routes.draw do

  # get "trades/new"
  # get "trades/create"
  # get "trades/update"
  # get "trades/destroy"
  
  resources :users
  resources :sessions # , only: [:new, :create, :destroy]  #WARUM klappts das nicht "Route nicht gefunden?"
  #resources :stocks
  resources :trades
  
  root "static_pages#home"
  get "static_pages/home"
  get "inventories/show"

  match "/show_local", to: "prices#show_local", via: "get"
  #get "static_pages/help"
  #get "static_pages/about"
  #get "users/new"


  match "/help", to: "static_pages#help", via: "get"
  match "/about", to: "static_pages#about", via: "get"

  match "/portfolio", to: "inventories#show", via: "get"
  match "/add_trade", to: "trades#new", via: "get"

  match "/show_ara", to: "prices#show_ara", via: "get"

  match "/signin", to: "sessions#new", via: "get"
  match "/signup", to: "users#new", via: "get"
  match '/signout',  to: 'sessions#destroy', via: :delete


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
