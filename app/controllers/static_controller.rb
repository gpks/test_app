class StaticController < ApplicationController

  before_action :authenticate_user!, except: [:index]

  
  def index
    @posts = Post.where(:visible => true).sort { |x,y| x.created_at <=> y.created_at }
  end
end
