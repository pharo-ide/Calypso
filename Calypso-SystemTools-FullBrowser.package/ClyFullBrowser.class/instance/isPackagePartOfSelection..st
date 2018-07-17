testing
isPackagePartOfSelection: aPackage

	(self isPackageSelected: aPackage) ifTrue: [ ^true ].
	
	^self projectSelection actualObjects
		anySatisfy: [ :each | each includesPackage: aPackage ]