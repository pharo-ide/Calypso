selection-method groups
isMethodTagSelected

	self isMethodGroupSelected ifFalse: [ ^false ].
	
	^self selectedMethodGroupClass isBasedOnMethodTag