building
buildFromProjects: projects 
	
	self buildFromPackages: (projects flatCollect: #packages)