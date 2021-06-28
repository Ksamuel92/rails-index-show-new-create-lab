class Coupon < ApplicationRecord

    def to_s
        "#{store} - #{coupon_code}"
    end
end
