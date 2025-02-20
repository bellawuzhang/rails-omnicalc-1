Rails.application.routes.draw do

  get("/", { :controller => "math", :action => "homepage" })

  get("/square/new", { :controller => "math", :action => "square_new" })

  get("/square/results", { :controller => "math", :action => "square_results" })

  get("/square_root/new", { :controller => "math", :action => "square_root_new" })

  get("/square_root/results", { :controller => "math", :action => "square_root_results" })

  get("/payment/new", { :controller => "math", :action => "payment_new" })

  get("/payment/results", { :controller => "math", :action => "payment_results" })


end
