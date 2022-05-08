class Api::V1::Member::BranchesController < ApplicationController
    def index
        render json: { status:200, data: Branch.all }
    end


    def create
        branch = Branch.new(branch_params)
        if(Branch.save)
            render json: { status:200, data: branch }
        else
            render json: { status:500, data: "エラー" }
        end
    end

    def delete
        branch = Branch.find_by(branch_params)
        if(branch.destroy)
            render json: { status:200, data: "削除完了" }
        else
            render json: { status:200, data: "削除失敗" }
        end
    end

    private
    def branch_params
        params.require(:branch).permit(:id,:name)
    end

end
