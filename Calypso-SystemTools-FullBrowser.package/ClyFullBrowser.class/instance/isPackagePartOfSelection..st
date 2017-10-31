testing
isPackagePartOfSelection: aPackage
	(self isPackageSelected: aPackage) ifTrue: [ ^true ].
	
	^self projectSelection rawItems
		anySatisfy: [ :each | each includesPackage: aPackage ]