selection-methods
isInstanceSideMethodSelected

	self isMethodSelected ifFalse: [ ^false].
	
	^self selectedMethodItems anySatisfy: [ :each |
		each systemDefinition isInstanceSide ]