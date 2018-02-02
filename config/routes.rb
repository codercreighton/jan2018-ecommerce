Rails.application.routes.draw do
  get 'all_users' =>'admin#all_users'

  get 'edit_user' =>'admin#edit_user'
  post 'edit_user' => 'admin#edit_user'

  get 'show_user' =>'admin#show_user'

  get 'delete_user' =>'admin#delete_user'

 post 'add_to_cart' => 'cart#add_to_cart'

  get 'view_cart' =>'cart#view_order'

  get 'checkout'=> 'cart#checkout'

  root 'storefront#all_items'

  get 'categorical' => 'storefront#items_by_category'

  get 'branding' =>'storefront#items_by_brand'

  
	get 'edit_line_item' => 'cart#edit_line_item'

  post 'edit_line_item' => 'cart#edit_line_item'

  post 'delete_line_item' => 'cart#delete_line_item'
 	get 'delete_line_item' => 'cart#delete_line_item'

  devise_for :users
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
