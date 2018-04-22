testing
retrievesItemsOfType: itemTypeClass
	^resultItems anySatisfy: [ :each | 
		each calypsoBrowserType = itemTypeClass  ]