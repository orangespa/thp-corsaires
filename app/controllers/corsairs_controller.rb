class CorsairsController < ApplicationController
  
  def new
    @corsair = Corsair.new
  end

  def create
    @corsair = Corsair.new(corsair_params)
    if @corsair.save
      redirect_to @corsair
    else 
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
      redirect_to @corsair
    else
      render 'edit'
    end
  end

  def destroy
  @corsair = Corsair.find(params[:id])

    if @corsair.destroy
      redirect_to @corsair
    end
  end

  def index
    @corsair = Corsair.all
  end

  private 
    def corsair_params
      params.require(:corsair).permit(:first_name, :age, :likeness, :bio, :slack_handle, :github_handle)
    end

end
