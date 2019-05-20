class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def new
    @coupon = Coupon.new
  end

  def create
    @coupon = Coupon.create(store: params["coupon"]["store"], coupon_code: params["coupon"]["coupon_code"])
    redirect_to @coupon
  end

  def show
    @coupon = Coupon.find(params[:id])

  end

end

private

def coupon_params
  params.require(:coupon).permit(:coupon_code, :store)
end
