selection changes
classSelectionChanged
	
	self changeStateBy: [
		self showsFlatClasses ifFalse: [ 
			self silentlySelectPackageOfSelectedClass].
		 
		self changeMethodGroupQueryBy: [ 
			self adoptForExtendedClass.
			methodGroupQuery restrictedByScope: self defaultClassScopeForMethods].
		
		self selectCurrentExtensionMethodGroup
	]