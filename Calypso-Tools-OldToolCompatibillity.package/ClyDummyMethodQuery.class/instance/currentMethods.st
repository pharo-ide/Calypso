execution
currentMethods

	^methods, extraMethods 
		removeAllSuchThat: [ :each | each package isNil or: [ each isInstalled not] ];
		yourself