building
buildFromSystems: systemEnvironments
	
	self buildFromProjects: (systemEnvironments flatCollect: #projects)