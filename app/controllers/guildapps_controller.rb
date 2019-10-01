class GuildappsController < ApplicationController
	def index
		@guildapps = Guildapp.all
	end

	def show
		@guildapp = Guildapp.find(params[:id])
	end

	def new
		@guildapp = Guildapp.new
	end

	def edit
  		@guildapp = Guildapp.find(params[:id])
	end

	def create
		#render plain: params[:guildapp].inspect
		#byebug
		@guildapp = Guildapp.new(guildapp_params)


		if @guildapp.save
			redirect_to @guildapp
		else
			render 'new'
		end
	end

	def update
		@guildapp = Guildapp.find(params[:id])

		if @guildapp.update(guildapp_params)
			redirect_to @guildapp
		else
			render 'edit'
		end
	end

	private
		def guildapp_params
			params.require(:guildapp).permit(:name, :charclass, :level, :discord, :exp, :whyus)
		end
end
