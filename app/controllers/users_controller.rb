class UsersController < ApplicationController

    def index
        user = User.all
        #puts user
        render json: user
        end
    
    def show
        user = User.find(params[:id])
        render json: user
    end
    
    def create
        #byebug
        user = User.create(user_params)
        render json: { user: UserSerializer.new(user), jwt: issue_token(user) }, status: :accepted   
    end


    def update
        user = User.find(params[:id])
        user.update(user_params)
        render :json => user
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        render :json => {status: 'deleted'}
    end


    private
    
    def user_params
        params.require(:user).permit(:fullname, :username, :bio, :password, :password_confirmation)
    end   


end
