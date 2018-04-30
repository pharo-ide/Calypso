evaluating
collate: systemObject1 with: systemObject2

	| function |
	systemObject1 calypsoEnvironmentType = systemObject2 calypsoEnvironmentType ifTrue: [ 
		function := self sortFunctionFor: systemObject1.
		^function collate: systemObject1 with: systemObject2 ].
	
	^systemObject1 calypsoEnvironmentType itemsSortOrderForCalypso
		threeWayCompareTo: systemObject2 calypsoEnvironmentType itemsSortOrderForCalypso