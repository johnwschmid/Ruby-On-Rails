class IntroController < ApplicationController
	def index
	end
	def hello
		render :text => "Yello Coding Dojo"
	end
	def say
		render :text => "Saying Hello"
	end
	def sayhello
		if params[:name] == 'michael'
			render :text => "Say hello Joe"
		else
			render :text => "Saying hello from "+params[:name]
		end
	end
	def times
		if not session[:vists]
			session[:vists] = 0
		end
		session[:vists] += 1
		render :text => 'You visited this url '+session[:vists].to_s+' time(s).'
	end
	def reset
		session.clear
		redirect_to '/times'
	end
end