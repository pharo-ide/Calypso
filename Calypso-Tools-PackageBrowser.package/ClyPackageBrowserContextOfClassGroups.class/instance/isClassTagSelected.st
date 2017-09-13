testing
isClassTagSelected
	| classGroupClass |
	self isClassGroupSelected ifFalse: [ ^false ].
	
	classGroupClass := self lastSelectedItem environmentItem type.
	
	^classGroupClass isBasedOnClassTag