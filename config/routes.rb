Rails.application.routes.draw do
  post 'tickets/:ticket_id/User_tickets', to:"user_tickets#create" 

  delete 'tickets/:ticket_id/User_tickets/:id', to:"user_tickets#destroy" 

  patch 'tickets/:ticket_id/User_tickets/:id', to:"user_tickets#update"
 
  get 'tickets/:ticket_id/User_tickets/:id', to:"user_tickets#show" 

  post "/tickets", to:"tickets#create" 

  delete "/tickets/:id", to:"tickets#destroy" 

  patch "/tickets/:id", to:"tickets#uptdate"

  get "/tickets/:id", to:"tickets#show" 
  
  get "/users/more_tickets_boughts", to:"users#more_tickets_boughts"

  get "/places/more_assistance", to: "places#more_assistance"
  
  get "/events/more_bought_less_paid", to: "event#more_bought_less_paid"

  get "/tickets/most_expensives", to: "ticket#most_expensives" 

  post "/places", to:"places#create"

  delete "/places/:id", to:"places#destroy"

  patch "/places/:id", to:"places#uptdate"

  get "/places/:id", to:"places#show" 

  post "/events", to:"events#create"

  delete "/events/:id", to:"events#destroy"

  patch "/events/:id", to:"events#uptdate"
 
  get "/events/:id", to:"events#show" 

  post "/users", to:"users#create"

  delete "/users/:id", to:"users#destroy"

  patch "/users/:id", to:"users#uptdate"

  get "/users/:id", to:"users#show" 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
