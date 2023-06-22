class PrototypesController < ApplicationController
      def index
      end
    
      def show
        @prototype = Prototype.find(params[:id])
      end
  
      def destroy
        prototype = Prototype.find(params[:id])
        prototype.destroy
        redirect_to root_path
      end

      def edit
        @prototype = Prototype.find(params[:id])
      end
end
    
  