class Api::V1::Member::BranchesController < ApplicationController
    def index
        render json: { status:200, data: Branch.all }
    end
end
