selection-methods
isClassSideMethodSelected

	self isMethodSelected ifFalse: [ ^false].
	
	^self selectedMethodItems anySatisfy: [ :each |
		each systemDefinition isInstanceSide not]