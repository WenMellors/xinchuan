class AppointmentsController < ApplicationController
	def index
		@appointments = Appointment.all
	end

	def create
		@appointment = Appointment.new(appointment_params)
		@appointments = Appointment.all
		# 为了清除过期预约
		@appointments.each do |appointment| 
			if appointment.time.to_time - Time.now - 1.day > 0
				appointment.destroy
			end
		end
		# 重定向回主页，略显简陋
		respond_to do |format|
      		if @appointment.save
        		format.html { redirect_to activities_url, notice: '预约成功' }
      		end
    	end
	end
	
	def new
		@appointment = Appointment.new
	end

	def show
	end

	def edit
	end

	def update
	end

	def destroy
	end
	private
		def appointment_params
      		params.require(:appointment).permit(:title, :time)
    	end
end
