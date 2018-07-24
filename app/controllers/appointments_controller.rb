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
      redirect_to appointment_path(@appointment)
    else
      render :new
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
    @markers_hash =
      {
        lat: @appointment.latitude,
        lng: @appointment.longitude
      }
     @markers = []
     @markers << @markers_hash
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
