Rails.application.routes.draw do

  get "students/:id/active", to: "students#activate", as: "activate_student"
  
  resources :students, only: [:index, :show]

end
