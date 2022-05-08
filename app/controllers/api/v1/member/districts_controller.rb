class Api::V1::Member::DistrictsController < ApplicationController
    def index
        render json: { status:200, data: District.all }
    end

    def create
        district = district.new(district_params)
        if(district.save)
            render json: { status:200, data: district }
        else
            render json: { status:500, data: "エラー" }
        end
    end

    def delete
        district = District.find_by(district_params)
        if(district.destroy)
            render json: { status:200, data: "削除完了" }
        else
            render json: { status:200, data: "削除失敗" }
        end
    end

    private
    def district_params
        params.require(:district).permit(:id,:name)
    end

    
end
