selection changes
classSelectionChanged
	
	self showsFlatClasses ifFalse: [ 
		self silentlySelectPackageOfSelectedClass].
	
	self changeMethodGroupQueryBy: [ 
		methodGroupQuery withScopeOf: self classSelection actualObjects]