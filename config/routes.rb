Anpi1::Application.routes.draw do
  get "mobile/login"
  post "mobile/login" => "mobile_sessions#create", :as => "mobile_login"
  get "mobile/anpi" => "mobile#edit", :as => "mobile_edit"
  post "mobile/anpi" => "mobile#create", :as => "mobile_post"
  put "mobile/anpi" => "mobile#update", :as => "mobile_put"
  get "mobile/thanks" => "mobile#thanks", :as => "mobile_thanks"

	resources :mail_sends

  resources :member_infos

	get  "anpi_infos/:member_id/new" => "anpi_infos#new", :as => "new_anpi"
	get  "anpi_infos/:anpi_id/edit" => "anpi_infos#edit", :as => "edit_anpi"
	post "anpi_infos/:member_id" => "anpi_infos#create", :as => "save_anpi"
	put  "anpi_infos/:anpi_id" => "anpi_infos#update", :as => "update_anpi"


	resources :roles

	resources :teams

	resources :projects

	resources :mail_templates

	get "admins/new" => 'admins#new'
	post "admins/new" => 'admins#create'
	put "admins/update" => 'admins#update', :as => "change_password"
	get "admins" => 'admins#list', :as => "admins_list"
	get "admin" => 'admins#view', :as => "admin"
	delete "admins/:id" => "admins#destroy", :as => "delete_admin"
	get "sessions/delete" => 'sessions#delete', :as => "logout"
	post "sessions/new" => "sessions#create", :as => "login"

  get "status/" => "status#index", :as =>"status"
  get "status/delete_anpi" => "status#delete_anpi", :as =>"delete_anpi"

  post "/" => 'home#search', :as => "search_button"
	root :to => 'home#index'

	#tanji add begin
  # get "mail_sends/call" => 'mail_sends#mail_send_action'
	#tanji add end

	# The priority is based upon order of creation:
	# first created -> highest priority.

	# Sample of regular route:
	#		match 'products/:id' => 'catalog#view'
	# Keep in mind you can assign values other than :controller and :action

	# Sample of named route:
	#		match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
	# This route can be invoked with purchase_url(:id => product.id)

	# Sample resource route (maps HTTP verbs to controller actions automatically):
	#		resources :products

	# Sample resource route with options:
	#		resources :products do
	#			member do
	#				get 'short'
	#				post 'toggle'
	#			end
	#
	#			collection do
	#				get 'sold'
	#			end
	#		end

	# Sample resource route with sub-resources:
	#		resources :products do
	#			resources :comments, :sales
	#			resource :seller
	#		end

	# Sample resource route with more complex sub-resources
	#		resources :products do
	#			resources :comments
	#			resources :sales do
	#				get 'recent', :on => :collection
	#			end
	#		end

	# Sample resource route within a namespace:
	#		namespace :admin do
	#			# Directs /admin/products/* to Admin::ProductsController
	#			# (app/controllers/admin/products_controller.rb)
	#			resources :products
	#		end

	# You can have the root of your site routed with "root"
	# just remember to delete public/index.html.
	# root :to => 'welcome#index'

	# See how all your routes lay out with "rake routes"

	# This is a legacy wild controller route that's not recommended for RESTful applications.
	# Note: This route will make all actions in every controller accessible via GET requests.
	# match ':controller(/:action(/:id))(.:format)'
end
