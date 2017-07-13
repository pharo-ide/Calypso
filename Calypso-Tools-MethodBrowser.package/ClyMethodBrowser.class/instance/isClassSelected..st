testing
isClassSelected: aClass

	^self selectedMethods items anySatisfy: [ :methodItem |
		(methodItem getProperty: ClyMethodDefinitionProperty) 
			definitionClass == aClass ]