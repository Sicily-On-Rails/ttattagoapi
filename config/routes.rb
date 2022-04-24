Rails.application.routes.draw do
  resources :users
  resources :telephones
  resources :structures
  resources :social_networks
  resources :products_structures
  resources :products
  resources :prcategories_products
  resources :prcategories
  resources :points
  resources :point_translations
  resources :pocategory_translations
  resources :pocategories_points
  resources :pocategories
  resources :places_products
  resources :places
  resources :photos
  resources :hours
  resources :friendly_id_slugs
  resources :emails
  resources :documents
  resources :doc_types
  resources :doc_files
  resources :delayed_jobs
  resources :contests
  resources :companies
  resources :category_tels_telephones
  resources :category_tels
  resources :addresses
  resources :activities
  resources :accategories_activities
  resources :accategories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
