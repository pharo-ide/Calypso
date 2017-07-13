system changes
isClass: aClass inheritsMethodsAffectedBy: aMethodAnnouncement 
	| affectedClass |
	affectedClass := aMethodAnnouncement classAffected.
	
	(aClass == affectedClass and: [(aClass lookupSelector: aMethodAnnouncement selector) notNil])
		ifTrue: [^true].
	(aClass traitCompositionIncludes: affectedClass) ifTrue: [ ^true ].
	aClass allSuperclassesDo: [ :superclass | 
		superclass == affectedClass ifTrue: [ ^true ].
		(superclass traitCompositionIncludes: affectedClass) ifTrue: [ ^true ]].
	^false