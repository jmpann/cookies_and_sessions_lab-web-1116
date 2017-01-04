class ProductsController < ApplicationController

  def index
    cart
  end

  def add
    cart << params[:product]
    redirect_to '/'
  end
###Form asked the routes.rb, routes.rb told it to come to this controller and call this method on this controller class.
###ActionController::Base defined all of these "Controller" methods as class methods
### you put action on models and databases in these methods instead of the model itself (ie product.rb). You want to manipulate the database. define an instance of the model object. Then the model would act on that instance
end
