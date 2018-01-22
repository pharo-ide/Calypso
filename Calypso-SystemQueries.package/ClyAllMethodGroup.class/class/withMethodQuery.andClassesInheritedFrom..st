instance creation
withMethodQuery: aMethodQuery andClassesInheritedFrom: aClassScope
	| group |
	group := super withMethodQuery: aMethodQuery andClassesInheritedFrom: aClassScope.
	group name: (aMethodQuery scope localScopeClass = ClyInstanceSideScope 
		ifTrue: [ 'instance side' ]
		ifFalse: [ 'class side' ]).
	^group