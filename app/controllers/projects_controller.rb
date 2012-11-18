class ProjectsController < ApplicationController
	def index
		#title of the page
		@title = "Home"
	end

	def new
		#title of the page
		@title = "New Project"

		#create a new project
		@project = Project.new
	end

	def create
		#title of page
		@title = "Create Project"

		#save a new project
		@project = Project.new(params[:project])
		
		if @project.save
			#show the user a success message
			flash[:notice] = "Project has been created"
			redirect_to @project
		else
			#show the user a success message
		flash[:alert] = "Error Creating Project"
		render :action => "new"
		end

		
		
	end

	def show
		

		@project = Project.find(params[:id])

		#title of page
		if @project 
			@title = "Project " +  @project.name
		end
		
	end
end
