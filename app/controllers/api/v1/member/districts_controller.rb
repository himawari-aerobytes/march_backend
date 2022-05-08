class Api::V1::Member::DistrictsController < ApplicationController
    def index
        render json: { status:200, data: District.all }
    end

    def create
        district = District.new(district_params)
        if(District.save)
            render json: { status:200, data: district }
        else
            render json: { status:500, data: "エラー" }
        end
    end

    def delete
        District = District.find_by(district_params)
        if(District.destroy)
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
