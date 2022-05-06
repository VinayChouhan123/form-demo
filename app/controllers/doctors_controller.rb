class DoctorsController < ApplicationController
	def index
		@doctors = Doctor.all
	end

	def new
    	@doctor = Doctor.new
  	end

  	def create
    	@doctor = Doctor.new(doctor_params)
    	if @doctor.save
      		redirect_to doctors_path
    	else
      		render :new
    	end
  	end

  	def doctor_params
    	params.require(:doctor).permit(:firstname, :lastname, :email, :password)
  	end
end
