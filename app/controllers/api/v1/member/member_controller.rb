class Api::V1::Member::MemberController < ApplicationController
    before_action :authenticate_user!
    def index
        render json: { is_login: true, data: current_api_v1_user }
    end

    def show
    end

    def delete
    end

    def create
    end

    def update
    end




end
