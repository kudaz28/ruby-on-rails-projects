Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :members
  resources :events
  
  resources :newsletters
  
  match "/index" => "cheam_club_core#index" , via: :get
  match "/about_the_club" => "cheam_club_core#about_the_club" , via: :get
  match "/how_to_join" => "cheam_club_core#how_to_join" , via: :get
  match "/what_you_need" => "cheam_club_core#what_you_need" , via: :get
  match "/newsletters" => "cheam_club_core#newsletters" , via: :get
  match "/club_matters" => "cheam_club_core#club_matters" , via: :get
  match "/how_to_get_here" => "cheam_club_core#how_to_get_here" , via: :get
  match "/book_a_lawn" => "cheam_club_core#book_a_lawn" , via: :get
  match "/links_to_croquet_sites" => "cheam_club_core#links_to_croquet_sites" , via: :get  

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'cheam_club_core#index' # go to the index page always

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
