building
buildFromProjects: projects
	self buildFromClasses: (projects flatCollect: #classes)