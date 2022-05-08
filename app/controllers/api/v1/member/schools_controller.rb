class Api::V1::Member::SchoolsController < ApplicationController
    def index
        render json: { status:200, data: School.all }
    end

    def create
        school = School.new(school_params)
        if(school.save)
            render json: { status:200, data: school }
        else
            render json: { status:500, data: "エラー" }
        end
    end

    def delete
        school = School.find_by(school_params)
        if(school.destroy)
            render json: { status:200, data: "削除完了" }
        else
            render json: { status:200, data: "削除失敗" }
        end

    end

    private
    def school_params
        params.require(:school).permit(:id,:name)
    end
end
