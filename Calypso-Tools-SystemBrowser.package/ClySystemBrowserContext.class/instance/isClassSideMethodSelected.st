testing
isClassSideMethodSelected
	| definition |
	self isMethodSelected ifFalse: [ ^false].
	
	^self selectedMethodItems anySatisfy: [ :each |
		definition := each getProperty: ClyMethodDefinitionProperty.
		definition isInstanceSide not]