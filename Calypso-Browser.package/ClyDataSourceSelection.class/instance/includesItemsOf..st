testing
includesItemsOf: itemTypeClass

	^items anySatisfy: [ :each | each isBasedOnItemType: itemTypeClass ]