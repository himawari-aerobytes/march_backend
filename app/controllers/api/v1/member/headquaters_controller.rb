class Api::V1::Member::HeadquatersController < ApplicationController
    def index
        render json: { status:200, data: Headquater.all }
    end

    def create
        headquater = Headquater.new(headquater_params)
        if(headquater.save)
            render json: { status:200, data: headquater }
        else
            render json: { status:500, data: "エラー" }
        end
    end

    def delete
        headquater = Headquater.find_by(headquater_params)
        if(headquater.destroy)
            render json: { status:200, data: "削除完了" }
        else
            render json: { status:200, data: "削除失敗" }
        end
    end

    private
    def headquater_params
        params.require(:headquater).permit(:id,:name)
    end
end
