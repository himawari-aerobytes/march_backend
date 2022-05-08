class Api::V1::Member::HeadquartersController < ApplicationController

    def index
        render json: { status:200, data: Headquarter.all }
    end

    def create
        headquarter = Headquater.new(headquarter_params)
        if(headquarter.save)
            render json: { status:200, data: headquarter }
        else
            render json: { status:500, data: "エラー" }
        end
    end

    def delete
        headquarter = Headquater.find_by(headquarter_params)
        if(headquarter.destroy)
            render json: { status:200, data: "削除完了" }
        else
            render json: { status:200, data: "削除失敗" }
        end
    end

    private
    def headquarter_params
        params.require(:headquater).permit(:id,:name)
    end
end
