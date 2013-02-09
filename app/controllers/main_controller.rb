class MainController < ApplicationController
  def index
    @items = Item.all
    @itemNew = Item.order("created_at").limit(5)

 
    
  end


  def myItem
    @myItems = Item.where(:user_id => [current_user.id])

  end
end
