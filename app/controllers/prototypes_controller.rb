class PrototypesController < ApplicationController
  before_action :move_to_session,only:[:edit, :destroy]
  before_action :move_to_edit_index, only: [:edit]
  before_action :move_to_index, except:[:index,:show]

  def index
    @prototype = Prototype.all
  end

  def new
    @prototype = Prototype.new
  end

  def create
    prototype = Prototype.new(prototype_params)
    if prototype.save
      redirect_to "/"      
    else
      render :new
    end
  end

  def show
    @prototype = Prototype.find(params[:id])
  end

  def edit
    @prototype = Prototype.find(params[:id])
  end  

  def update
    @prototype = Prototype.find(params[:id])
    if @prototype.update(prototype_params)
      redirect_to root_path
    else
      render :edit
    end
  end
  
  def destroy
    prototype = Prototype.find(params[:id])
    prototype.destroy
    redirect_to root_path
  end
  
  private

  def prototype_params
    params.require(:prototype).permit(:title,:catch_copy,:concept,:image).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

  def move_to_edit_index
    @prototype = Prototype.find(params[:id])
    unless current_user == @prototype.user
      redirect_to root_path
    end
  end

  def move_to_session
    unless user_signed_in?
      redirect_to new_user_session_path
    end
  end      
end