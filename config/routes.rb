Fedena::Application.routes.draw do
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
  resources :students
  match "students/:id/guardian_details" => "students#guardian_details", :as => "students_guardian_details"
  match "students/:id/guardian_details_update" => "students#guardian_details_update", :via => :put, :as => "students_guardian_details_update"
  match "students/:id/show_guadian" => "students#show_guardian", :as => "students_show_guardian"
  match "students/:id/emergency_contact" => "students#emergency_contact", :as => "student_emergency_contact"
  match "students/:id/emergency_contact_update" => "students#emergency_contact_update", :via => :put, :as => "student_emergency_contact_update"
  match "students/:id/previous_data" => "students#previous_data", :as => "student_previous_data"
  match "students/:id/previous_data_update" => "students#previous_data_update", :as => "student_previous_data_update", :via => :put
  match "students/:id/additional_details" => "students#additional_details", :as => "student_additional_details"
  match "students/:id/additional_details_update" => "students#additional_details_update", :as => "student_additional_details_update"
  match "students/:id/profile" => "students#profile", :as => "student_profile"
  match "students/:id/edit_guardian_details" => "students#edit_guardian_details", :as => "student_edit_guardian_details"



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
  root :to => "students#new"
end
