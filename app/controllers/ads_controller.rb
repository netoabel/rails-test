class AdsController < ApplicationController
  def new
    @ad = Ad.new
  end
  
  def edit
    @ad = Ad.find(params[:id])
    render 'new'
  end
  
  def create
    @ad = Ad.new(ad_params)
    if @ad.save
      flash[:success] = "Ad created successfully!"
      redirect_to root_url
    else
      render 'new'
    end
  end
  
  def update
    @ad = Ad.find(params[:id])
    if @ad.update_attributes(ad_params)
      flash[:success] = "Ad updated successfully!"
      redirect_to root_url
    else
      render 'new'
    end
  end
  
  def index
    @ads = Ad.paginate(page: params[:page], per_page: 10)
  end
  
  def ad_params
    params.require(:ad).permit(:budget, creatives_attributes: [:id, :bid, :ad_text], 
                                        targetings_attributes: [:id, :gender, :places])
  end
end
