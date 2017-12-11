testing
isClassTagSelected
	| classGroupClass |
	self isClassGroupSelected ifFalse: [ ^false ].
	
	classGroupClass := self lastSelectedItem type.
	
	^classGroupClass isBasedOnClassTag