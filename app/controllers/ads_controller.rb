class AdsController < ApplicationController
    before_action :required_logged_user

    def new
        @ad = Ad.new
    end

    def edit
        @ad = current_user.ads.find(params[:id])
    end

    def create
        @ad = current_user.ads.build(ad_params)
        if @ad.save
            redirect_to root_path, notice: t(".success") 
        end
    end

    def update
        @ad = current_user.ads.find(params[:id])
        if @ad.update(ad_params)
            redirect_to edit_ad_path(@ad), notice: t(".success") 
        else
            render :edit
        end
    end

    private

    def ad_params
        params.require(:ad).permit(:title, :description, :price)
    end
end