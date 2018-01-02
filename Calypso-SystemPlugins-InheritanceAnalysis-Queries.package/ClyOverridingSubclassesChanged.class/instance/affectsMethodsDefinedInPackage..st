testing
affectsMethodsDefinedInPackage: aPackage

	overriddenSuperclass withAllSubclassesDo: [:each | 
		(each package = aPackage) ifTrue: [ ^true ] ].

	^false