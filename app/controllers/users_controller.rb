class UsersController < ApplicationController
    before_action :authorized, only: [:keepUserLoggedIn, :username, :email, :bio, :profile_img]

    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            generated_token = encode_token({user_id: user.id})
            render json: {user: UserSerializer.new(user), token: generated_token}
        else
            render json: {error: "Incorrect Username or Password"}, status: 422
        end
    end

    def create 
        user = User.create(user_params)
        if user.valid?
            generated_token = encode_token({user_id: user.id})
            render json: {user: UserSerializer.new(user), token: generated_token}
        else
            render json: {error: "Invalid User"}, status: 422
        end
    end

    def keepUserLoggedIn
        generated_token = encode_token({user_id: @user.id})
        render json: {user: UserSerializer.new(@user), token: generated_token}
    end

    def username
        # byebug
        user = @user
        generated_token = encode_token({user_id: @user.id})
        user.update(username: params[:username])
        render json: {user: UserSerializer.new(@user), token: generated_token}
    end

    def email
        user = @user
        generated_token = encode_token({user_id: @user.id})
        user.update(email: params[:email])
        render json: {user: UserSerializer.new(@user), token: generated_token}
    end

    def bio
        user = @user
        generated_token = encode_token({user_id: @user.id})
        user.update(bio: params[:bio])
        render json: {user: UserSerializer.new(@user), token: generated_token}
    end

    def profile_img
        user = @user
        generated_token = encode_token({user_id: @user.id})
        user.update(profile_img: params[:profile_img])
        render json: {user: UserSerializer.new(@user), token: generated_token}
    end

    private
    def user_params
        params.permit(:username, :password, :email, :profile_img, :bio)
    end
end
