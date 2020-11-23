class TasksController < ApplicationController
    before_action :authorized, only: [:new]

    def destroy
        foundTask = Task.find_by(id: params[:task][:id])
        foundTask.destroy
        
        render json: foundTask
    end

    def update
        foundTask = Task.find_by(id: params[:task][:id])
        foundTask.update(description: params[:taskDescription])

        render json: foundTask
    end
end
