Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :show]

  # CUSTOM ROUTE - WITH ALIAS
  # get 'URL', to: 'controllername#action', as: 'the_action_nickname_basically'
  get '/students/:id/activate', to: 'students#activate', as: 'activate_student'

end
