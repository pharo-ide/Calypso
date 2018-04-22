evaluating
collate: systemObject1 with: systemObject2

	| function |
	systemObject1 calypsoBrowserType = systemObject2 calypsoBrowserType ifTrue: [ 
		function := self sortFunctionFor: systemObject1.
		^function collate: systemObject1 with: systemObject2 ].
	
	^systemObject1 calypsoBrowserType itemsSortOrderForCalypso
		threeWayCompareTo: systemObject2 calypsoBrowserType itemsSortOrderForCalypso