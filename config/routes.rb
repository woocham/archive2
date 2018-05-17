Rails.application.routes.draw do
  #URLを変える必要はなさそうなのでとりあえずこのままで
  get 'contacts/new',to:'contacts#new'
  
  resources :contacts
end
