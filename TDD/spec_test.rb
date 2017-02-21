class Project
	attr_accessor :name, :description, :teammate
	def initialize name, description
		@name = name
		@description = description
		@teammate = []
	end
	def elevator_pitch
		"#{@name}, #{@description}"
	end
	def add_member member
		@teammate.push(member)
	end
end

#this line enacts the Rspec library and calls the describe method for the Project class
RSpec.describe Project do
	#have Rspec test our Project class
	it 'has a getter and setter for name attribute' do
		# create new project then set a new name attribute
		project = Project.new("Project Name", "I am a project")
		project.name = "Changed Name"
		# run the expect method on project.name, which should now equal "Changed Name"
		# this returns true or false
		expect(project.name).to eq("Changed Name")
	end

	it 'has getter/setter for description attr.' do

		project = Project.new("Project Name", "I am a project")
		project.description = "Changed Desc"

		expect(project.description).to eq("Changed Desc")
	end

	it 'has a method elevator_pitch to explain name and description' do

		project1 = Project.new('Project 1', 'description 1')
		project2 = Project.new('Project 2', 'description 2')
		# if we call elevator_pitch method we should expect to get back what we entered above
		expect(project1.elevator_pitch).to eq("Project 1, description 1")
		expect(project2.elevator_pitch).to eq("Project 2, description 2")
	end

	it 'has an add_member method' do
		project1 = Project.new("Project Name", "Project Desc")
		project1.add_member("Jimmy")
		
		expect(project1.teammate).to eq(["Jimmy"])
		# have to use project1.<attr> - cannot use <@attr> syntax!!
	end
end