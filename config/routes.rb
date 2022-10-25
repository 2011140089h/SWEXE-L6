Rails.application.routes.draw do
    root "sitemanager#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "sitemanager/index"=>"sitemanager#index"
  get ":id/addcart"=>"cartmanager#items"
  get ":id/delete"=>"sitemanager#deleteproduct"
  get "/carts"=>"cartmanager#carts"
  post ":id/addtocart"=>"cartmanager#addtocart"
  get "/addproduct"=>"sitemanager#addproduct"
  post "/addproduct"=>"sitemanager#createproduct"
  get ":id/deletefromcart"=>"cartmanager#delete"
end
