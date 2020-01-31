class SmoothiesController < ApplicationController
    def index
        @smoothies = Smoothie.all
        render json: @smoothies
    end

    def show
        @smoothie = Smoothie.find(params[:id])
        render json: @smoothie, include: :ingredients
    end
end
