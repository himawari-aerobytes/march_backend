class Api::V1::Member::MembersController < ApplicationController
    before_action :authenticate_api_v1_user!

    def index
        render json: { status: 200, data: Member.all }
    end

    def show
        render json: { status: 200, data: Member.find_by(id:params[:id]) }
    end

    def delete
        member = Member.find_by(id:params[:id])

        if(member.destroy)
            render json: { status: 200, data: "削除完了" }
        else
            render json: {status: 500,data:"削除失敗" }
        end

        
    end

    def create
        member = Member.new(member_params)
        if(member.save)
            render json: { status: 200, data: member }
        else
            render json: {status: 500,data:"作成失敗" }
        end
        
    end

    def update
        member = Member.find_by(:id).update(member_params)
        if(member.save)
            render json: { status: 200, data: "update完了" }

        else
            render json: {status: 500,data:"update失敗" }
        end
        
    end

    private
    def member_params
        params.require(:members).permit(:tokan_id,:name,:address,:school_id,:birthday,:grade,:admission_year,:kyogaku_id,:jmh_id,:visit,:mobile_phone_number,:home_phone_number,:headquarter_id,:branch_id,:district_id)
    end

end
