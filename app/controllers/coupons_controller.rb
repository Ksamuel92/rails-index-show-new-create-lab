class CouponsController < ApplicationController
    def index
        @coupons = Coupon.all
    end

    def show
        # binding.pry
        @coupon = Coupon.find_by_id(params[:id])
    end

    def new

    end

    def create
        coupon = Coupon.new
        coupon.store = params[:coupon][:store]
        coupon.coupon_code = params[:coupon][:coupon_code]
        coupon.save
        # binding.pry
        redirect_to coupon_path(coupon)
    end
end
