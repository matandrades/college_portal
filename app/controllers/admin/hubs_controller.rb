module Admin
  class HubsController < ApplicationController
    def index
      @hubs = Hub.all
    end

    def new
      @hub = Hub.new
    end

    def edit
      @hub = Hub.find(params[:id])
    end

    def update
      @hub = Hub.find(params[:id])

      if @hub.update(params_hub)
       redirect_to admin_hubs_path
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def create
      @hub = Hub.new(params_hub)

      if @hub.save
        redirect_to admin_hubs_path
      else
        render :new, status: :unprocessable_entity
      end
    end

    private

    def params_hub
      params.require(:hub).permit(:name, :city, :state_code)
    end
  end
end
