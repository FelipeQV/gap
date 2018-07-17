class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.where(car.id.user.id = current_user.id)
  end

  def new
    @car.id = Car.find(params[:car_id])
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @car = Car.find(params[car_id:])
    @appointment.car = @car
    @appointment.date = DateTime.strptime([:appointment][:date], "%m/%d/%y %1:%M %p")
    if @appointment.save
      flash[:notice] = "tu cita fue guardada existosamente"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def appointment_params
    params.require(:appointment).permit(:date, :description, :location, :status)
  end
end
