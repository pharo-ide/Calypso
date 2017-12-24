testing
isClassSelected: aClass

	^self selection items anySatisfy: [ :methodItem |
		methodItem systemDefinition definingClass == aClass ]