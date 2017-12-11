navigation
silentlySelectPackageOfSelectedClass
		
	self classSelection isEmpty ifTrue: [ ^self ].
	
	packageView ignoreNavigationDuring: [ 
		self selectPackage: self classSelection lastSelectedItem actualObject package]