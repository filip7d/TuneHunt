TuneHunt::Application.routes.draw do
  get "radio/play"

  get "tune/next" => "tune#next", :as => :tune_next
  get "tunes/:flag" => "tune#index", :as => :flagged_tunes
  get "tune/:id" => "tune#view", :as => :tune
  match "tune/:id/flag" => 'tune#flag', :as => :tune_flag

  match "radio/play" => 'radio#play', :as => :radio_play
  match "radio/play2" => 'radio#play2', :as => :radio_play2
  match "radio/new" => 'radio#new', :as => :radio_new
  match "radio/start" => 'radio#start', :as => :radio_start
  match "radio/like/:artist_id" => 'radio#like', :as => :radio_like
  match "radio/hate/:artist_id" => 'radio#hate', :as => :radio_hate

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
