class LoginsController < ApplicationController
  def index
    @logins = Login.all
  end
  
  def show
    @logins = Login.find(params[:id])
  end
  
  def new
    @login = Login.new
  end
  
  def create
    @login = Login.new
    
    if @login.save
      redirect_to logins_path, :notice => "You should now be op!"
    else
      render "new"
    end
  end
  
  def edit
    
  end
  
  def update
    
  end
  
  def destroy
    
  end
end
