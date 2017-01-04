Rails.application.routes.draw do

 get '/', to: "products#index"


 post '/', to: "products#add"
###form told me to post to url '/'. this is right here. to: helper method directs you to the contoller#action it wants you to operate on.
end
