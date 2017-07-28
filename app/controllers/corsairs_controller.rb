class CorsairsController < ApplicationController
  
  def new
    @corsair = Corsair.new
  end

  def create
    @corsair = Corsair.new(corsair_params)
    if @corsair.save
      flash[:success] = "Congras, you've created your account"
      redirect_to @corsair
    else
      flash[:false] = "not success" 
      render 'new'
    end
  end

  def show
    @corsair = Corsair.find(params[:id])
  end

  def edit
    @corsair = Corsair.find(params[:id])
  end
 
  def update
    @corsair = Corsair.find(params[:id])
 
    if @corsair.update(corsair_params)
      flash[:success] = "Your account've updated!"
      redirect_to @corsair
    else
      flash[:false] = "not success"
      render 'edit'
    end
  end

  def destroy
  @corsair = Corsair.find(params[:id])

    if @corsair.destroy
      flash[:success] = "Your account've deleted!"
      redirect_to @corsair
    end
  end

  def index
    @corsairs = Corsair.all
  end

  private 
    def corsair_params
      params.require(:corsair).permit(:first_name, :age, :likeness, :bio, :slack_handle, :github_handle)
    end

end
