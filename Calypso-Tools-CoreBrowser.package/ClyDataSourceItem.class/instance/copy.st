copying
copy

	| copy |
	copy := super copy.
	copy environmentItem: environmentItem copy.
	^copy