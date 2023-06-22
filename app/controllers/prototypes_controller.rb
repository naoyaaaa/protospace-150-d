class PrototypesController < ApplicationController
  def index
  end

  def new
    @prototype = Prototype.new
  end

  private

  def prototype_params
    params.require(:prototype).permit(:content, :image).merge(user_id: current_user.id)
  end
end
