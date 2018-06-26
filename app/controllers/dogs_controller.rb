class DogsController < ApplicationController
  before_action :fetch_dog, except: [:index, :new, :create]

  def index
    @dogs = Dog.all
  end

  def show
  end

  def new
    @dog = Dog.new()
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.user = current_user

    if @dog.save
      redirect_to dogs_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @dog.update(dog_params)

    redirect_to dog_path
  end

  def destroy
    @dog.destroy
  end


  private

  def fetch_dog
    @dog = Dog.find(params[:id])
  end

  def dog_params
    params.require(:dog).permit(:name, :breed, :sex, :size, :bio, :age, :picture)
  end
end
