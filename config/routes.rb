Claudel::Application.routes.draw do
  
  resources :works, :domains, :types, :time_periods, :images, :sessions
  
  root :to => "works#index"
  match "/admin" => "users#admin"
  match "/admin/domains" => "domains#admin"
  match "/admin/types" => "types#admin"
  match "/admin/time_periods" => "time_periods#admin"
  match "/works/:id/images" => "works#images"
  match "/works/:id/edit/images" => "works#edit_images"
  match "/home" => "users#home"
  match "/login" => "sessions#new"
  match "/logout" => "sessions#destroy"
  
end
