testing
affectsMethodsDefinedInPackage: aPackage

	overridingSubclass allSuperclassesDo: [:each | 
		(each package = aPackage) ifTrue: [ ^true ] ].

	^false