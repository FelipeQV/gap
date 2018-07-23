class AppointmentsController < ApplicationController

  def index
     @appointments = Appointment.where.not(latitude: nil, longitude: nil)

    @markers = @appointments.map do |a|
      {
        lat: a.latitude,
        lng: a.longitude
      }
    end
  end

  def create

    @car = Car.find(params[:car_id])
    @appointment = Appointment.new(appointment_params)
    @appointment.car = @car
  if @appointment.save
      flash[:notice] = "tu cita fue guardada existosamente"
      redirect_to root_path
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
