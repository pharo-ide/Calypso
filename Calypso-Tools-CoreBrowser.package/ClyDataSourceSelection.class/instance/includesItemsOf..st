testing
includesItemsOf: itemsScopeClass

	^items anySatisfy: [ :each | each environmentScope = itemsScopeClass ]