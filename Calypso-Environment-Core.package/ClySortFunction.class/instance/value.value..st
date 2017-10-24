evaluating
value: anObject1 value: anObject2
	| result |
	result := (self collate: anObject1 with: anObject2) * direction.
	^result <= 0