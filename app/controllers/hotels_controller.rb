class HotelsController < ApplicationController
    def index
        @hotel = Hotel.all
    end
    def show
        @hotel = Hotel.find(params[:id])
    end
    def edit
        @hotel = Hotel.find(params[:id])
    end
    def new
        @hotel = Hotel.new
    end
    def create
        @hotel = Hotel.new(hotel_params)
    
        if @article.save
          redirect_to hotels_path
        else
          render :new
        end
      end
    def update
        @hotel = Hotel.find(params[:id])
        if @hotel.update_attributes(hotel_params)
          redirect_to hotels_path
        else
          render :edit
        end
      end
    def destroy
        @hotel = Hotel.find(params[:id])
        @hotel.destroy
    
        redirect_to hotels_path
      end
    def create
        @hotel = Hotel.new(hotel_params)
       
        @hotel.save
        redirect_to @hotel
      end
       
      private
        def hotel_params
          params.require(:hotel).permit(:wifi, :breakfast, :price, :title, :adress, :photo, :text, :number, :rating)
        end
end
