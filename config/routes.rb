Synlixsystems::Application.routes.draw do

  root :to => 'business#index', :via => :get

  match 'about' => "business#about", :as => "about", :via => :get

  match 'contact' => "business#contact", :as => "contact", :via => :get

  #match 'buildpc' => "business#buildpc", :as => "buildpc", :via => :get

  match 'product' => "business#product", :as => "product", :via => :get

  match 'display/:type/:id' => "business#show", :as => "display_product", :via => :get

  match 'search' => "business#search", :as => 'search', :via => :get

  match 'cart' => "business#cart", :as => 'cart', :via => :get

  match 'cart/:type/:id/add_cart' => "business#add_cart", :as => 'add_cart', :via => :get

  match 'cart/remove_cart' => "business#remove_cart", :as => 'remove_cart', :via => :get

  match 'search_results' => "business#search_results", :as => 'search_results', :via => :post

  resources :customers

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  #get "business/index"

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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
