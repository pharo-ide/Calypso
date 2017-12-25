selection changes
classSelectionChanged
	
	self showsFlatClasses ifFalse: [ 
		self silentlySelectPackageOfSelectedClass].
	
	self changeStateBy: [ 
		self changeMethodGroupQueryBy: [ 
			self adoptStateForSelectedClass.
			methodGroupQuery withScopeOf: self classSelection actualObjects].
		
		self classSelection isSingleSelected ifTrue: [ 
			(self classSelection lastSelectedItem isMarkedWith: ClyExtendedClassTag) ifTrue: [ 
				self selectMethodGroupNamed: self packageSelection lastSelectedItem name ] ]
	]