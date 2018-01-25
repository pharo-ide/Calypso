converting
withoutItemsOfType: anItemTypeClass

	^self withSubqueries: (subqueries reject: [ :each | each retrievesItemsOfType: anItemTypeClass ])