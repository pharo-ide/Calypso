navigation
selectHierarchyPackageOf: selectedClasses
		
	self showsFlatClasses ifTrue: [ ^self].
	selectedClasses isEmpty ifTrue: [ ^self ].
	
	packageView ignoreNavigationDuring: [ 
			self selectPackage: selectedClasses lastSelectedItem actualObject package].
	classView refreshTable