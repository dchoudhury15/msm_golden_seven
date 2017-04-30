Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #home
  get("/", {:controller => "msm", :action => "index"})
  get("/directors", {:controller => "msm", :action => "index"})

#create
get("/create_director", {:controller => "msm", :action => "create"})
get("/directors/new", {:controller => "msm", :action => "new_form"})

#read
get("/directors/:id_num", {:controller => "msm", :action => "show_detail"})

#edit

get("/directors/:id_num/edit", {:controller => "msm", :action => "edit_form"})
get("/update_director/:id_num", {:controller => "msm", :action => "update"})

#delete
get("/delete_director/:id_num", {:controller => "msm", :action => "delete"})
end
