testing
isClassSelected: aClass

	^self selection items anySatisfy: [ :methodItem |
		(methodItem getProperty: ClySystemDefinitionProperty) 
			definitionClass == aClass ]