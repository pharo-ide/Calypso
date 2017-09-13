testing
isMethodTagSelected

	| groupClass |
	self isMethodGroupSelected ifFalse: [ ^false ].
	
	groupClass := self lastSelectedItem environmentItem type.
	^groupClass isBasedOnMethodTag