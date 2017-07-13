building
buildFromSystems: systemEnvironments
	
	self buildFromPackages: (systemEnvironments flatCollect: #packages)