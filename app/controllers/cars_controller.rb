class CarsController < ApplicationController
  def index
    @cars = Car.where(user_id: current_user.id)
  end

  def new
    @user = current_user
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user

    if @car.save
      redirect_to user_cars_path
    else
      render :new
    end
  end

  def show
    @car = Car.find(params[:id])
    @appointment = Appointment.new(appointment_params)
    @appointment.car = @car

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit!
  end

  def appointment_params
  #  params.require(:appointment).permit!
  end
end
