class ListsController < ApplicationController
    before_action :authorized, only: [:new]
    
    def new 
        foundList = List.find_by(user_id: @user.id)
        if foundList
            task = Task.create(description: params[:task], list: foundList)
            render json: task
        else
            createdList = List.create(user: @user)
            task = Task.create(description: params[:task], list: createdList)
            render json: task
        end
    end
end
