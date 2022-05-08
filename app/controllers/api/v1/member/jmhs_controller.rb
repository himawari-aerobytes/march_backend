class Api::V1::Member::JmhsController < ApplicationController
    def index
        render json: { status:200, data: Jmh.all }
    end

    def create
        jmh = Jmh.new(jmh_params)
        if(jmh.save)
            render json: { status:200, data: jmh }
        else
            render json: { status:500, data: "エラー" }
        end
    end

    def delete
        jmh = Jmh.find_by(jmh_params)
        if(jmh.destroy)
            render json: { status:200, data: "削除完了" }
        else
            render json: { status:200, data: "削除失敗" }
        end
    end

    private
    def jmh_params
        params.require(:jmh).permit(:id,:name)
    end
end
