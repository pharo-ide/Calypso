navigation
silentlySelectPackageOfSelectedClass
		
	| selectedClass |
		
	self classSelection isEmpty ifTrue: [ ^self ].

	selectedClass := self classSelection lastSelectedItem actualObject.
	
	packageView ignoreNavigationDuring: [
		selectedClass tags
			ifEmpty: [ self selectPackage: selectedClass package]
			ifNotEmpty: [:tags | self selectPackage: selectedClass package atClassTag: tags anyOne]]