queries
itemsWhere: conditionBlock	
	| result |
	result := super itemsWhere: conditionBlock.
	result do: [ :each | environment resolveItem: each  ].
	^result