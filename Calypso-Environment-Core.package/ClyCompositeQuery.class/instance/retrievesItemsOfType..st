testing
retrievesItemsOfType: itemTypeClass
	
	^subqueries anySatisfy: [ :each | each retrievesItemsOfType: itemTypeClass ]