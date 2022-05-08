class Api::V1::Member::KyogakusController < ApplicationController
    def index
        render json: { status:200, data: Kyogaku.all }
    end

    def create
        kyogaku = Kyogaku.new(kyogaku_params)
        if(kyogaku.save)
            render json: { status:200, data: kyogaku }
        else
            render json: { status:500, data: "エラー" }
        end
    end

    def delete
        kyogaku = Kyogaku.find_by(kyogaku_params)
        if(kyogaku.destroy)
            render json: { status:200, data: "削除完了" }
        else
            render json: { status:200, data: "削除失敗" }
        end
    end

    private
    def kyogaku_params
        params.require(:kyogaku).permit(:id,:name)
    end

end
