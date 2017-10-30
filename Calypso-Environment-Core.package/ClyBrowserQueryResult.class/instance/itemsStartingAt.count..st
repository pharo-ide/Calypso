queries
itemsStartingAt: startIndex count: size

	| result |
	result := super itemsStartingAt: startIndex count: size.
	result do: [ :each | environment resolveItem: each ].
	^result