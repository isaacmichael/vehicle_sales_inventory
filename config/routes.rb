Rails.application.routes.draw do
  resources :vehicle_sales
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  get 'searchMake',to:"vehicle_sales#searchMake"
  get 'searchModel',to:"vehicle_sales#searchModel"
  get 'searchYear',to:"vehicle_sales#searchYear"
  get 'searchColor',to:"vehicle_sales#searchColor"
  # Defines the root path route ("/")
  # root "articles#index"
end
