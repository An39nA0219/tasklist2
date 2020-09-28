class TasksController < ApplicationController
  
  def index
    @tasks = Task.all
  end
  
  def show
    @task = Task.find(params[:id])
  end
  
  def new
    @task = Task.new
  end

  def create
    #@taskを保存するためのコード
    @task = Task.new(task_params)
    
    if @task.save
      flash[:success] = "SUCCESS!"
      redirect_to @task
    else
      flash.now[:danger] = "FAILED"
      render :new
    end
    
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    #@taskを更新するためのコード
    @task = Task.find(params[:id])
    
    if @task.update(task_params)
      flash[:success] = "SUCCESS!"
      redirect_to @task
    else
      flash.now[:danger] = "FAILED"
      render :edit
    end
  end

  def destroy
    
  @task = Task.find(params[:id])
  @task.destroy
  
  flash[:success] = "DELEATED"
  #redirect_to tasks_pathではだめらしい。
  #redirectが出てきた場合のみPrefix+_url
  redirect_to tasks_url

  end
  
  private
  def task_params
    params.require(:task).permit(:content)
  end

  
end
