testing
retrievesItemsOfType: itemTypeClass
	^resultItems anySatisfy: [ :each | 
		each calypsoEnvironmentType = itemTypeClass  ]