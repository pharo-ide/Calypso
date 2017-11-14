testing
isRootsInheritInterestingClasses
	| notInterestingClasses |
	"(classScope allSatisfy: [ :each | each isTrait ]) ifTrue: [ ^false ]."
	
	notInterestingClasses := { Object. Object class. Class. Class class }.
	
	classScope classesDo: [ :each | 
		(notInterestingClasses includes: each superclass) ifFalse: [^true]].
	^false