selection changes
classSelectionChanged
	
	self changeStateBy: [
		self showsFlatClasses ifFalse: [ 
			self silentlySelectPackageOfSelectedClass].
		 
		self changeMethodGroupQueryBy: [ 
			self adoptForExtendedClass.
			methodGroupQuery withScopeOf: self classSelection actualObjects].
		
		self selectCurrentExtensionMethodGroup
	]