testing
isRootsInheritInterestingClasses
	| notInterestingClasses |
	(classes allSatisfy: [ :each | each isTrait ]) ifTrue: [ ^false ].
	
	notInterestingClasses := { Object. Object class. Class. Class class }.
	
	^classes anySatisfy: [ :each | 
		(notInterestingClasses includes: each superclass) not]