Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  post 'consultants/new', to: 'consultants#create'
  get 'consultants', to: 'consultants#index'
  get 'consultant/cost', to: 'consultants#show'

  post 'games/new', to: 'games#create'
  get 'game/score', to: 'games#score'
  post 'game/score/update', to: 'games#update'
  get 'game/scoreboard', to: 'games#scoreboard'

  #for front end to create a new block in particular map aka level
  post 'blocks/new', to: 'blocks#new'

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

  post 'projects/new', to: 'projects#create'
  get 'projects/:map_id', to: 'projects#show'
  get 'projects', to: 'projects#index'

  post 'maps/new', to: 'maps#create'
  get 'maps/budget/:name', to: 'maps#show'
  get 'maps', to: 'maps#index'


  # ROUTES FOR LEVELS!!!!!!!!!!!!!!!!
  post 'levels/new', to: 'levels#new'
  get 'levels/:id', to: 'levels#show'
  get 'levels', to: 'levels#index'


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
