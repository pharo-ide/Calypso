navigation
switchToMethodGroups
	
	self changeMethodGroupQueryBy: [ 
		ClyAllMethodGroups sortedFrom: self classScopeForMethods
	]