testing
isPackagePartOfSelection: aPackage
	(self isPackageSelected: aPackage) ifTrue: [ ^true ].
	
	^self selectedProjects actualObjects
		anySatisfy: [ :each | each includesPackage: aPackage ]