testing
isClassSelected: aClass

	^self selection items anySatisfy: [ :methodItem |
		(methodItem getProperty: ClyItemDefinitionProperty ifAbsent: [^false]) 
			definingClass == aClass ]