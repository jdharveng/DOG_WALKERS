class DogsController < ApplicationController
  before_action :fetch_dog, except: [:index, :new, :create]

  def index
    @dogs = policy_scope(Dog).order(created_at: :desc)
  end

  def show
  end

  def new
    @dog = Dog.new()
    authorize @dog
  end

  def create
    @dog = Dog.new(dog_params)
    authorize @dog
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
    authorize @dog
  end

  def dog_params
    params.require(:dog).permit(:name, :breed, :sex, :size, :bio, :age, :picture)
  end
end
