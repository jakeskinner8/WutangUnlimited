
ProfMash::Application.routes.draw do
  get "home/show"

  devise_for :users do
        match 'login' => 'devise/sessions#new'
        match 'logout' => 'devise/sessions#destroy'
    get '/users/sign_out' => 'devise/sessions#destroy'
end
    
  # devise_for :users
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
    #match '/professors' => 'professors#bios'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
     resources :professors
     resources :votes
     resources :invite
     match 'vote-classes' => 'votes#classes'
     match 'vote-teachers' => 'votes#teachers'
     match 'invite' => 'invite#invite'
     match 'sendinvite' => 'invite#sendinvite'
     match 'savesettings' => 'account#savesettings'
     match 'history' => 'votes#history'
     match 'generalhistoryprofessors' => 'home#generalhistoryprofessors'
     match 'generalhistoryclasses' => 'home#generalhistoryclasses'
     match 'teachers' => 'home#teachers'
     match 'courses' => 'home#courses'
     match 'question' => 'home#question'
     match 'results' => 'results#evaluation'
     match 'reset' => 'home#reset'
     match 'search' => 'professors#search'
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
#devise_for :users, :controllers => { :sessions => "users/sessions" }

  match 'about' => 'home#about'
  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'
    match 'home' => 'home#show'
    root :to => 'home#show'
  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
