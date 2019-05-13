Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#   RestaurantsController
#   routing
#     routes to #index (FAILED - 15)
  get "restaurants", to: "restaurants#index"
#     routes to #new (FAILED - 16)
  get "restaurants/new", to: "restaurants#new"
#     routes to #show (FAILED - 17)
  get "restaurants/:id", to: "restaurants#show"
#     routes to #create (FAILED - 18)
  post "restaurants", to: "restaurants#create"

# ReviewsController
#   routing
#     routes to #new (FAILED - 19)
  get "reviews", to: "reviews#new"
#     routes to #create (FAILED - 20)
  post "reviews", to: "reviews#create"

end
