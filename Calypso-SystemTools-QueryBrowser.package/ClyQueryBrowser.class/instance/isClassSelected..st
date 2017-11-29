testing
isClassSelected: aClass

	^self selection items anySatisfy: [ :methodItem |
		(methodItem getProperty: ClyItemDefinitionProperty) 
			definingClass == aClass ]