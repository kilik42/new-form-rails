class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
#   def  user1
    
#     @username = "arjun"
    
#     @email = "arjun@idontknow.com"
    
#     render 'user'
    
#   end
  
#    def  user2
    
#     @username = "marvin"
    
#     @email = "marvin@yahoo.com"
    
#     render 'user'
    
#   end
  
#    def  user3
    
#      @username = "melon"
    
#      @email = "melon@idontknow.com"
    
#     render 'user'
    
#   end
  
  
  def show
    
    @user = User.find_by_id(params['id'])
    
    
    render'show'
  end
  
  def new
#     render 'new'
    
    
  end
  
  def create
    
    u = User.new
    u.caption = params['caption']
    u.url = params['url']
    u.save
    redirect_to "/user/#{u.id}"
    
  end
  
 
end
