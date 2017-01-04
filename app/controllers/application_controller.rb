class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def cart
    if session[:cart]
      @cart = session[:cart]
    else
     session[:cart] = []
     @cart = session[:cart]
    end
    @cart
  end
end
  ### is the same as below ||= is syntactic sugar for a confiditional -> if object not nil, object = self else object = whatever to the right of ||= IE [], {}, "Bob", boolean
    ##session[:cart] ||= []

    ### creates a session hash. Rails has access to Session module. But session is always blank until you store something in it. session can have multiple keys and value(different data types)

    ####            session[:cart] = ["Bat"]
  # session = hash   :cart = key       ["Bat"] = value

  #session[:key] = ["value"]


    ###session return  {:cart => ["Bat"]}

    ### ||=, after default value. Conditional, if session[:cart] = nil, set to value on the right

    ##you want it as instance variable if you want other methods to have acces to this variable outside of this method.
    ## cart = local scope inside method only
    ## @cart = instance scope, available outside method
    ## best practice to instance scope.
