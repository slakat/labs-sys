App::Application.routes.draw do
  resources :products

  resources :categories

  resources :categories


  match '/index_category', to: 'categories#index_category', via: 'get'
  match '/index_product', to: 'categories#index_product', via: 'get'
  match '/index_tools', to: 'categories#index_tools', via: 'get'
  match '/show_tools', to: 'categories#show_tools', via: 'get'
  match '/send_mail', to: 'pages#send_mail', via: 'post'

  get "pages/index"
  get "pages/about"
  get "pages/contact"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'pages#index'


  #get 'productos' => 'products#index', as: :products_path

  #get 'categoria' => 'products#category', as: :category_path

  #get 'show' => 'products#show', as: :show_path



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
