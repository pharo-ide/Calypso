queries
itemsWhere: conditionBlock	
	| result |
	result := super itemsWhere: conditionBlock.
	result do: [ :each | each prepareIn: environment  ].
	^result