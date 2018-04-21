Rails.application.routes.draw do
    # root page is main_pages/index
    root "main_pages#index"
  
    get 'main_pages/add'
    get 'main_pages/show'
    post 'main_pages/create'
  #get 'main_pages/index'
  #get 'main_pages/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
