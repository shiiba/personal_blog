Rails.application.routes.draw do
  namespace :admin do
    root 'posts#index'
    resources :posts
  end

  root 'landings#home'
  get 'posts' => 'landings#index'
  get 'posts/:id' => 'landings#show'

  devise_for :users, :controllers => { registrations: 'registrations' }
end

#                   Prefix Verb   URI Pattern                     Controller#Action
#               admin_root GET    /admin(.:format)                admin/posts#index
#              admin_posts GET    /admin/posts(.:format)          admin/posts#index
#                          POST   /admin/posts(.:format)          admin/posts#create
#           new_admin_post GET    /admin/posts/new(.:format)      admin/posts#new
#          edit_admin_post GET    /admin/posts/:id/edit(.:format) admin/posts#edit
#               admin_post GET    /admin/posts/:id(.:format)      admin/posts#show
#                          PATCH  /admin/posts/:id(.:format)      admin/posts#update
#                          PUT    /admin/posts/:id(.:format)      admin/posts#update
#                          DELETE /admin/posts/:id(.:format)      admin/posts#destroy
#                     root GET    /                               landings#home
#                    posts GET    /posts(.:format)                landings#index
#                          GET    /posts/:id(.:format)            landings#show
#         new_user_session GET    /users/sign_in(.:format)        devise/sessions#new
#             user_session POST   /users/sign_in(.:format)        devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)       devise/sessions#destroy
#            user_password POST   /users/password(.:format)       devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)   devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)  devise/passwords#edit
#                          PATCH  /users/password(.:format)       devise/passwords#update
#                          PUT    /users/password(.:format)       devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)         registrations#cancel
#        user_registration POST   /users(.:format)                registrations#create
#    new_user_registration GET    /users/sign_up(.:format)        registrations#new
#   edit_user_registration GET    /users/edit(.:format)           registrations#edit
#                          PATCH  /users(.:format)                registrations#update
#                          PUT    /users(.:format)                registrations#update
#                          DELETE /users(.:format)                registrations#destroy
