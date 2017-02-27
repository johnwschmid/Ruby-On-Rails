class SurveysController < ApplicationController
	def index
	end

	def result
		if !session[:visits]
			session[:visits] = 1
		else
			session[:visits] += 1
		end

		@view = Survey.create(survey_params)
		# @view = params --- THIS DID NOT WORK, because it is not an ActiveRecord
		# object, which is what it must be in order for the .name to work on the view-side!
	end
	private 
		def survey_params
			params.require(:survey).permit(:name, :dojo, :lang, :comment)
		end
end