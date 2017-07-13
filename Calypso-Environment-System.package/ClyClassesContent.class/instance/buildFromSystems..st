building
buildFromSystems: systemEnvironments
	self buildFromClasses: (systemEnvironments flatCollect: #classes)